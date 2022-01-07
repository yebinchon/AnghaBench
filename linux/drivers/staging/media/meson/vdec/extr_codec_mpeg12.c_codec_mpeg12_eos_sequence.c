
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ARRAY_SIZE (int const*) ;
 int const* eos_sequence ;

__attribute__((used)) static const u8 *codec_mpeg12_eos_sequence(u32 *len)
{
 *len = ARRAY_SIZE(eos_sequence);
 return eos_sequence;
}
