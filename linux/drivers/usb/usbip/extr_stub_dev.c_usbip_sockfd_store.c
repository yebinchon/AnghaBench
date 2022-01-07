
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int sockfd; int lock; void* tcp_tx; void* tcp_rx; struct socket* tcp_socket; } ;
struct stub_device {TYPE_1__ ud; } ;
struct socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 int SDEV_EVENT_DOWN ;
 scalar_t__ SDEV_ST_AVAILABLE ;
 scalar_t__ SDEV_ST_USED ;
 int dev_err (struct device*,char*) ;
 struct stub_device* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 void* kthread_get_run (int ,TYPE_1__*,char*) ;
 struct socket* sockfd_lookup (int,int*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sscanf (char const*,char*,int*) ;
 int stub_rx_loop ;
 int stub_tx_loop ;
 int usbip_event_add (TYPE_1__*,int ) ;

__attribute__((used)) static ssize_t usbip_sockfd_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct stub_device *sdev = dev_get_drvdata(dev);
 int sockfd = 0;
 struct socket *socket;
 int rv;

 if (!sdev) {
  dev_err(dev, "sdev is null\n");
  return -ENODEV;
 }

 rv = sscanf(buf, "%d", &sockfd);
 if (rv != 1)
  return -EINVAL;

 if (sockfd != -1) {
  int err;

  dev_info(dev, "stub up\n");

  spin_lock_irq(&sdev->ud.lock);

  if (sdev->ud.status != SDEV_ST_AVAILABLE) {
   dev_err(dev, "not ready\n");
   goto err;
  }

  socket = sockfd_lookup(sockfd, &err);
  if (!socket)
   goto err;

  sdev->ud.tcp_socket = socket;
  sdev->ud.sockfd = sockfd;

  spin_unlock_irq(&sdev->ud.lock);

  sdev->ud.tcp_rx = kthread_get_run(stub_rx_loop, &sdev->ud,
        "stub_rx");
  sdev->ud.tcp_tx = kthread_get_run(stub_tx_loop, &sdev->ud,
        "stub_tx");

  spin_lock_irq(&sdev->ud.lock);
  sdev->ud.status = SDEV_ST_USED;
  spin_unlock_irq(&sdev->ud.lock);

 } else {
  dev_info(dev, "stub down\n");

  spin_lock_irq(&sdev->ud.lock);
  if (sdev->ud.status != SDEV_ST_USED)
   goto err;

  spin_unlock_irq(&sdev->ud.lock);

  usbip_event_add(&sdev->ud, SDEV_EVENT_DOWN);
 }

 return count;

err:
 spin_unlock_irq(&sdev->ud.lock);
 return -EINVAL;
}
