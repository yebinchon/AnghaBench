
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef size_t u32 ;
struct resource_table {int ver; int num; scalar_t__* reserved; } ;
struct elf32_shdr {int sh_offset; size_t sh_size; int sh_name; } ;
struct elf32_hdr {int e_shoff; size_t e_shstrndx; int e_shnum; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t struct_size (struct resource_table*,size_t,int ) ;

__attribute__((used)) static struct elf32_shdr *
find_table(struct device *dev, struct elf32_hdr *ehdr, size_t fw_size)
{
 struct elf32_shdr *shdr;
 int i;
 const char *name_table;
 struct resource_table *table = ((void*)0);
 const u8 *elf_data = (void *)ehdr;


 shdr = (struct elf32_shdr *)(elf_data + ehdr->e_shoff);
 name_table = elf_data + shdr[ehdr->e_shstrndx].sh_offset;

 for (i = 0; i < ehdr->e_shnum; i++, shdr++) {
  u32 size = shdr->sh_size;
  u32 offset = shdr->sh_offset;

  if (strcmp(name_table + shdr->sh_name, ".resource_table"))
   continue;

  table = (struct resource_table *)(elf_data + offset);


  if (offset + size > fw_size || offset + size < size) {
   dev_err(dev, "resource table truncated\n");
   return ((void*)0);
  }


  if (sizeof(struct resource_table) > size) {
   dev_err(dev, "header-less resource table\n");
   return ((void*)0);
  }


  if (table->ver != 1) {
   dev_err(dev, "unsupported fw ver: %d\n", table->ver);
   return ((void*)0);
  }


  if (table->reserved[0] || table->reserved[1]) {
   dev_err(dev, "non zero reserved bytes\n");
   return ((void*)0);
  }


  if (struct_size(table, offset, table->num) > size) {
   dev_err(dev, "resource table incomplete\n");
   return ((void*)0);
  }

  return shdr;
 }

 return ((void*)0);
}
