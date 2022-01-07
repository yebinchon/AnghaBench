
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riva_par {unsigned char* EDID; } ;
struct pci_dev {int dummy; } ;
struct fb_info {struct riva_par* par; } ;
struct device_node {struct device_node* child; } ;


 int NVTRACE (char*) ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 unsigned char* of_get_property (struct device_node*,char*,int *) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 scalar_t__ strncmp (unsigned char const*,char*,int) ;

__attribute__((used)) static int riva_get_EDID_OF(struct fb_info *info, struct pci_dev *pd)
{
 struct riva_par *par = info->par;
 struct device_node *dp;
 const unsigned char *pedid = ((void*)0);
 const unsigned char *disptype = ((void*)0);
 static char *propnames[] = {
  "DFP,EDID", "LCD,EDID", "EDID", "EDID1", "EDID,B", "EDID,A", ((void*)0) };
 int i;

 NVTRACE_ENTER();
 dp = pci_device_to_OF_node(pd);
 for (; dp != ((void*)0); dp = dp->child) {
  disptype = of_get_property(dp, "display-type", ((void*)0));
  if (disptype == ((void*)0))
   continue;
  if (strncmp(disptype, "LCD", 3) != 0)
   continue;
  for (i = 0; propnames[i] != ((void*)0); ++i) {
   pedid = of_get_property(dp, propnames[i], ((void*)0));
   if (pedid != ((void*)0)) {
    par->EDID = (unsigned char *)pedid;
    NVTRACE("LCD found.\n");
    return 1;
   }
  }
 }
 NVTRACE_LEAVE();
 return 0;
}
