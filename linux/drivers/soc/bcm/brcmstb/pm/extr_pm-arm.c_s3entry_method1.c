
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWRDWN_SEQ_POWERDOWN_PLL ;
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK ;
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT ;
 int ddr_ctrl_set (int) ;
 int shimphy_set (int,int ) ;

__attribute__((used)) static inline void s3entry_method1(void)
{






 shimphy_set((PWRDWN_SEQ_POWERDOWN_PLL <<
      SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT),
      ~SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK);

 ddr_ctrl_set(1);
}
