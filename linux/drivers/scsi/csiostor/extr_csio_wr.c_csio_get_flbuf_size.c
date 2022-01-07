
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct csio_sge {int * sge_fl_buf_size; } ;
struct csio_hw {int dummy; } ;


 scalar_t__ SGE_FL_BUFFER_SIZE0_A ;
 int csio_rd_reg32 (struct csio_hw*,scalar_t__) ;

__attribute__((used)) static void
csio_get_flbuf_size(struct csio_hw *hw, struct csio_sge *sge, uint32_t reg)
{
 sge->sge_fl_buf_size[reg] = csio_rd_reg32(hw, SGE_FL_BUFFER_SIZE0_A +
       reg * sizeof(uint32_t));
}
