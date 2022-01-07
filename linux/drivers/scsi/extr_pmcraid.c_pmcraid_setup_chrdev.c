
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; } ;
struct pmcraid_instance {TYPE_1__ cdev; } ;


 int MKDEV (int ,int) ;
 int PMCRAID_DEVFILE ;
 int THIS_MODULE ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,int *) ;
 int device_create (int ,int *,int ,int *,char*,int ,int) ;
 int pmcraid_class ;
 int pmcraid_fops ;
 int pmcraid_get_minor () ;
 int pmcraid_major ;
 int pmcraid_release_minor (int) ;

__attribute__((used)) static int pmcraid_setup_chrdev(struct pmcraid_instance *pinstance)
{
 int minor;
 int error;

 minor = pmcraid_get_minor();
 cdev_init(&pinstance->cdev, &pmcraid_fops);
 pinstance->cdev.owner = THIS_MODULE;

 error = cdev_add(&pinstance->cdev, MKDEV(pmcraid_major, minor), 1);

 if (error)
  pmcraid_release_minor(minor);
 else
  device_create(pmcraid_class, ((void*)0), MKDEV(pmcraid_major, minor),
         ((void*)0), "%s%u", PMCRAID_DEVFILE, minor);
 return error;
}
