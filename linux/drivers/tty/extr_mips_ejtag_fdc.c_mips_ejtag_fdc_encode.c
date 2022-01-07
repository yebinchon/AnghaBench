
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fdc_word {int word; int bytes; int member_1; int member_0; } ;



__attribute__((used)) static struct fdc_word mips_ejtag_fdc_encode(const char **ptrs,
          unsigned int *sizes,
          unsigned int ranges)
{
 struct fdc_word word = { 0, 0 };
 const char **ptrs_end = ptrs + ranges;

 for (; ptrs < ptrs_end; ++ptrs) {
  const char *ptr = *(ptrs++);
  const char *end = ptr + *(sizes++);

  for (; ptr < end; ++ptr) {
   word.word |= (u8)*ptr << (8*word.bytes);
   ++word.bytes;
   if (word.bytes == 4)
    goto done;
  }
 }
done:

 switch (word.bytes) {
 case 4:

  if ((word.word >> 8) != 0x808080 &&
      (word.word >> 16) != 0x8181 &&
      (word.word >> 24) != 0x82)
   break;

  word.bytes = 3;
  word.word &= 0x00ffffff;
 case 3:

  word.word |= 0x82000000;
  break;
 case 2:

  word.word |= 0x81810000;
  break;
 case 1:

  word.word |= 0x80808000;
  break;
 }
 return word;
}
