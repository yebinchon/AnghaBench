
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int inuse; } ;


 int clear_bit (int ,int *) ;
 TYPE_1__ cpu5wdt_device ;

__attribute__((used)) static int cpu5wdt_release(struct inode *inode, struct file *file)
{
 clear_bit(0, &cpu5wdt_device.inuse);
 return 0;
}
