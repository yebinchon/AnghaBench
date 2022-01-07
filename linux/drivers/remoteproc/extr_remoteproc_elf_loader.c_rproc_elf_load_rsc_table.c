
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct rproc {size_t table_sz; scalar_t__ cached_table; scalar_t__ table_ptr; struct device dev; } ;
struct resource_table {int dummy; } ;
struct firmware {int size; int * data; } ;
struct elf32_shdr {int sh_offset; size_t sh_size; } ;
struct elf32_hdr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct elf32_shdr* find_table (struct device*,struct elf32_hdr*,int ) ;
 scalar_t__ kmemdup (struct resource_table*,size_t,int ) ;

int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw)
{
 struct elf32_hdr *ehdr;
 struct elf32_shdr *shdr;
 struct device *dev = &rproc->dev;
 struct resource_table *table = ((void*)0);
 const u8 *elf_data = fw->data;
 size_t tablesz;

 ehdr = (struct elf32_hdr *)elf_data;

 shdr = find_table(dev, ehdr, fw->size);
 if (!shdr)
  return -EINVAL;

 table = (struct resource_table *)(elf_data + shdr->sh_offset);
 tablesz = shdr->sh_size;







 rproc->cached_table = kmemdup(table, tablesz, GFP_KERNEL);
 if (!rproc->cached_table)
  return -ENOMEM;

 rproc->table_ptr = rproc->cached_table;
 rproc->table_sz = tablesz;

 return 0;
}
