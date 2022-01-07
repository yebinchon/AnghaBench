
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_report_error_header {int version; int action; int length; } ;
struct err_notify_sccb {int dummy; } ;


 int EINVAL ;
 int PAGE_SIZE ;




__attribute__((used)) static int sclp_pci_check_report(struct zpci_report_error_header *report)
{
 if (report->version != 1)
  return -EINVAL;

 switch (report->action) {
 case 128:
 case 129:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 if (report->length > (PAGE_SIZE - sizeof(struct err_notify_sccb)))
  return -EINVAL;

 return 0;
}
