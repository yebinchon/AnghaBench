
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int diag_dl; int mdm_dl; int mdm_ul; int enabled; } ;
struct TYPE_4__ {int ul_ctrl_len; int ul_app2_len; int ul_app1_len; int ul_diag_len; int ul_mdm_len2; int ul_mdm_len1; int ul_start; int dl_ctrl_len; int dl_app2_len; int dl_app1_len; int dl_diag_len2; int dl_diag_len1; int dl_mdm_len2; int dl_mdm_len1; int dl_start; TYPE_1__ toggle; int product_information; int version; int signature; } ;
struct nozomi {TYPE_2__ config_table; } ;


 int DBG3 (char*,int ,...) ;

__attribute__((used)) static void dump_table(const struct nozomi *dc)
{
 DBG3("signature: 0x%08X", dc->config_table.signature);
 DBG3("version: 0x%04X", dc->config_table.version);
 DBG3("product_information: 0x%04X", dc->config_table.product_information);

 DBG3("toggle enabled: %d", dc->config_table.toggle.enabled);
 DBG3("toggle up_mdm: %d", dc->config_table.toggle.mdm_ul);
 DBG3("toggle dl_mdm: %d", dc->config_table.toggle.mdm_dl);
 DBG3("toggle dl_dbg: %d", dc->config_table.toggle.diag_dl);

 DBG3("dl_start: 0x%04X", dc->config_table.dl_start);
 DBG3("dl_mdm_len0: 0x%04X, %d", dc->config_table.dl_mdm_len1,
    dc->config_table.dl_mdm_len1);
 DBG3("dl_mdm_len1: 0x%04X, %d", dc->config_table.dl_mdm_len2,
    dc->config_table.dl_mdm_len2);
 DBG3("dl_diag_len0: 0x%04X, %d", dc->config_table.dl_diag_len1,
    dc->config_table.dl_diag_len1);
 DBG3("dl_diag_len1: 0x%04X, %d", dc->config_table.dl_diag_len2,
    dc->config_table.dl_diag_len2);
 DBG3("dl_app1_len: 0x%04X, %d", dc->config_table.dl_app1_len,
    dc->config_table.dl_app1_len);
 DBG3("dl_app2_len: 0x%04X, %d", dc->config_table.dl_app2_len,
    dc->config_table.dl_app2_len);
 DBG3("dl_ctrl_len: 0x%04X, %d", dc->config_table.dl_ctrl_len,
    dc->config_table.dl_ctrl_len);
 DBG3("ul_start: 0x%04X, %d", dc->config_table.ul_start,
    dc->config_table.ul_start);
 DBG3("ul_mdm_len[0]: 0x%04X, %d", dc->config_table.ul_mdm_len1,
    dc->config_table.ul_mdm_len1);
 DBG3("ul_mdm_len[1]: 0x%04X, %d", dc->config_table.ul_mdm_len2,
    dc->config_table.ul_mdm_len2);
 DBG3("ul_diag_len: 0x%04X, %d", dc->config_table.ul_diag_len,
    dc->config_table.ul_diag_len);
 DBG3("ul_app1_len: 0x%04X, %d", dc->config_table.ul_app1_len,
    dc->config_table.ul_app1_len);
 DBG3("ul_app2_len: 0x%04X, %d", dc->config_table.ul_app2_len,
    dc->config_table.ul_app2_len);
 DBG3("ul_ctrl_len: 0x%04X, %d", dc->config_table.ul_ctrl_len,
    dc->config_table.ul_ctrl_len);
}
