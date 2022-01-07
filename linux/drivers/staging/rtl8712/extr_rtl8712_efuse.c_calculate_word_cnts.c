
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ const BIT (scalar_t__) ;
 scalar_t__ PGPKG_MAX_WORDS ;

__attribute__((used)) static u8 calculate_word_cnts(const u8 word_en)
{
 u8 word_cnts = 0;
 u8 word_idx;

 for (word_idx = 0; word_idx < PGPKG_MAX_WORDS; word_idx++)
  if (!(word_en & BIT(word_idx)))
   word_cnts++;
 return word_cnts;
}
