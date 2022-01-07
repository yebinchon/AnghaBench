
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int MAJOR (int ) ;
 scalar_t__ alloc_chrdev_region (int *,int ,int,char*) ;
 int tapechar_major ;

int
tapechar_init (void)
{
 dev_t dev;

 if (alloc_chrdev_region(&dev, 0, 256, "tape") != 0)
  return -1;

 tapechar_major = MAJOR(dev);

 return 0;
}
