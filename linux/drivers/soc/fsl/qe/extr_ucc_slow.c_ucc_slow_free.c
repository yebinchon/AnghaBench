
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_slow_private {scalar_t__ us_regs; scalar_t__ us_pram_offset; scalar_t__ us_pram; scalar_t__ tx_base_offset; scalar_t__ rx_base_offset; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct ucc_slow_private*) ;
 int qe_muram_free (scalar_t__) ;

void ucc_slow_free(struct ucc_slow_private * uccs)
{
 if (!uccs)
  return;

 if (uccs->rx_base_offset)
  qe_muram_free(uccs->rx_base_offset);

 if (uccs->tx_base_offset)
  qe_muram_free(uccs->tx_base_offset);

 if (uccs->us_pram)
  qe_muram_free(uccs->us_pram_offset);

 if (uccs->us_regs)
  iounmap(uccs->us_regs);

 kfree(uccs);
}
