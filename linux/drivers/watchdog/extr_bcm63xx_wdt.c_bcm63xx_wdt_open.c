
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int inuse; } ;


 int EBUSY ;
 TYPE_1__ bcm63xx_wdt_device ;
 int bcm63xx_wdt_start () ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int bcm63xx_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &bcm63xx_wdt_device.inuse))
  return -EBUSY;

 bcm63xx_wdt_start();
 return stream_open(inode, file);
}
