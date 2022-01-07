
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {unsigned short vendor; unsigned short device; unsigned short subsystem_vendor; unsigned short subsystem_device; } ;


 int EINVAL ;
 int pci_dev_str_match_path (struct pci_dev*,char const*,char const**) ;
 int sscanf (char const*,char*,unsigned short*,unsigned short*,...) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int pci_dev_str_match(struct pci_dev *dev, const char *p,
        const char **endptr)
{
 int ret;
 int count;
 unsigned short vendor, device, subsystem_vendor, subsystem_device;

 if (strncmp(p, "pci:", 4) == 0) {

  p += 4;
  ret = sscanf(p, "%hx:%hx:%hx:%hx%n", &vendor, &device,
        &subsystem_vendor, &subsystem_device, &count);
  if (ret != 4) {
   ret = sscanf(p, "%hx:%hx%n", &vendor, &device, &count);
   if (ret != 2)
    return -EINVAL;

   subsystem_vendor = 0;
   subsystem_device = 0;
  }

  p += count;

  if ((!vendor || vendor == dev->vendor) &&
      (!device || device == dev->device) &&
      (!subsystem_vendor ||
       subsystem_vendor == dev->subsystem_vendor) &&
      (!subsystem_device ||
       subsystem_device == dev->subsystem_device))
   goto found;
 } else {




  ret = pci_dev_str_match_path(dev, p, &p);
  if (ret < 0)
   return ret;
  else if (ret)
   goto found;
 }

 *endptr = p;
 return 0;

found:
 *endptr = p;
 return 1;
}
