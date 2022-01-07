
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {size_t size; scalar_t__ data; } ;
struct elf32_phdr {scalar_t__ p_type; int p_flags; size_t p_filesz; size_t p_offset; } ;
struct elf32_hdr {int e_phnum; } ;


 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ PT_LOAD ;
 int QCOM_MDT_TYPE_HASH ;
 int QCOM_MDT_TYPE_MASK ;
 void* kmalloc (size_t,int ) ;
 int memcpy (void*,scalar_t__,size_t) ;

void *qcom_mdt_read_metadata(const struct firmware *fw, size_t *data_len)
{
 const struct elf32_phdr *phdrs;
 const struct elf32_hdr *ehdr;
 size_t hash_offset;
 size_t hash_size;
 size_t ehdr_size;
 void *data;

 ehdr = (struct elf32_hdr *)fw->data;
 phdrs = (struct elf32_phdr *)(ehdr + 1);

 if (ehdr->e_phnum < 2)
  return ERR_PTR(-EINVAL);

 if (phdrs[0].p_type == PT_LOAD || phdrs[1].p_type == PT_LOAD)
  return ERR_PTR(-EINVAL);

 if ((phdrs[1].p_flags & QCOM_MDT_TYPE_MASK) != QCOM_MDT_TYPE_HASH)
  return ERR_PTR(-EINVAL);

 ehdr_size = phdrs[0].p_filesz;
 hash_size = phdrs[1].p_filesz;

 data = kmalloc(ehdr_size + hash_size, GFP_KERNEL);
 if (!data)
  return ERR_PTR(-ENOMEM);


 if (ehdr_size + hash_size == fw->size)
  hash_offset = phdrs[0].p_filesz;
 else
  hash_offset = phdrs[1].p_offset;

 memcpy(data, fw->data, ehdr_size);
 memcpy(data + ehdr_size, fw->data + hash_offset, hash_size);

 *data_len = ehdr_size + hash_size;

 return data;
}
