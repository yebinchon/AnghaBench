
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 struct device* class_find_device_by_devt (int ,int ) ;
 int tty_class ;
 int tty_devnum (struct tty_struct*) ;

__attribute__((used)) static struct device *tty_get_device(struct tty_struct *tty)
{
 dev_t devt = tty_devnum(tty);
 return class_find_device_by_devt(tty_class, devt);
}
