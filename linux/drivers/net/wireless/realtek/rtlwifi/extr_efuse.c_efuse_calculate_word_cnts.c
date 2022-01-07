
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;

__attribute__((used)) static u8 efuse_calculate_word_cnts(u8 word_en)
{
 u8 word_cnts = 0;

 if (!(word_en & BIT(0)))
  word_cnts++;
 if (!(word_en & BIT(1)))
  word_cnts++;
 if (!(word_en & BIT(2)))
  word_cnts++;
 if (!(word_en & BIT(3)))
  word_cnts++;
 return word_cnts;
}
