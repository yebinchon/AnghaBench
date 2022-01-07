
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* vc; } ;
typedef enum fifo_size { ____Placeholder_fifo_size } fifo_size ;
struct TYPE_2__ {int tx_fifo_size; } ;


 int BUG () ;
 int DSI_TX_FIFO_VC_SIZE ;
 int DSSERR (char*) ;
 int FLD_VAL (int,int,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_write_reg (struct platform_device*,int ,int) ;

__attribute__((used)) static void dsi_config_tx_fifo(struct platform_device *dsidev,
  enum fifo_size size1, enum fifo_size size2,
  enum fifo_size size3, enum fifo_size size4)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 u32 r = 0;
 int add = 0;
 int i;

 dsi->vc[0].tx_fifo_size = size1;
 dsi->vc[1].tx_fifo_size = size2;
 dsi->vc[2].tx_fifo_size = size3;
 dsi->vc[3].tx_fifo_size = size4;

 for (i = 0; i < 4; i++) {
  u8 v;
  int size = dsi->vc[i].tx_fifo_size;

  if (add + size > 4) {
   DSSERR("Illegal FIFO configuration\n");
   BUG();
   return;
  }

  v = FLD_VAL(add, 2, 0) | FLD_VAL(size, 7, 4);
  r |= v << (8 * i);

  add += size;
 }

 dsi_write_reg(dsidev, DSI_TX_FIFO_VC_SIZE, r);
}
