
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



const u8 * scsi_sense_desc_find(const u8 * sense_buffer, int sb_len,
    int desc_type)
{
 int add_sen_len, add_len, desc_len, k;
 const u8 * descp;

 if ((sb_len < 8) || (0 == (add_sen_len = sense_buffer[7])))
  return ((void*)0);
 if ((sense_buffer[0] < 0x72) || (sense_buffer[0] > 0x73))
  return ((void*)0);
 add_sen_len = (add_sen_len < (sb_len - 8)) ?
   add_sen_len : (sb_len - 8);
 descp = &sense_buffer[8];
 for (desc_len = 0, k = 0; k < add_sen_len; k += desc_len) {
  descp += desc_len;
  add_len = (k < (add_sen_len - 1)) ? descp[1]: -1;
  desc_len = add_len + 2;
  if (descp[0] == desc_type)
   return descp;
  if (add_len < 0)
   break;
 }
 return ((void*)0);
}
