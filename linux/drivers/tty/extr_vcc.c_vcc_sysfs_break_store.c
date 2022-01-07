
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 int VCC_CTL_BREAK ;
 struct vcc_port* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscanf (char const*,char*,int*) ;
 int vcc_kick_tx (struct vcc_port*) ;
 scalar_t__ vcc_send_ctl (struct vcc_port*,int ) ;

__attribute__((used)) static ssize_t vcc_sysfs_break_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct vcc_port *port;
 unsigned long flags;
 int rv = count;
 int brk;

 port = dev_get_drvdata(dev);
 if (!port)
  return -ENODEV;

 spin_lock_irqsave(&port->lock, flags);

 if (sscanf(buf, "%ud", &brk) != 1 || brk != 1)
  rv = -EINVAL;
 else if (vcc_send_ctl(port, VCC_CTL_BREAK) < 0)
  vcc_kick_tx(port);

 spin_unlock_irqrestore(&port->lock, flags);

 return rv;
}
