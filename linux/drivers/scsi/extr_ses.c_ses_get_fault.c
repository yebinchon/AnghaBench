
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int dummy; } ;
struct enclosure_component {unsigned char fault; } ;


 unsigned char* ses_get_page2_descriptor (struct enclosure_device*,struct enclosure_component*) ;
 int ses_page2_supported (struct enclosure_device*) ;

__attribute__((used)) static void ses_get_fault(struct enclosure_device *edev,
     struct enclosure_component *ecomp)
{
 unsigned char *desc;

 if (!ses_page2_supported(edev)) {
  ecomp->fault = 0;
  return;
 }
 desc = ses_get_page2_descriptor(edev, ecomp);
 if (desc)
  ecomp->fault = (desc[3] & 0x60) >> 4;
}
