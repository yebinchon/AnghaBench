
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ enabled; int diag_dl; int mdm_dl; int mdm_ul; } ;
struct TYPE_7__ {scalar_t__ signature; scalar_t__ version; TYPE_1__ toggle; } ;
struct nozomi {int last_ier; int reg_fcr; TYPE_4__* port; TYPE_3__ config_table; TYPE_2__* pdev; int state; int reg_ier; scalar_t__ base_addr; } ;
struct ctrl_ul {int dummy; } ;
struct ctrl_dl {int dummy; } ;
struct config_table {int dummy; } ;
struct TYPE_8__ {int * ul_addr; int ctrl_ul; int ctrl_dl; int toggle_dl; int toggle_ul; } ;
struct TYPE_6__ {int dev; } ;


 size_t CH_A ;
 size_t CH_B ;
 int CTRL_DL ;
 int DBG1 (char*,...) ;
 int DIAG_DL ;
 int MAX_PORT ;
 int MDM_DL ;
 int MDM_UL ;
 scalar_t__ NOZOMI_CONFIG_MAGIC ;
 int NOZOMI_STATE_ALLOCATED ;
 size_t PORT_DIAG ;
 size_t PORT_MDM ;
 scalar_t__ TOGGLE_VALID ;
 int dev_err (int *,char*,scalar_t__,scalar_t__) ;
 int dev_info (int *,char*,...) ;
 int dump_table (struct nozomi*) ;
 int memset (int *,int ,int) ;
 int nozomi_setup_memory (struct nozomi*) ;
 int read_mem32 (scalar_t__*,scalar_t__,int) ;
 int write_mem32 (int ,scalar_t__*,int) ;
 int writew (int,int ) ;

__attribute__((used)) static int nozomi_read_config_table(struct nozomi *dc)
{
 read_mem32((u32 *) &dc->config_table, dc->base_addr + 0,
      sizeof(struct config_table));

 if (dc->config_table.signature != NOZOMI_CONFIG_MAGIC) {
  dev_err(&dc->pdev->dev, "ConfigTable Bad! 0x%08X != 0x%08X\n",
   dc->config_table.signature, NOZOMI_CONFIG_MAGIC);
  return 0;
 }

 if ((dc->config_table.version == 0)
     || (dc->config_table.toggle.enabled == TOGGLE_VALID)) {
  int i;
  DBG1("Second phase, configuring card");

  nozomi_setup_memory(dc);

  dc->port[PORT_MDM].toggle_ul = dc->config_table.toggle.mdm_ul;
  dc->port[PORT_MDM].toggle_dl = dc->config_table.toggle.mdm_dl;
  dc->port[PORT_DIAG].toggle_dl = dc->config_table.toggle.diag_dl;
  DBG1("toggle ports: MDM UL:%d MDM DL:%d, DIAG DL:%d",
     dc->port[PORT_MDM].toggle_ul,
     dc->port[PORT_MDM].toggle_dl, dc->port[PORT_DIAG].toggle_dl);

  dump_table(dc);

  for (i = PORT_MDM; i < MAX_PORT; i++) {
   memset(&dc->port[i].ctrl_dl, 0, sizeof(struct ctrl_dl));
   memset(&dc->port[i].ctrl_ul, 0, sizeof(struct ctrl_ul));
  }


  dc->last_ier = dc->last_ier | CTRL_DL;
  writew(dc->last_ier, dc->reg_ier);

  dc->state = NOZOMI_STATE_ALLOCATED;
  dev_info(&dc->pdev->dev, "Initialization OK!\n");
  return 1;
 }

 if ((dc->config_table.version > 0)
     && (dc->config_table.toggle.enabled != TOGGLE_VALID)) {
  u32 offset = 0;
  DBG1("First phase: pushing upload buffers, clearing download");

  dev_info(&dc->pdev->dev, "Version of card: %d\n",
    dc->config_table.version);


  nozomi_setup_memory(dc);







  write_mem32(dc->port[PORT_MDM].ul_addr[CH_A],
   (u32 *) &offset, 4);
  write_mem32(dc->port[PORT_MDM].ul_addr[CH_B],
   (u32 *) &offset, 4);

  writew(MDM_UL | DIAG_DL | MDM_DL, dc->reg_fcr);

  DBG1("First phase done");
 }

 return 1;
}
