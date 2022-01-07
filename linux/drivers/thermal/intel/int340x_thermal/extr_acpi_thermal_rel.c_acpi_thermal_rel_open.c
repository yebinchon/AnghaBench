
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int EBUSY ;
 int O_EXCL ;
 scalar_t__ acpi_thermal_rel_chrdev_count ;
 int acpi_thermal_rel_chrdev_exclu ;
 int acpi_thermal_rel_chrdev_lock ;
 int nonseekable_open (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int acpi_thermal_rel_open(struct inode *inode, struct file *file)
{
 spin_lock(&acpi_thermal_rel_chrdev_lock);
 if (acpi_thermal_rel_chrdev_exclu ||
     (acpi_thermal_rel_chrdev_count && (file->f_flags & O_EXCL))) {
  spin_unlock(&acpi_thermal_rel_chrdev_lock);
  return -EBUSY;
 }

 if (file->f_flags & O_EXCL)
  acpi_thermal_rel_chrdev_exclu = 1;
 acpi_thermal_rel_chrdev_count++;

 spin_unlock(&acpi_thermal_rel_chrdev_lock);

 return nonseekable_open(inode, file);
}
