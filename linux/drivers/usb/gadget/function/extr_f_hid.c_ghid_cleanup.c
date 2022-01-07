
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (scalar_t__,int ) ;
 int class_destroy (int *) ;
 int * hidg_class ;
 scalar_t__ major ;
 scalar_t__ minors ;
 int unregister_chrdev_region (int ,scalar_t__) ;

void ghid_cleanup(void)
{
 if (major) {
  unregister_chrdev_region(MKDEV(major, 0), minors);
  major = minors = 0;
 }

 class_destroy(hidg_class);
 hidg_class = ((void*)0);
}
