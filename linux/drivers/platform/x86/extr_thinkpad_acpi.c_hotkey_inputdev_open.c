
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int BUG () ;
 int EBUSY ;



 int hotkey_poll_setup_safe (int) ;
 int tpacpi_lifecycle ;

__attribute__((used)) static int hotkey_inputdev_open(struct input_dev *dev)
{
 switch (tpacpi_lifecycle) {
 case 129:
 case 128:
  hotkey_poll_setup_safe(0);
  return 0;
 case 130:
  return -EBUSY;
 }


 BUG();
 return -EBUSY;
}
