
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_psd_package {int dummy; } ;
struct xen_processor_performance {int domain_info; int shared_type; } ;
struct acpi_psd_package {int num_processors; scalar_t__ coord_type; } ;
struct acpi_processor {TYPE_1__* performance; } ;
struct TYPE_2__ {struct acpi_psd_package domain_info; int shared_type; } ;


 int BUILD_BUG_ON (int) ;
 int CPUFREQ_SHARED_TYPE_ALL ;
 int CPUFREQ_SHARED_TYPE_ANY ;
 int CPUFREQ_SHARED_TYPE_HW ;
 scalar_t__ DOMAIN_COORD_TYPE_HW_ALL ;
 scalar_t__ DOMAIN_COORD_TYPE_SW_ALL ;
 scalar_t__ DOMAIN_COORD_TYPE_SW_ANY ;
 int memcpy (int *,struct acpi_psd_package*,int) ;

__attribute__((used)) static int xen_copy_psd_data(struct acpi_processor *_pr,
        struct xen_processor_performance *dst)
{
 struct acpi_psd_package *pdomain;

 BUILD_BUG_ON(sizeof(struct xen_psd_package) !=
       sizeof(struct acpi_psd_package));




 dst->shared_type = _pr->performance->shared_type;

 pdomain = &(_pr->performance->domain_info);




 if (pdomain->num_processors <= 1) {
  if (pdomain->coord_type == DOMAIN_COORD_TYPE_SW_ALL)
   dst->shared_type = CPUFREQ_SHARED_TYPE_ALL;
  else if (pdomain->coord_type == DOMAIN_COORD_TYPE_HW_ALL)
   dst->shared_type = CPUFREQ_SHARED_TYPE_HW;
  else if (pdomain->coord_type == DOMAIN_COORD_TYPE_SW_ANY)
   dst->shared_type = CPUFREQ_SHARED_TYPE_ANY;

 }
 memcpy(&(dst->domain_info), pdomain, sizeof(struct acpi_psd_package));
 return 0;
}
