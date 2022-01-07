
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int CXLFLASH_MAX_ADAPTERS ;
 int MKDEV (int ,int ) ;
 int class_destroy (int ) ;
 int cxlflash_class ;
 int cxlflash_major ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static void cxlflash_class_exit(void)
{
 dev_t devno = MKDEV(cxlflash_major, 0);

 class_destroy(cxlflash_class);
 unregister_chrdev_region(devno, CXLFLASH_MAX_ADAPTERS);
}
