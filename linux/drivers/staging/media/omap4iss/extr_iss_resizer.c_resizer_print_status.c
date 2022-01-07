
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_resizer_device {int dummy; } ;
struct iss_device {int dev; } ;


 int DMA_RZA ;
 int DMA_RZB ;
 int DMA_STA ;
 int DWN_EN ;
 int EN ;
 int FRACDIV ;
 int GCK_MMR ;
 int GCK_SDR ;
 int H_DIF ;
 int H_LPF ;
 int H_PHS ;
 int H_TYP ;
 int IN_FIFO_CTRL ;
 int IRQ_RZA ;
 int IRQ_RZB ;
 int I_HPS ;
 int I_VPS ;
 int MODE ;
 int O_HSZ ;
 int O_VSZ ;
 int RSZ_PRINT_REGISTER (struct iss_device*,int ) ;
 int RZA_PRINT_REGISTER (struct iss_device*,int) ;
 int SDR_C_BAD_H ;
 int SDR_C_BAD_L ;
 int SDR_C_OFT ;
 int SDR_C_PTR_E ;
 int SDR_C_PTR_S ;
 int SDR_C_SAD_H ;
 int SDR_C_SAD_L ;
 int SDR_Y_BAD_H ;
 int SDR_Y_BAD_L ;
 int SDR_Y_OFT ;
 int SDR_Y_PTR_E ;
 int SDR_Y_PTR_S ;
 int SDR_Y_SAD_H ;
 int SDR_Y_SAD_L ;
 int SEQ ;
 int SRC_EN ;
 int SRC_FMT0 ;
 int SRC_FMT1 ;
 int SRC_HPS ;
 int SRC_HSZ ;
 int SRC_MODE ;
 int SRC_VPS ;
 int SRC_VSZ ;
 int SYSCONFIG ;
 int V_DIF ;
 int V_LPF ;
 int V_PHS_C ;
 int V_PHS_Y ;
 int V_TYP ;
 int YUV_C_MAX ;
 int YUV_C_MIN ;
 int YUV_Y_MAX ;
 int YUV_Y_MIN ;
 int dev_dbg (int ,char*) ;
 struct iss_device* to_iss_device (struct iss_resizer_device*) ;

__attribute__((used)) static void resizer_print_status(struct iss_resizer_device *resizer)
{
 struct iss_device *iss = to_iss_device(resizer);

 dev_dbg(iss->dev, "-------------RESIZER Register dump-------------\n");

 RSZ_PRINT_REGISTER(iss, SYSCONFIG);
 RSZ_PRINT_REGISTER(iss, IN_FIFO_CTRL);
 RSZ_PRINT_REGISTER(iss, FRACDIV);
 RSZ_PRINT_REGISTER(iss, SRC_EN);
 RSZ_PRINT_REGISTER(iss, SRC_MODE);
 RSZ_PRINT_REGISTER(iss, SRC_FMT0);
 RSZ_PRINT_REGISTER(iss, SRC_FMT1);
 RSZ_PRINT_REGISTER(iss, SRC_VPS);
 RSZ_PRINT_REGISTER(iss, SRC_VSZ);
 RSZ_PRINT_REGISTER(iss, SRC_HPS);
 RSZ_PRINT_REGISTER(iss, SRC_HSZ);
 RSZ_PRINT_REGISTER(iss, DMA_RZA);
 RSZ_PRINT_REGISTER(iss, DMA_RZB);
 RSZ_PRINT_REGISTER(iss, DMA_STA);
 RSZ_PRINT_REGISTER(iss, GCK_MMR);
 RSZ_PRINT_REGISTER(iss, GCK_SDR);
 RSZ_PRINT_REGISTER(iss, IRQ_RZA);
 RSZ_PRINT_REGISTER(iss, IRQ_RZB);
 RSZ_PRINT_REGISTER(iss, YUV_Y_MIN);
 RSZ_PRINT_REGISTER(iss, YUV_Y_MAX);
 RSZ_PRINT_REGISTER(iss, YUV_C_MIN);
 RSZ_PRINT_REGISTER(iss, YUV_C_MAX);
 RSZ_PRINT_REGISTER(iss, SEQ);

 RZA_PRINT_REGISTER(iss, EN);
 RZA_PRINT_REGISTER(iss, MODE);
 RZA_PRINT_REGISTER(iss, 420);
 RZA_PRINT_REGISTER(iss, I_VPS);
 RZA_PRINT_REGISTER(iss, I_HPS);
 RZA_PRINT_REGISTER(iss, O_VSZ);
 RZA_PRINT_REGISTER(iss, O_HSZ);
 RZA_PRINT_REGISTER(iss, V_PHS_Y);
 RZA_PRINT_REGISTER(iss, V_PHS_C);
 RZA_PRINT_REGISTER(iss, V_DIF);
 RZA_PRINT_REGISTER(iss, V_TYP);
 RZA_PRINT_REGISTER(iss, V_LPF);
 RZA_PRINT_REGISTER(iss, H_PHS);
 RZA_PRINT_REGISTER(iss, H_DIF);
 RZA_PRINT_REGISTER(iss, H_TYP);
 RZA_PRINT_REGISTER(iss, H_LPF);
 RZA_PRINT_REGISTER(iss, DWN_EN);
 RZA_PRINT_REGISTER(iss, SDR_Y_BAD_H);
 RZA_PRINT_REGISTER(iss, SDR_Y_BAD_L);
 RZA_PRINT_REGISTER(iss, SDR_Y_SAD_H);
 RZA_PRINT_REGISTER(iss, SDR_Y_SAD_L);
 RZA_PRINT_REGISTER(iss, SDR_Y_OFT);
 RZA_PRINT_REGISTER(iss, SDR_Y_PTR_S);
 RZA_PRINT_REGISTER(iss, SDR_Y_PTR_E);
 RZA_PRINT_REGISTER(iss, SDR_C_BAD_H);
 RZA_PRINT_REGISTER(iss, SDR_C_BAD_L);
 RZA_PRINT_REGISTER(iss, SDR_C_SAD_H);
 RZA_PRINT_REGISTER(iss, SDR_C_SAD_L);
 RZA_PRINT_REGISTER(iss, SDR_C_OFT);
 RZA_PRINT_REGISTER(iss, SDR_C_PTR_S);
 RZA_PRINT_REGISTER(iss, SDR_C_PTR_E);

 dev_dbg(iss->dev, "-----------------------------------------------\n");
}
