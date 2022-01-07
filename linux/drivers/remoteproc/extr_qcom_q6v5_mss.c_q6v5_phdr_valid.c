
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_phdr {scalar_t__ p_type; int p_flags; int p_memsz; } ;


 scalar_t__ PT_LOAD ;
 int QCOM_MDT_TYPE_HASH ;
 int QCOM_MDT_TYPE_MASK ;

__attribute__((used)) static bool q6v5_phdr_valid(const struct elf32_phdr *phdr)
{
 if (phdr->p_type != PT_LOAD)
  return 0;

 if ((phdr->p_flags & QCOM_MDT_TYPE_MASK) == QCOM_MDT_TYPE_HASH)
  return 0;

 if (!phdr->p_memsz)
  return 0;

 return 1;
}
