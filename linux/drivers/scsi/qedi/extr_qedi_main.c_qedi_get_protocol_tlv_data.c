
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qedi_ctx {int dbg_ctx; int ll2_mtu; int stats_lock; int cdev; } ;
struct qed_mfw_tlv_iscsi {int rx_frames_set; int rx_bytes_set; int tx_frames_set; int tx_bytes_set; int frame_size_set; int auth_method_set; int auth_method; int tx_desc_size_set; int rx_desc_size_set; int rx_desc_size; int tx_desc_size; int frame_size; int tx_bytes; int tx_frames; int rx_bytes; int rx_frames; } ;
struct qed_iscsi_stats {int iscsi_tx_bytes_cnt; int iscsi_tx_packet_cnt; int iscsi_rx_bytes_cnt; int iscsi_rx_packet_cnt; } ;
struct TYPE_3__ {int ctrl_flags; } ;
struct nvm_iscsi_block {TYPE_1__ generic; } ;
struct TYPE_4__ {int (* get_stats ) (int ,struct qed_iscsi_stats*) ;} ;


 int GFP_KERNEL ;
 int NVM_ISCSI_CFG_GEN_CHAP_ENABLED ;
 int NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED ;
 int QEDI_CQ_SIZE ;
 int QEDI_ERR (int *,char*) ;
 int QEDI_INFO (int *,int ,char*) ;
 int QEDI_LOG_INFO ;
 int QEDI_SQ_SIZE ;
 int kfree (struct qed_iscsi_stats*) ;
 struct qed_iscsi_stats* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qedi_find_boot_info (struct qedi_ctx*,struct qed_mfw_tlv_iscsi*,struct nvm_iscsi_block*) ;
 struct nvm_iscsi_block* qedi_get_nvram_block (struct qedi_ctx*) ;
 TYPE_2__* qedi_ops ;
 int stub1 (int ,struct qed_iscsi_stats*) ;

__attribute__((used)) static void qedi_get_protocol_tlv_data(void *dev, void *data)
{
 struct qed_mfw_tlv_iscsi *iscsi = data;
 struct qed_iscsi_stats *fw_iscsi_stats;
 struct nvm_iscsi_block *block = ((void*)0);
 u32 chap_en = 0, mchap_en = 0;
 struct qedi_ctx *qedi = dev;
 int rval = 0;

 fw_iscsi_stats = kmalloc(sizeof(*fw_iscsi_stats), GFP_KERNEL);
 if (!fw_iscsi_stats) {
  QEDI_ERR(&qedi->dbg_ctx,
    "Could not allocate memory for fw_iscsi_stats.\n");
  goto exit_get_data;
 }

 mutex_lock(&qedi->stats_lock);

 qedi_ops->get_stats(qedi->cdev, fw_iscsi_stats);
 mutex_unlock(&qedi->stats_lock);

 iscsi->rx_frames_set = 1;
 iscsi->rx_frames = fw_iscsi_stats->iscsi_rx_packet_cnt;
 iscsi->rx_bytes_set = 1;
 iscsi->rx_bytes = fw_iscsi_stats->iscsi_rx_bytes_cnt;
 iscsi->tx_frames_set = 1;
 iscsi->tx_frames = fw_iscsi_stats->iscsi_tx_packet_cnt;
 iscsi->tx_bytes_set = 1;
 iscsi->tx_bytes = fw_iscsi_stats->iscsi_tx_bytes_cnt;
 iscsi->frame_size_set = 1;
 iscsi->frame_size = qedi->ll2_mtu;
 block = qedi_get_nvram_block(qedi);
 if (block) {
  chap_en = !!(block->generic.ctrl_flags &
        NVM_ISCSI_CFG_GEN_CHAP_ENABLED);
  mchap_en = !!(block->generic.ctrl_flags &
         NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED);

  iscsi->auth_method_set = (chap_en || mchap_en) ? 1 : 0;
  iscsi->auth_method = 1;
  if (chap_en)
   iscsi->auth_method = 2;
  if (mchap_en)
   iscsi->auth_method = 3;

  iscsi->tx_desc_size_set = 1;
  iscsi->tx_desc_size = QEDI_SQ_SIZE;
  iscsi->rx_desc_size_set = 1;
  iscsi->rx_desc_size = QEDI_CQ_SIZE;


  rval = qedi_find_boot_info(qedi, iscsi, block);
  if (rval)
   QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
      "Boot target not set");
 }

 kfree(fw_iscsi_stats);
exit_get_data:
 return;
}
