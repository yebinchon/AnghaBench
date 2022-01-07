
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int BIT (int) ;
 int le32p_replace_bits (int *,int ,int ) ;

__attribute__((used)) static inline void set_tx_desc_hwseq_en(__le32 *__txdesc, u32 __value)
{
 le32p_replace_bits((__txdesc + 4), __value, BIT(7));
}
