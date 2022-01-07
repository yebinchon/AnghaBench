
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int abs_pf_id; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct qedi_ctx {TYPE_4__* iscsi_image; TYPE_2__ dev_info; } ;
struct nvm_iscsi_block {int id; } ;
struct TYPE_7__ {struct nvm_iscsi_block* block; } ;
struct TYPE_8__ {TYPE_3__ iscsi_cfg; } ;


 int NUM_OF_ISCSI_PF_SUPPORTED ;
 int NVM_ISCSI_CFG_BLK_CTRL_FLAG_IS_NOT_EMPTY ;
 int NVM_ISCSI_CFG_BLK_CTRL_FLAG_MASK ;
 int NVM_ISCSI_CFG_BLK_CTRL_FLAG_OFFSET ;
 int NVM_ISCSI_CFG_BLK_CTRL_FLAG_PF_MAPPED ;
 int NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_MASK ;
 int NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_OFFSET ;

__attribute__((used)) static struct nvm_iscsi_block *
qedi_get_nvram_block(struct qedi_ctx *qedi)
{
 int i;
 u8 pf;
 u32 flags;
 struct nvm_iscsi_block *block;

 pf = qedi->dev_info.common.abs_pf_id;
 block = &qedi->iscsi_image->iscsi_cfg.block[0];
 for (i = 0; i < NUM_OF_ISCSI_PF_SUPPORTED; i++, block++) {
  flags = ((block->id) & NVM_ISCSI_CFG_BLK_CTRL_FLAG_MASK) >>
   NVM_ISCSI_CFG_BLK_CTRL_FLAG_OFFSET;
  if (flags & (NVM_ISCSI_CFG_BLK_CTRL_FLAG_IS_NOT_EMPTY |
    NVM_ISCSI_CFG_BLK_CTRL_FLAG_PF_MAPPED) &&
   (pf == (block->id & NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_MASK)
    >> NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_OFFSET))
   return block;
 }
 return ((void*)0);
}
