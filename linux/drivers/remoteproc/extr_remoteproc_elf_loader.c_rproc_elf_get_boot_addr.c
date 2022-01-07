
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rproc {int dummy; } ;
struct firmware {scalar_t__ data; } ;
struct elf32_hdr {int e_entry; } ;



u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
{
 struct elf32_hdr *ehdr = (struct elf32_hdr *)fw->data;

 return ehdr->e_entry;
}
