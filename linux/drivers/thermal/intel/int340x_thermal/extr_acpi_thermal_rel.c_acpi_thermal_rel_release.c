
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int acpi_thermal_rel_chrdev_count ;
 scalar_t__ acpi_thermal_rel_chrdev_exclu ;
 int acpi_thermal_rel_chrdev_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int acpi_thermal_rel_release(struct inode *inode, struct file *file)
{
 spin_lock(&acpi_thermal_rel_chrdev_lock);
 acpi_thermal_rel_chrdev_count--;
 acpi_thermal_rel_chrdev_exclu = 0;
 spin_unlock(&acpi_thermal_rel_chrdev_lock);

 return 0;
}
