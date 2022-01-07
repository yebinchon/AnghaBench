
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int LPFC_REGION23_LAST_REC ;

__attribute__((used)) static uint8_t *
lpfc_get_rec_conf23(uint8_t *buff, uint32_t size, uint8_t rec_type)
{
 uint32_t offset = 0, rec_length;

 if ((buff[0] == LPFC_REGION23_LAST_REC) ||
  (size < sizeof(uint32_t)))
  return ((void*)0);

 rec_length = buff[offset + 1];





 while ((offset + rec_length * sizeof(uint32_t) + sizeof(uint32_t))
  <= size) {
  if (buff[offset] == rec_type)
   return &buff[offset];

  if (buff[offset] == LPFC_REGION23_LAST_REC)
   return ((void*)0);

  offset += rec_length * sizeof(uint32_t) + sizeof(uint32_t);
  rec_length = buff[offset + 1];
 }
 return ((void*)0);
}
