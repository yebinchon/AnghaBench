
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_MINORS ;
 int cap_class ;
 int cap_dev_num ;
 int cap_minors_map ;
 int class_destroy (int ) ;
 int ida_destroy (int *) ;
 int unregister_chrdev_region (int ,int ) ;

void cap_exit(void)
{
 unregister_chrdev_region(cap_dev_num, NUM_MINORS);
 class_destroy(cap_class);
 ida_destroy(&cap_minors_map);
}
