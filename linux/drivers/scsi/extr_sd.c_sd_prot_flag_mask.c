
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int sd_prot_flag_mask(unsigned int prot_op)
{
 static const unsigned int flag_mask[] = {
  [137] = 0,

  [134] = 131 |
        139 |
        133 |
        132,

  [136] = 132 |
        138,

  [135] = 131 |
        139 |
        133 |
        132 |
        138,

  [130] = 131 |
        132,

  [128] = 139 |
        133 |
        132 |
        138,

  [129] = 131 |
        139 |
        133 |
        132 |
        138,
 };

 return flag_mask[prot_op];
}
