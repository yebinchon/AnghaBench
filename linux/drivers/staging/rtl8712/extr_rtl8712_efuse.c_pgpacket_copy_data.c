
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int const BIT (int) ;
 int PGPKG_MAX_WORDS ;

__attribute__((used)) static void pgpacket_copy_data(const u8 word_en, const u8 *sourdata,
          u8 *targetdata)
{
 u8 tmpindex = 0;
 u8 word_idx, byte_idx;

 for (word_idx = 0; word_idx < PGPKG_MAX_WORDS; word_idx++) {
  if (!(word_en & BIT(word_idx))) {
   byte_idx = word_idx * 2;
   targetdata[byte_idx] = sourdata[tmpindex++];
   targetdata[byte_idx + 1] = sourdata[tmpindex++];
  }
 }
}
