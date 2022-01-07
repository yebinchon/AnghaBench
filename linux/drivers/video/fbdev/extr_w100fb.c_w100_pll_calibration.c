
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct w100_pll_info {int dummy; } ;
struct TYPE_4__ {int pll_dactal; int pll_tcpoff; } ;
struct TYPE_5__ {scalar_t__ val; TYPE_1__ f; } ;
struct TYPE_6__ {TYPE_2__ pll_cntl; } ;


 scalar_t__ mmPLL_CNTL ;
 scalar_t__ remapped_regs ;
 int udelay (int) ;
 int w100_pll_adjust (struct w100_pll_info*) ;
 TYPE_3__ w100_pwr_state ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int w100_pll_calibration(struct w100_pll_info *pll)
{
 int status;

 status = w100_pll_adjust(pll);



 w100_pwr_state.pll_cntl.f.pll_dactal = 0xa;
 writel((u32) (w100_pwr_state.pll_cntl.val), remapped_regs + mmPLL_CNTL);

 udelay(1);


 w100_pwr_state.pll_cntl.f.pll_tcpoff = 0x0;
 writel((u32) (w100_pwr_state.pll_cntl.val), remapped_regs + mmPLL_CNTL);


 w100_pwr_state.pll_cntl.f.pll_dactal = 0x0;
 writel((u32) (w100_pwr_state.pll_cntl.val), remapped_regs + mmPLL_CNTL);

 udelay(400);



 return status;
}
