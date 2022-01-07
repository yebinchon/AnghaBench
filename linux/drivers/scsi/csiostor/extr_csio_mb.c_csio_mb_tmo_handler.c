
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cmd_hdr {int lo; int hi; } ;
struct csio_mbm {struct csio_mb* mcurrent; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int pfn; struct csio_mbm mbm; } ;


 int CSIO_DB_ASSERT (int ) ;
 int CSIO_INC_STATS (struct csio_mbm*,int ) ;
 int FW_CMD_OP_G (int ) ;
 int FW_CMD_RETVAL_V (int ) ;
 int FW_ETIMEDOUT ;
 int csio_dbg (struct csio_hw*,char*,int ,int ) ;
 int htonl (int ) ;
 int n_tmo ;
 int ntohl (int ) ;

struct csio_mb *
csio_mb_tmo_handler(struct csio_hw *hw)
{
 struct csio_mbm *mbm = &hw->mbm;
 struct csio_mb *mbp = mbm->mcurrent;
 struct fw_cmd_hdr *fw_hdr;





 if (mbp == ((void*)0)) {
  CSIO_DB_ASSERT(0);
  return ((void*)0);
 }

 fw_hdr = (struct fw_cmd_hdr *)(mbp->mb);

 csio_dbg(hw, "Mailbox num:%x op:0x%x timed out\n", hw->pfn,
      FW_CMD_OP_G(ntohl(fw_hdr->hi)));

 mbm->mcurrent = ((void*)0);
 CSIO_INC_STATS(mbm, n_tmo);
 fw_hdr->lo = htonl(FW_CMD_RETVAL_V(FW_ETIMEDOUT));

 return mbp;
}
