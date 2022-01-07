
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 int PAGE_SIZE ;
 int PCI_PROBE_ONLY ;
 int pci_dev_str_match (struct pci_dev*,char const*,char const**) ;
 scalar_t__ pci_has_flag (int ) ;
 int pcibios_default_alignment () ;
 int pr_err (char*,char const*) ;
 int pr_info_once (char*) ;
 int resource_alignment_lock ;
 char* resource_alignment_param ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,int*,int*) ;

__attribute__((used)) static resource_size_t pci_specified_resource_alignment(struct pci_dev *dev,
       bool *resize)
{
 int align_order, count;
 resource_size_t align = pcibios_default_alignment();
 const char *p;
 int ret;

 spin_lock(&resource_alignment_lock);
 p = resource_alignment_param;
 if (!p || !*p)
  goto out;
 if (pci_has_flag(PCI_PROBE_ONLY)) {
  align = 0;
  pr_info_once("PCI: Ignoring requested alignments (PCI_PROBE_ONLY)\n");
  goto out;
 }

 while (*p) {
  count = 0;
  if (sscanf(p, "%d%n", &align_order, &count) == 1 &&
       p[count] == '@') {
   p += count + 1;
  } else {
   align_order = -1;
  }

  ret = pci_dev_str_match(dev, p, &p);
  if (ret == 1) {
   *resize = 1;
   if (align_order == -1)
    align = PAGE_SIZE;
   else
    align = 1 << align_order;
   break;
  } else if (ret < 0) {
   pr_err("PCI: Can't parse resource_alignment parameter: %s\n",
          p);
   break;
  }

  if (*p != ';' && *p != ',') {

   break;
  }
  p++;
 }
out:
 spin_unlock(&resource_alignment_lock);
 return align;
}
