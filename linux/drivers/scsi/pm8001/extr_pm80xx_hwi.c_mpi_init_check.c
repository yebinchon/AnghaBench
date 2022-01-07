
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int general_stat_tbl_addr; int pdev; } ;


 int GST_GSTLEN_MPIS_OFFSET ;
 int GST_MPI_STATE_INIT ;
 int GST_MPI_STATE_MASK ;
 scalar_t__ IS_SPCV_12G (int ) ;
 int MSGU_IBDB_SET ;
 int SPCv_MSGU_CFG_TABLE_UPDATE ;
 int pm8001_cr32 (struct pm8001_hba_info*,int ,int ) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int) ;
 int pm8001_mr32 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int mpi_init_check(struct pm8001_hba_info *pm8001_ha)
{
 u32 max_wait_count;
 u32 value;
 u32 gst_len_mpistate;



 pm8001_cw32(pm8001_ha, 0, MSGU_IBDB_SET, SPCv_MSGU_CFG_TABLE_UPDATE);

 if (IS_SPCV_12G(pm8001_ha->pdev)) {
  max_wait_count = 4 * 1000 * 1000;
 } else {
  max_wait_count = 2 * 1000 * 1000;
 }
 do {
  udelay(1);
  value = pm8001_cr32(pm8001_ha, 0, MSGU_IBDB_SET);
  value &= SPCv_MSGU_CFG_TABLE_UPDATE;
 } while ((value != 0) && (--max_wait_count));

 if (!max_wait_count)
  return -1;

 max_wait_count = 100 * 1000;
 do {
  udelay(1);
  gst_len_mpistate =
   pm8001_mr32(pm8001_ha->general_stat_tbl_addr,
     GST_GSTLEN_MPIS_OFFSET);
 } while ((GST_MPI_STATE_INIT !=
  (gst_len_mpistate & GST_MPI_STATE_MASK)) && (--max_wait_count));
 if (!max_wait_count)
  return -1;


 gst_len_mpistate = gst_len_mpistate >> 16;
 if (0x0000 != gst_len_mpistate)
  return -1;

 return 0;
}
