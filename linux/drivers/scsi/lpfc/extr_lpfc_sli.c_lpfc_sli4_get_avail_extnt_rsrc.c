
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct lpfc_sli4_cfg_mhdr {int dummy; } ;
struct TYPE_21__ {int rsp; } ;
struct TYPE_19__ {int response; } ;
struct TYPE_20__ {TYPE_5__ cfg_shdr; } ;
struct lpfc_mbx_get_rsrc_extent_info {TYPE_7__ u; TYPE_6__ header; } ;
struct TYPE_15__ {int intr_enable; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_1__ sli4_hba; } ;
struct TYPE_16__ {struct lpfc_mbx_get_rsrc_extent_info rsrc_extent_info; } ;
struct TYPE_17__ {TYPE_2__ un; } ;
struct TYPE_18__ {TYPE_3__ mqe; } ;
struct TYPE_22__ {TYPE_4__ u; } ;
typedef TYPE_8__ LPFC_MBOXQ_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int LPFC_MBOX_OPCODE_GET_RSRC_EXTENT_INFO ;
 int LPFC_MBOX_SUBSYSTEM_COMMON ;
 int LPFC_SLI4_MBX_EMBED ;
 int MBX_POLL ;
 scalar_t__ bf_get (int ,int *) ;
 int lpfc_mbox_hdr_add_status ;
 int lpfc_mbox_hdr_status ;
 int lpfc_mbox_tmo_val (struct lpfc_hba*,TYPE_8__*) ;
 int lpfc_mbx_get_rsrc_extent_info_cnt ;
 int lpfc_mbx_get_rsrc_extent_info_size ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,scalar_t__,scalar_t__,...) ;
 int lpfc_sli4_config (struct lpfc_hba*,TYPE_8__*,int ,int ,int,int ) ;
 int lpfc_sli4_mbox_rsrc_extent (struct lpfc_hba*,TYPE_8__*,int ,scalar_t__,int ) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_8__*,int ) ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,TYPE_8__*,int) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_8__*,int ) ;
 scalar_t__ unlikely (int) ;

int
lpfc_sli4_get_avail_extnt_rsrc(struct lpfc_hba *phba, uint16_t type,
          uint16_t *extnt_count, uint16_t *extnt_size)
{
 int rc = 0;
 uint32_t length;
 uint32_t mbox_tmo;
 struct lpfc_mbx_get_rsrc_extent_info *rsrc_info;
 LPFC_MBOXQ_t *mbox;

 mbox = (LPFC_MBOXQ_t *) mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox)
  return -ENOMEM;


 length = (sizeof(struct lpfc_mbx_get_rsrc_extent_info) -
    sizeof(struct lpfc_sli4_cfg_mhdr));
 lpfc_sli4_config(phba, mbox, LPFC_MBOX_SUBSYSTEM_COMMON,
    LPFC_MBOX_OPCODE_GET_RSRC_EXTENT_INFO,
    length, LPFC_SLI4_MBX_EMBED);


 rc = lpfc_sli4_mbox_rsrc_extent(phba, mbox, 0, type,
     LPFC_SLI4_MBX_EMBED);
 if (unlikely(rc)) {
  rc = -EIO;
  goto err_exit;
 }

 if (!phba->sli4_hba.intr_enable)
  rc = lpfc_sli_issue_mbox(phba, mbox, MBX_POLL);
 else {
  mbox_tmo = lpfc_mbox_tmo_val(phba, mbox);
  rc = lpfc_sli_issue_mbox_wait(phba, mbox, mbox_tmo);
 }
 if (unlikely(rc)) {
  rc = -EIO;
  goto err_exit;
 }

 rsrc_info = &mbox->u.mqe.un.rsrc_extent_info;
 if (bf_get(lpfc_mbox_hdr_status,
     &rsrc_info->header.cfg_shdr.response)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX | LOG_INIT,
    "2930 Failed to get resource extents "
    "Status 0x%x Add'l Status 0x%x\n",
    bf_get(lpfc_mbox_hdr_status,
           &rsrc_info->header.cfg_shdr.response),
    bf_get(lpfc_mbox_hdr_add_status,
           &rsrc_info->header.cfg_shdr.response));
  rc = -EIO;
  goto err_exit;
 }

 *extnt_count = bf_get(lpfc_mbx_get_rsrc_extent_info_cnt,
         &rsrc_info->u.rsp);
 *extnt_size = bf_get(lpfc_mbx_get_rsrc_extent_info_size,
        &rsrc_info->u.rsp);

 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "3162 Retrieved extents type-%d from port: count:%d, "
   "size:%d\n", type, *extnt_count, *extnt_size);

err_exit:
 mempool_free(mbox, phba->mbox_mem_pool);
 return rc;
}
