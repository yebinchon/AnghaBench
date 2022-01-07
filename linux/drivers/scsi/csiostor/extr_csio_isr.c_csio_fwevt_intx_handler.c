
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_hw {int dummy; } ;
struct csio_fl_dma_buf {int dummy; } ;


 int csio_fwevt_handler (struct csio_hw*) ;

void
csio_fwevt_intx_handler(struct csio_hw *hw, void *wr, uint32_t len,
      struct csio_fl_dma_buf *flb, void *priv)
{
 csio_fwevt_handler(hw);
}
