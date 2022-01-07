
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int lock; void* tcp_tx; void* tcp_rx; struct socket* tcp_socket; } ;
struct vudc {int connected; int lock; TYPE_1__ ud; int start_time; int pullup; int driver; } ;
struct socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int EBUSY ;
 size_t EINVAL ;
 size_t ENODEV ;
 scalar_t__ SDEV_ST_AVAILABLE ;
 scalar_t__ SDEV_ST_USED ;
 int VUDC_EVENT_DOWN ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 void* kthread_get_run (int *,TYPE_1__*,char*) ;
 int ktime_get_ts64 (int *) ;
 struct socket* sockfd_lookup (int,int*) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbip_event_add (TYPE_1__*,int ) ;
 int v_rx_loop ;
 int v_start_timer (struct vudc*) ;
 int v_tx_loop ;

__attribute__((used)) static ssize_t usbip_sockfd_store(struct device *dev, struct device_attribute *attr,
       const char *in, size_t count)
{
 struct vudc *udc = (struct vudc *) dev_get_drvdata(dev);
 int rv;
 int sockfd = 0;
 int err;
 struct socket *socket;
 unsigned long flags;
 int ret;

 rv = kstrtoint(in, 0, &sockfd);
 if (rv != 0)
  return -EINVAL;

 if (!udc) {
  dev_err(dev, "no device");
  return -ENODEV;
 }
 spin_lock_irqsave(&udc->lock, flags);

 if (!udc->driver || !udc->pullup) {
  dev_err(dev, "gadget not bound");
  ret = -ENODEV;
  goto unlock;
 }

 if (sockfd != -1) {
  if (udc->connected) {
   dev_err(dev, "Device already connected");
   ret = -EBUSY;
   goto unlock;
  }

  spin_lock_irq(&udc->ud.lock);

  if (udc->ud.status != SDEV_ST_AVAILABLE) {
   ret = -EINVAL;
   goto unlock_ud;
  }

  socket = sockfd_lookup(sockfd, &err);
  if (!socket) {
   dev_err(dev, "failed to lookup sock");
   ret = -EINVAL;
   goto unlock_ud;
  }

  udc->ud.tcp_socket = socket;

  spin_unlock_irq(&udc->ud.lock);
  spin_unlock_irqrestore(&udc->lock, flags);

  udc->ud.tcp_rx = kthread_get_run(&v_rx_loop,
          &udc->ud, "vudc_rx");
  udc->ud.tcp_tx = kthread_get_run(&v_tx_loop,
          &udc->ud, "vudc_tx");

  spin_lock_irqsave(&udc->lock, flags);
  spin_lock_irq(&udc->ud.lock);
  udc->ud.status = SDEV_ST_USED;
  spin_unlock_irq(&udc->ud.lock);

  ktime_get_ts64(&udc->start_time);
  v_start_timer(udc);
  udc->connected = 1;
 } else {
  if (!udc->connected) {
   dev_err(dev, "Device not connected");
   ret = -EINVAL;
   goto unlock;
  }

  spin_lock_irq(&udc->ud.lock);
  if (udc->ud.status != SDEV_ST_USED) {
   ret = -EINVAL;
   goto unlock_ud;
  }
  spin_unlock_irq(&udc->ud.lock);

  usbip_event_add(&udc->ud, VUDC_EVENT_DOWN);
 }

 spin_unlock_irqrestore(&udc->lock, flags);

 return count;

unlock_ud:
 spin_unlock_irq(&udc->ud.lock);
unlock:
 spin_unlock_irqrestore(&udc->lock, flags);

 return ret;
}
