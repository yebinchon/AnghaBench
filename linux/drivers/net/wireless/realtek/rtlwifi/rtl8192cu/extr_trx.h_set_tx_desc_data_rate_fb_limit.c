
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int GENMASK (int,int) ;
 int le32p_replace_bits (int *,int ,int ) ;

__attribute__((used)) static inline void set_tx_desc_data_rate_fb_limit(__le32 *__txdesc, u32 __value)
{
 le32p_replace_bits((__txdesc + 5), __value, GENMASK(12, 8));
}
