
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int acpi_ids_done ;
 int bitmap_zero (int ,int ) ;
 int nr_acpi_bits ;
 int pr_info (char*,int) ;
 int xen_upload_processor_pm_data () ;

__attribute__((used)) static void xen_acpi_processor_resume_worker(struct work_struct *dummy)
{
 int rc;

 bitmap_zero(acpi_ids_done, nr_acpi_bits);

 rc = xen_upload_processor_pm_data();
 if (rc != 0)
  pr_info("ACPI data upload failed, error = %d\n", rc);
}
