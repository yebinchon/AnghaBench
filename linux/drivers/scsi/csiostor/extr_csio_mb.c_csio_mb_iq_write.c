
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_iq_cmd {int fl0addr; int fl0size; int fl0dcaen_to_fl0cidxfthresh; int iqns_to_fl0congen; int iqaddr; int iqsize; int iqdroprss_to_iqesize; int type_to_iqandstindex; int fl1id; int fl0id; int iqid; int alloc_to_len16; int op_to_vfn; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_iq_params {int iqid; int fl0id; int fl1id; int iqsize; scalar_t__ type; int fl0size; scalar_t__ fl0addr; int fl0cidxfthresh; int fl0fbmax; int fl0fbmin; int fl0dcacpu; int fl0dcaen; int fl0packen; int fl0paden; int fl0cprio; int fl0hostfcmode; int iqflintcongen; int iqflintiqhsen; scalar_t__ iqaddr; int iqesize; int iqcprio; int iqintcntthresh; int iqdcacpu; int iqdcaen; int iqpciech; int iqandstindex; int iqanud; int iqanus; int iqandst; int vfn; int pfn; scalar_t__ iq_start; } ;
struct csio_hw {int flags; } ;


 int CSIO_HWF_ROOT_NO_RELAXED_ORDERING ;
 int CSIO_INIT_MBP (struct csio_mb*,struct fw_iq_cmd*,int,void*,void (*) (struct csio_hw*,struct csio_mb*),int) ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_IQ_CMD ;
 int FW_IQ_CMD_FL0CIDXFTHRESH_V (int ) ;
 int FW_IQ_CMD_FL0CPRIO_V (int ) ;
 int FW_IQ_CMD_FL0DATARO_V (int) ;
 int FW_IQ_CMD_FL0DCACPU_V (int ) ;
 int FW_IQ_CMD_FL0DCAEN_V (int ) ;
 int FW_IQ_CMD_FL0FBMAX_V (int ) ;
 int FW_IQ_CMD_FL0FBMIN_V (int ) ;
 int FW_IQ_CMD_FL0FETCHRO_V (int) ;
 int FW_IQ_CMD_FL0HOSTFCMODE_V (int ) ;
 int FW_IQ_CMD_FL0PACKEN_V (int ) ;
 int FW_IQ_CMD_FL0PADEN_V (int ) ;
 int FW_IQ_CMD_IQANDSTINDEX_V (int ) ;
 int FW_IQ_CMD_IQANDST_V (int ) ;
 int FW_IQ_CMD_IQANUD_V (int ) ;
 int FW_IQ_CMD_IQANUS_V (int ) ;
 int FW_IQ_CMD_IQCPRIO_V (int ) ;
 int FW_IQ_CMD_IQDCACPU_V (int ) ;
 int FW_IQ_CMD_IQDCAEN_V (int ) ;
 int FW_IQ_CMD_IQESIZE_V (int ) ;
 int FW_IQ_CMD_IQFLINTCONGEN_V (int ) ;
 int FW_IQ_CMD_IQFLINTIQHSEN_V (int ) ;
 int FW_IQ_CMD_IQINTCNTTHRESH_V (int ) ;
 int FW_IQ_CMD_IQPCIECH_V (int ) ;
 int FW_IQ_CMD_IQSTART_F ;
 int FW_IQ_CMD_IQSTOP_F ;
 int FW_IQ_CMD_PFN_V (int ) ;
 int FW_IQ_CMD_VFN_V (int ) ;
 int cpu_to_be64 (scalar_t__) ;
 int htonl (int) ;
 int htons (int) ;

__attribute__((used)) static void
csio_mb_iq_write(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
   uint32_t mb_tmo, bool cascaded_req,
   struct csio_iq_params *iq_params,
   void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct fw_iq_cmd *cmdp = (struct fw_iq_cmd *)(mbp->mb);

 uint32_t iq_start_stop = (iq_params->iq_start) ?
     FW_IQ_CMD_IQSTART_F :
     FW_IQ_CMD_IQSTOP_F;
 int relaxed = !(hw->flags & CSIO_HWF_ROOT_NO_RELAXED_ORDERING);






 if (!cascaded_req)
  CSIO_INIT_MBP(mbp, cmdp, mb_tmo, priv, cbfn, 1);

 cmdp->op_to_vfn |= htonl(FW_CMD_OP_V(FW_IQ_CMD) |
    FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
    FW_IQ_CMD_PFN_V(iq_params->pfn) |
    FW_IQ_CMD_VFN_V(iq_params->vfn));
 cmdp->alloc_to_len16 |= htonl(iq_start_stop |
    FW_CMD_LEN16_V(sizeof(*cmdp) / 16));
 cmdp->iqid |= htons(iq_params->iqid);
 cmdp->fl0id |= htons(iq_params->fl0id);
 cmdp->fl1id |= htons(iq_params->fl1id);
 cmdp->type_to_iqandstindex |= htonl(
   FW_IQ_CMD_IQANDST_V(iq_params->iqandst) |
   FW_IQ_CMD_IQANUS_V(iq_params->iqanus) |
   FW_IQ_CMD_IQANUD_V(iq_params->iqanud) |
   FW_IQ_CMD_IQANDSTINDEX_V(iq_params->iqandstindex));
 cmdp->iqdroprss_to_iqesize |= htons(
   FW_IQ_CMD_IQPCIECH_V(iq_params->iqpciech) |
   FW_IQ_CMD_IQDCAEN_V(iq_params->iqdcaen) |
   FW_IQ_CMD_IQDCACPU_V(iq_params->iqdcacpu) |
   FW_IQ_CMD_IQINTCNTTHRESH_V(iq_params->iqintcntthresh) |
   FW_IQ_CMD_IQCPRIO_V(iq_params->iqcprio) |
   FW_IQ_CMD_IQESIZE_V(iq_params->iqesize));

 cmdp->iqsize |= htons(iq_params->iqsize);
 cmdp->iqaddr |= cpu_to_be64(iq_params->iqaddr);

 if (iq_params->type == 0) {
  cmdp->iqns_to_fl0congen |= htonl(
   FW_IQ_CMD_IQFLINTIQHSEN_V(iq_params->iqflintiqhsen)|
   FW_IQ_CMD_IQFLINTCONGEN_V(iq_params->iqflintcongen));
 }

 if (iq_params->fl0size && iq_params->fl0addr &&
     (iq_params->fl0id != 0xFFFF)) {

  cmdp->iqns_to_fl0congen |= htonl(
   FW_IQ_CMD_FL0HOSTFCMODE_V(iq_params->fl0hostfcmode)|
   FW_IQ_CMD_FL0CPRIO_V(iq_params->fl0cprio) |
   FW_IQ_CMD_FL0FETCHRO_V(relaxed) |
   FW_IQ_CMD_FL0DATARO_V(relaxed) |
   FW_IQ_CMD_FL0PADEN_V(iq_params->fl0paden) |
   FW_IQ_CMD_FL0PACKEN_V(iq_params->fl0packen));
  cmdp->fl0dcaen_to_fl0cidxfthresh |= htons(
   FW_IQ_CMD_FL0DCAEN_V(iq_params->fl0dcaen) |
   FW_IQ_CMD_FL0DCACPU_V(iq_params->fl0dcacpu) |
   FW_IQ_CMD_FL0FBMIN_V(iq_params->fl0fbmin) |
   FW_IQ_CMD_FL0FBMAX_V(iq_params->fl0fbmax) |
   FW_IQ_CMD_FL0CIDXFTHRESH_V(iq_params->fl0cidxfthresh));
  cmdp->fl0size |= htons(iq_params->fl0size);
  cmdp->fl0addr |= cpu_to_be64(iq_params->fl0addr);
 }
}
