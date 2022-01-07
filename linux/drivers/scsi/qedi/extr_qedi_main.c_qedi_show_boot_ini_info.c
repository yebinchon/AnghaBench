
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_ctx {int dummy; } ;
struct TYPE_2__ {int byte; } ;
struct nvm_iscsi_initiator {TYPE_1__ initiator_name; } ;
struct nvm_iscsi_block {struct nvm_iscsi_initiator initiator; } ;
typedef int ssize_t ;



 char* NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN ;
 struct nvm_iscsi_block* qedi_get_nvram_block (struct qedi_ctx*) ;
 int sprintf (char*,char*,char*,int ) ;

__attribute__((used)) static ssize_t qedi_show_boot_ini_info(void *data, int type, char *buf)
{
 struct qedi_ctx *qedi = data;
 struct nvm_iscsi_initiator *initiator;
 int rc;
 struct nvm_iscsi_block *block;

 block = qedi_get_nvram_block(qedi);
 if (!block)
  return 0;

 initiator = &block->initiator;

 switch (type) {
 case 128:
  rc = sprintf(buf, "%.*s\n", NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN,
        initiator->initiator_name.byte);
  break;
 default:
  rc = 0;
  break;
 }
 return rc;
}
