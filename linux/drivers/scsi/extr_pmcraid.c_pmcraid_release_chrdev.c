
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pmcraid_instance {TYPE_1__ cdev; } ;


 int MINOR (int ) ;
 int MKDEV (int ,int ) ;
 int cdev_del (TYPE_1__*) ;
 int device_destroy (int ,int ) ;
 int pmcraid_class ;
 int pmcraid_major ;
 int pmcraid_release_minor (int ) ;

__attribute__((used)) static void pmcraid_release_chrdev(struct pmcraid_instance *pinstance)
{
 pmcraid_release_minor(MINOR(pinstance->cdev.dev));
 device_destroy(pmcraid_class,
         MKDEV(pmcraid_major, MINOR(pinstance->cdev.dev)));
 cdev_del(&pinstance->cdev);
}
