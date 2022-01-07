
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_device {int ibwin_cnt; scalar_t__ regs; } ;


 scalar_t__ TSI721_IBWIN_LB (int) ;
 int TSI721_IBWIN_NUM ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void tsi721_init_sr2pc_mapping(struct tsi721_device *priv)
{
 int i;


 for (i = 0; i < TSI721_IBWIN_NUM; i++)
  iowrite32(0, priv->regs + TSI721_IBWIN_LB(i));
 priv->ibwin_cnt = TSI721_IBWIN_NUM;
}
