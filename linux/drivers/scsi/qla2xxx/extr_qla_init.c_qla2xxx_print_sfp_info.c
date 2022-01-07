
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sff_8247_a0 {char* vendor_name; char* vendor_pn; int length_km; int length_100m; int length_50um_10m; int length_62um_10m; int length_om4_10m; int length_om3_10m; } ;
struct scsi_qla_host {TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ sfp_data; } ;


 int FC_LL_I ;
 int FC_LL_L ;
 int FC_LL_LC ;
 int FC_LL_M ;
 int FC_LL_S ;
 int FC_LL_SA ;
 int FC_LL_VL ;
 int FC_MED_M5 ;
 int FC_MED_M6 ;
 int FC_MED_MI ;
 int FC_MED_SM ;
 int FC_MED_TP ;
 int FC_MED_TV ;
 int FC_MED_TW ;
 int FC_TEC_LL ;
 int FC_TEC_SL ;
 int FC_TEC_SN ;
 int PRINT_FIELD (int ,int ,char*) ;
 scalar_t__ SFF_PART_NAME_LEN ;
 scalar_t__ SFF_VEN_NAME_LEN ;
 int STR_LEN ;
 int fc_ll_cc7 ;
 int fc_med_cc9 ;
 int fc_tec_cc8 ;
 int memset (int*,int ,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_dbg_init ;
 int snprintf (int*,scalar_t__,char*) ;

__attribute__((used)) static void qla2xxx_print_sfp_info(struct scsi_qla_host *vha)
{

 struct sff_8247_a0 *a0 = (struct sff_8247_a0 *)vha->hw->sfp_data;
 u8 str[64], *ptr, p;
 int leftover, len;

 memset(str, 0, 64);
 snprintf(str, SFF_VEN_NAME_LEN+1, a0->vendor_name);
 ql_dbg(ql_dbg_init, vha, 0x015a,
     "SFP MFG Name: %s\n", str);

 memset(str, 0, 64);
 snprintf(str, SFF_PART_NAME_LEN+1, a0->vendor_pn);
 ql_dbg(ql_dbg_init, vha, 0x015c,
     "SFP Part Name: %s\n", str);


 memset(str, 0, 64);
 ptr = str;
 leftover = 64;
 p = len = 0;
 PRINT_FIELD(fc_med_cc9, FC_MED_TW, "Twin AX");
 PRINT_FIELD(fc_med_cc9, FC_MED_TP, "Twisted Pair");
 PRINT_FIELD(fc_med_cc9, FC_MED_MI, "Min Coax");
 PRINT_FIELD(fc_med_cc9, FC_MED_TV, "Video Coax");
 PRINT_FIELD(fc_med_cc9, FC_MED_M6, "MultiMode 62.5um");
 PRINT_FIELD(fc_med_cc9, FC_MED_M5, "MultiMode 50um");
 PRINT_FIELD(fc_med_cc9, FC_MED_SM, "SingleMode");
 ql_dbg(ql_dbg_init, vha, 0x0160,
     "SFP Media: %s\n", str);


 memset(str, 0, 64);
 ptr = str;
 leftover = 64;
 p = len = 0;
 PRINT_FIELD(fc_ll_cc7, FC_LL_VL, "Very Long");
 PRINT_FIELD(fc_ll_cc7, FC_LL_S, "Short");
 PRINT_FIELD(fc_ll_cc7, FC_LL_I, "Intermediate");
 PRINT_FIELD(fc_ll_cc7, FC_LL_L, "Long");
 PRINT_FIELD(fc_ll_cc7, FC_LL_M, "Medium");
 ql_dbg(ql_dbg_init, vha, 0x0196,
     "SFP Link Length: %s\n", str);

 memset(str, 0, 64);
 ptr = str;
 leftover = 64;
 p = len = 0;
 PRINT_FIELD(fc_ll_cc7, FC_LL_SA, "Short Wave (SA)");
 PRINT_FIELD(fc_ll_cc7, FC_LL_LC, "Long Wave(LC)");
 PRINT_FIELD(fc_tec_cc8, FC_TEC_SN, "Short Wave (SN)");
 PRINT_FIELD(fc_tec_cc8, FC_TEC_SL, "Short Wave (SL)");
 PRINT_FIELD(fc_tec_cc8, FC_TEC_LL, "Long Wave (LL)");
 ql_dbg(ql_dbg_init, vha, 0x016e,
     "SFP FC Link Tech: %s\n", str);

 if (a0->length_km)
  ql_dbg(ql_dbg_init, vha, 0x016f,
      "SFP Distant: %d km\n", a0->length_km);
 if (a0->length_100m)
  ql_dbg(ql_dbg_init, vha, 0x0170,
      "SFP Distant: %d m\n", a0->length_100m*100);
 if (a0->length_50um_10m)
  ql_dbg(ql_dbg_init, vha, 0x0189,
      "SFP Distant (WL=50um): %d m\n", a0->length_50um_10m * 10);
 if (a0->length_62um_10m)
  ql_dbg(ql_dbg_init, vha, 0x018a,
    "SFP Distant (WL=62.5um): %d m\n", a0->length_62um_10m * 10);
 if (a0->length_om4_10m)
  ql_dbg(ql_dbg_init, vha, 0x0194,
      "SFP Distant (OM4): %d m\n", a0->length_om4_10m * 10);
 if (a0->length_om3_10m)
  ql_dbg(ql_dbg_init, vha, 0x0195,
      "SFP Distant (OM3): %d m\n", a0->length_om3_10m * 10);
}
