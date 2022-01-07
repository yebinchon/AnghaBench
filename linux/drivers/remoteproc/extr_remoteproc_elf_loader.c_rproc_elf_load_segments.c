
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct rproc {struct device dev; } ;
struct firmware {scalar_t__ size; int * data; } ;
struct elf32_phdr {scalar_t__ p_paddr; scalar_t__ p_memsz; scalar_t__ p_filesz; scalar_t__ p_offset; scalar_t__ p_type; } ;
struct elf32_hdr {int e_phoff; int e_phnum; } ;


 int EINVAL ;
 scalar_t__ PT_LOAD ;
 int dev_dbg (struct device*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_err (struct device*,char*,scalar_t__,scalar_t__) ;
 int memcpy (void*,int const*,scalar_t__) ;
 int memset (void*,int ,scalar_t__) ;
 void* rproc_da_to_va (struct rproc*,scalar_t__,scalar_t__) ;

int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
{
 struct device *dev = &rproc->dev;
 struct elf32_hdr *ehdr;
 struct elf32_phdr *phdr;
 int i, ret = 0;
 const u8 *elf_data = fw->data;

 ehdr = (struct elf32_hdr *)elf_data;
 phdr = (struct elf32_phdr *)(elf_data + ehdr->e_phoff);


 for (i = 0; i < ehdr->e_phnum; i++, phdr++) {
  u32 da = phdr->p_paddr;
  u32 memsz = phdr->p_memsz;
  u32 filesz = phdr->p_filesz;
  u32 offset = phdr->p_offset;
  void *ptr;

  if (phdr->p_type != PT_LOAD)
   continue;

  dev_dbg(dev, "phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\n",
   phdr->p_type, da, memsz, filesz);

  if (filesz > memsz) {
   dev_err(dev, "bad phdr filesz 0x%x memsz 0x%x\n",
    filesz, memsz);
   ret = -EINVAL;
   break;
  }

  if (offset + filesz > fw->size) {
   dev_err(dev, "truncated fw: need 0x%x avail 0x%zx\n",
    offset + filesz, fw->size);
   ret = -EINVAL;
   break;
  }


  ptr = rproc_da_to_va(rproc, da, memsz);
  if (!ptr) {
   dev_err(dev, "bad phdr da 0x%x mem 0x%x\n", da, memsz);
   ret = -EINVAL;
   break;
  }


  if (phdr->p_filesz)
   memcpy(ptr, elf_data + phdr->p_offset, filesz);
  if (memsz > filesz)
   memset(ptr + filesz, 0, memsz - filesz);
 }

 return ret;
}
