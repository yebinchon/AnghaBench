
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int get_unaligned_le32 (unsigned int*) ;

__attribute__((used)) static unsigned int decode_compactedbits(unsigned int lobits,
      unsigned int lomask,
      u8 *in, unsigned int pos, u8 *type)
{
 const unsigned int v = get_unaligned_le32(in + pos / 8) >> (pos & 7);
 const unsigned int lo = v & lomask;

 *type = (v >> lobits) & 3;
 return lo;
}
