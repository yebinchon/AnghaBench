
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHIMPHY_PAD_GATE_PLL_S3 ;
 int SHIMPHY_PAD_PLL_SEQUENCE ;
 int shimphy_set (int,int) ;

__attribute__((used)) static inline void s3entry_method0(void)
{
 shimphy_set(SHIMPHY_PAD_GATE_PLL_S3 | SHIMPHY_PAD_PLL_SEQUENCE,
      0xffffffff);
}
