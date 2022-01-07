
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {int dummy; } ;


 int gasket_reset_nolock (struct gasket_dev*) ;

__attribute__((used)) static int apex_device_open_cb(struct gasket_dev *gasket_dev)
{
 return gasket_reset_nolock(gasket_dev);
}
