
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dev; } ;
struct resource_table {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;
struct elf32_shdr {int sh_size; int sh_addr; } ;
struct elf32_hdr {int dummy; } ;


 struct elf32_shdr* find_table (int *,struct elf32_hdr*,int ) ;
 struct resource_table* rproc_da_to_va (struct rproc*,int ,int ) ;

struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
             const struct firmware *fw)
{
 struct elf32_hdr *ehdr = (struct elf32_hdr *)fw->data;
 struct elf32_shdr *shdr;

 shdr = find_table(&rproc->dev, ehdr, fw->size);
 if (!shdr)
  return ((void*)0);

 return rproc_da_to_va(rproc, shdr->sh_addr, shdr->sh_size);
}
