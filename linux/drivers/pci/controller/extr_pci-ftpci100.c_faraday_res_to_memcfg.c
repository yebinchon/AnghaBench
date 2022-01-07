
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int resource_size_t ;


 int EINVAL ;
 int FARADAY_PCI_MEMBASE_MASK ;
 int FARADAY_PCI_MEMSIZE_128MB ;
 int FARADAY_PCI_MEMSIZE_16MB ;
 int FARADAY_PCI_MEMSIZE_1GB ;
 int FARADAY_PCI_MEMSIZE_1MB ;
 int FARADAY_PCI_MEMSIZE_256MB ;
 int FARADAY_PCI_MEMSIZE_2GB ;
 int FARADAY_PCI_MEMSIZE_2MB ;
 int FARADAY_PCI_MEMSIZE_32MB ;
 int FARADAY_PCI_MEMSIZE_4MB ;
 int FARADAY_PCI_MEMSIZE_512MB ;
 int FARADAY_PCI_MEMSIZE_64MB ;
 int FARADAY_PCI_MEMSIZE_8MB ;
 int FARADAY_PCI_MEMSIZE_SHIFT ;
 int pr_debug (char*,int*,int*,int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int faraday_res_to_memcfg(resource_size_t mem_base,
     resource_size_t mem_size, u32 *val)
{
 u32 outval;

 switch (mem_size) {
 case 136:
  outval = FARADAY_PCI_MEMSIZE_1MB;
  break;
 case 133:
  outval = FARADAY_PCI_MEMSIZE_2MB;
  break;
 case 131:
  outval = FARADAY_PCI_MEMSIZE_4MB;
  break;
 case 128:
  outval = FARADAY_PCI_MEMSIZE_8MB;
  break;
 case 138:
  outval = FARADAY_PCI_MEMSIZE_16MB;
  break;
 case 132:
  outval = FARADAY_PCI_MEMSIZE_32MB;
  break;
 case 129:
  outval = FARADAY_PCI_MEMSIZE_64MB;
  break;
 case 139:
  outval = FARADAY_PCI_MEMSIZE_128MB;
  break;
 case 135:
  outval = FARADAY_PCI_MEMSIZE_256MB;
  break;
 case 130:
  outval = FARADAY_PCI_MEMSIZE_512MB;
  break;
 case 137:
  outval = FARADAY_PCI_MEMSIZE_1GB;
  break;
 case 134:
  outval = FARADAY_PCI_MEMSIZE_2GB;
  break;
 default:
  return -EINVAL;
 }
 outval <<= FARADAY_PCI_MEMSIZE_SHIFT;


 if (mem_base & ~(FARADAY_PCI_MEMBASE_MASK))
  pr_warn("truncated PCI memory base\n");

 outval |= (mem_base & FARADAY_PCI_MEMBASE_MASK);
 pr_debug("Translated pci base @%pap, size %pap to config %08x\n",
   &mem_base, &mem_size, outval);

 *val = outval;
 return 0;
}
