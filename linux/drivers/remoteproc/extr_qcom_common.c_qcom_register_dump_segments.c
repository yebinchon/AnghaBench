
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct firmware {scalar_t__ data; } ;
struct elf32_phdr {scalar_t__ p_type; int p_flags; int p_memsz; int p_paddr; } ;
struct elf32_hdr {int e_phnum; } ;


 scalar_t__ PT_LOAD ;
 int QCOM_MDT_TYPE_HASH ;
 int QCOM_MDT_TYPE_MASK ;
 int rproc_coredump_add_segment (struct rproc*,int ,int ) ;

int qcom_register_dump_segments(struct rproc *rproc,
    const struct firmware *fw)
{
 const struct elf32_phdr *phdrs;
 const struct elf32_phdr *phdr;
 const struct elf32_hdr *ehdr;
 int ret;
 int i;

 ehdr = (struct elf32_hdr *)fw->data;
 phdrs = (struct elf32_phdr *)(ehdr + 1);

 for (i = 0; i < ehdr->e_phnum; i++) {
  phdr = &phdrs[i];

  if (phdr->p_type != PT_LOAD)
   continue;

  if ((phdr->p_flags & QCOM_MDT_TYPE_MASK) == QCOM_MDT_TYPE_HASH)
   continue;

  if (!phdr->p_memsz)
   continue;

  ret = rproc_coredump_add_segment(rproc, phdr->p_paddr,
       phdr->p_memsz);
  if (ret)
   return ret;
 }

 return 0;
}
