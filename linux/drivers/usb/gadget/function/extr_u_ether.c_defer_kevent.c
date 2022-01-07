
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_dev {int work; int todo; } ;


 int DBG (struct eth_dev*,char*,int) ;
 int ERROR (struct eth_dev*,char*,int) ;
 int schedule_work (int *) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static void defer_kevent(struct eth_dev *dev, int flag)
{
 if (test_and_set_bit(flag, &dev->todo))
  return;
 if (!schedule_work(&dev->work))
  ERROR(dev, "kevent %d may have been dropped\n", flag);
 else
  DBG(dev, "kevent %d scheduled\n", flag);
}
