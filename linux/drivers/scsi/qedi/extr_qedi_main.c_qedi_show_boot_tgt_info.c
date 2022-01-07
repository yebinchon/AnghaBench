
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u32 ;
struct qedi_ctx {int dbg_ctx; } ;
struct TYPE_17__ {int ctrl_flags; } ;
struct TYPE_15__ {char* byte; } ;
struct TYPE_14__ {char* byte; } ;
struct TYPE_16__ {TYPE_2__ chap_password; TYPE_1__ chap_name; } ;
struct nvm_iscsi_block {TYPE_11__* target; TYPE_4__ generic; TYPE_3__ initiator; int id; } ;
typedef int ssize_t ;
typedef enum qedi_nvm_tgts { ____Placeholder_qedi_nvm_tgts } qedi_nvm_tgts ;
struct TYPE_22__ {int byte; } ;
struct TYPE_21__ {int byte; } ;
struct TYPE_20__ {char* byte; } ;
struct TYPE_19__ {char* byte; } ;
struct TYPE_18__ {char* byte; } ;
struct TYPE_12__ {int* value; } ;
struct TYPE_13__ {int ctrl_flags; TYPE_10__ lun; int generic_cont0; TYPE_9__ ipv4_addr; TYPE_8__ ipv6_addr; TYPE_7__ target_name; TYPE_6__ chap_password; TYPE_5__ chap_name; } ;


 int GET_FIELD2 (int ,int ) ;
 int IPV4_LEN ;
 int IPV6_LEN ;
 int NVM_ISCSI_CFG_BLK_MAPPED_PF_ID ;
 char* NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN ;
 int NVM_ISCSI_CFG_GEN_CHAP_ENABLED ;
 int NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED ;
 int NVM_ISCSI_CFG_GEN_IPV6_ENABLED ;
 char* NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN ;
 int NVM_ISCSI_CFG_TARGET_ENABLED ;
 int NVM_ISCSI_CFG_TARGET_TCP_PORT ;
 int QEDI_INFO (int *,int ,char*,...) ;
 int QEDI_LOG_EVT ;
 int SYSFS_FLAG_FW_SEL_BOOT ;
 struct nvm_iscsi_block* qedi_get_nvram_block (struct qedi_ctx*) ;
 int snprintf (char*,int,char*,...) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static ssize_t
qedi_show_boot_tgt_info(struct qedi_ctx *qedi, int type,
   char *buf, enum qedi_nvm_tgts idx)
{
 int rc = 1;
 u32 ctrl_flags, ipv6_en, chap_en, mchap_en, ip_len;
 struct nvm_iscsi_block *block;
 char *chap_name, *chap_secret;
 char *mchap_name, *mchap_secret;

 block = qedi_get_nvram_block(qedi);
 if (!block)
  goto exit_show_tgt_info;

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_EVT,
    "Port:%d, tgt_idx:%d\n",
    GET_FIELD2(block->id, NVM_ISCSI_CFG_BLK_MAPPED_PF_ID), idx);

 ctrl_flags = block->target[idx].ctrl_flags &
       NVM_ISCSI_CFG_TARGET_ENABLED;

 if (!ctrl_flags) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_EVT,
     "Target disabled\n");
  goto exit_show_tgt_info;
 }

 ipv6_en = block->generic.ctrl_flags &
    NVM_ISCSI_CFG_GEN_IPV6_ENABLED;
 ip_len = ipv6_en ? IPV6_LEN : IPV4_LEN;
 chap_en = block->generic.ctrl_flags &
    NVM_ISCSI_CFG_GEN_CHAP_ENABLED;
 chap_name = chap_en ? block->initiator.chap_name.byte : ((void*)0);
 chap_secret = chap_en ? block->initiator.chap_password.byte : ((void*)0);

 mchap_en = block->generic.ctrl_flags &
    NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED;
 mchap_name = mchap_en ? block->target[idx].chap_name.byte : ((void*)0);
 mchap_secret = mchap_en ? block->target[idx].chap_password.byte : ((void*)0);

 switch (type) {
 case 132:
  rc = sprintf(buf, "%.*s\n", NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN,
        block->target[idx].target_name.byte);
  break;
 case 134:
  if (ipv6_en)
   rc = snprintf(buf, ip_len, "%pI6\n",
          block->target[idx].ipv6_addr.byte);
  else
   rc = snprintf(buf, ip_len, "%pI4\n",
          block->target[idx].ipv4_addr.byte);
  break;
 case 130:
  rc = snprintf(buf, 12, "%d\n",
         GET_FIELD2(block->target[idx].generic_cont0,
      NVM_ISCSI_CFG_TARGET_TCP_PORT));
  break;
 case 133:
  rc = snprintf(buf, 22, "%.*d\n",
         block->target[idx].lun.value[1],
         block->target[idx].lun.value[0]);
  break;
 case 137:
  rc = sprintf(buf, "%.*s\n", NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN,
        chap_name);
  break;
 case 136:
  rc = sprintf(buf, "%.*s\n", NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN,
        chap_secret);
  break;
 case 129:
  rc = sprintf(buf, "%.*s\n", NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN,
        mchap_name);
  break;
 case 128:
  rc = sprintf(buf, "%.*s\n", NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN,
        mchap_secret);
  break;
 case 135:
  rc = snprintf(buf, 3, "%hhd\n", SYSFS_FLAG_FW_SEL_BOOT);
  break;
 case 131:
  rc = snprintf(buf, 3, "0\n");
  break;
 default:
  rc = 0;
  break;
 }

exit_show_tgt_info:
 return rc;
}
