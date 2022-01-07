
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; } ;


 int MAXMINOR ;
 int MKDEV (scalar_t__,int ) ;
 int cdev_del (int *) ;
 int free_page (unsigned long) ;
 TYPE_1__* sys_ser ;
 int unregister_chrdev_region (int ,int) ;
 int * vmlogrdr_cdev ;
 scalar_t__ vmlogrdr_major ;
 int vmlogrdr_unregister_device (TYPE_1__*) ;
 int vmlogrdr_unregister_driver () ;

__attribute__((used)) static void vmlogrdr_cleanup(void)
{
        int i;

 if (vmlogrdr_cdev) {
  cdev_del(vmlogrdr_cdev);
  vmlogrdr_cdev=((void*)0);
 }
 for (i=0; i < MAXMINOR; ++i ) {
  vmlogrdr_unregister_device(&sys_ser[i]);
  free_page((unsigned long)sys_ser[i].buffer);
 }
 vmlogrdr_unregister_driver();
 if (vmlogrdr_major) {
  unregister_chrdev_region(MKDEV(vmlogrdr_major, 0), MAXMINOR);
  vmlogrdr_major=0;
 }
}
