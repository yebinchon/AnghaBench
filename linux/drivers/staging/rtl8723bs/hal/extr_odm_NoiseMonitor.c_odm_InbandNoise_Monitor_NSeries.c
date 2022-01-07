
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct noise_level {size_t* value; int* sval; int* valid_cnt; int* sum; } ;
typedef int s8 ;
typedef size_t s32 ;
typedef size_t s16 ;
struct TYPE_6__ {size_t noise_all; int* noise; } ;
struct TYPE_7__ {scalar_t__ RFType; TYPE_1__ noise_level; int Adapter; } ;
typedef TYPE_2__* PDM_ODM_T ;


 int BIT25 ;
 size_t BIT7 ;
 scalar_t__ ODM_1T2R ;
 scalar_t__ ODM_2T2R ;
 int ODM_COMP_COMMON ;
 int ODM_DBG_LOUD ;
 int ODM_PAUSE_DIG ;
 int ODM_RESUME_DIG ;
 size_t ODM_RF_PATH_A ;
 size_t ODM_RF_PATH_B ;
 int ODM_RT_TRACE (TYPE_2__*,int ,int ,char*) ;
 int PHY_QueryBBReg (int ,int,int ) ;
 int PHY_SetBBReg (int ,int ,int ,int) ;
 int ValidCnt ;
 int Valid_Max ;
 int Valid_Min ;
 int bMaskByte0 ;
 int bMaskDWord ;
 int jiffies ;
 int jiffies_to_msecs (int) ;
 int memset (struct noise_level*,int ,int) ;
 int odm_PauseDIG (TYPE_2__*,int ,size_t) ;
 int rFPGA0_TxGainStage ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XBAGCCore1 ;

__attribute__((used)) static s16 odm_InbandNoise_Monitor_NSeries(
 PDM_ODM_T pDM_Odm,
 u8 bPauseDIG,
 u8 IGIValue,
 u32 max_time
)
{
 u32 tmp4b;
 u8 max_rf_path = 0, rf_path;
 u8 reg_c50, reg_c58, valid_done = 0;
 struct noise_level noise_data;
 u32 start = 0, func_start = 0, func_end = 0;

 func_start = jiffies;
 pDM_Odm->noise_level.noise_all = 0;

 if ((pDM_Odm->RFType == ODM_1T2R) || (pDM_Odm->RFType == ODM_2T2R))
  max_rf_path = 2;
 else
  max_rf_path = 1;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_DebugControlInbandNoise_Nseries() ==>\n"));

 memset(&noise_data, 0, sizeof(struct noise_level));





 if (bPauseDIG)
  odm_PauseDIG(pDM_Odm, ODM_PAUSE_DIG, IGIValue);
 start = jiffies;
 while (1) {


  PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_TxGainStage, BIT25, 1);


  tmp4b = PHY_QueryBBReg(pDM_Odm->Adapter, 0x8f8, bMaskDWord);
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("Noise Floor Report (0x8f8) = 0x%08x\n", tmp4b));






  PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_TxGainStage, BIT25, 0);

  noise_data.value[ODM_RF_PATH_A] = (u8)(tmp4b&0xff);
  noise_data.value[ODM_RF_PATH_B] = (u8)((tmp4b&0xff00)>>8);

  ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("value_a = 0x%x(%d), value_b = 0x%x(%d)\n",
   noise_data.value[ODM_RF_PATH_A], noise_data.value[ODM_RF_PATH_A], noise_data.value[ODM_RF_PATH_B], noise_data.value[ODM_RF_PATH_B]));

  for (rf_path = ODM_RF_PATH_A; rf_path < max_rf_path; rf_path++) {
   noise_data.sval[rf_path] = (s8)noise_data.value[rf_path];
   noise_data.sval[rf_path] /= 2;
  }


  ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("sval_a = %d, sval_b = %d\n",
   noise_data.sval[ODM_RF_PATH_A], noise_data.sval[ODM_RF_PATH_B]));



  for (rf_path = ODM_RF_PATH_A; rf_path < max_rf_path; rf_path++) {
   if ((noise_data.valid_cnt[rf_path] < ValidCnt) && (noise_data.sval[rf_path] < Valid_Max && noise_data.sval[rf_path] >= Valid_Min)) {
    noise_data.valid_cnt[rf_path]++;
    noise_data.sum[rf_path] += noise_data.sval[rf_path];
    ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("RF_Path:%d Valid sval = %d\n", rf_path, noise_data.sval[rf_path]));
    ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("Sum of sval = %d,\n", noise_data.sum[rf_path]));
    if (noise_data.valid_cnt[rf_path] == ValidCnt) {
     valid_done++;
     ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("After divided, RF_Path:%d , sum = %d\n", rf_path, noise_data.sum[rf_path]));
    }

   }

  }


  if ((valid_done == max_rf_path) || (jiffies_to_msecs(jiffies - start) > max_time)) {
   for (rf_path = ODM_RF_PATH_A; rf_path < max_rf_path; rf_path++) {

    if (noise_data.valid_cnt[rf_path])
     noise_data.sum[rf_path] /= noise_data.valid_cnt[rf_path];
    else
     noise_data.sum[rf_path] = 0;
   }
   break;
  }
 }
 reg_c50 = (s32)PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XAAGCCore1, bMaskByte0);
 reg_c50 &= ~BIT7;
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("0x%x = 0x%02x(%d)\n", rOFDM0_XAAGCCore1, reg_c50, reg_c50));
 pDM_Odm->noise_level.noise[ODM_RF_PATH_A] = -110 + reg_c50 + noise_data.sum[ODM_RF_PATH_A];
 pDM_Odm->noise_level.noise_all += pDM_Odm->noise_level.noise[ODM_RF_PATH_A];

 if (max_rf_path == 2) {
  reg_c58 = (s32)PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XBAGCCore1, bMaskByte0);
  reg_c58 &= ~BIT7;
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("0x%x = 0x%02x(%d)\n", rOFDM0_XBAGCCore1, reg_c58, reg_c58));
  pDM_Odm->noise_level.noise[ODM_RF_PATH_B] = -110 + reg_c58 + noise_data.sum[ODM_RF_PATH_B];
  pDM_Odm->noise_level.noise_all += pDM_Odm->noise_level.noise[ODM_RF_PATH_B];
 }
 pDM_Odm->noise_level.noise_all /= max_rf_path;

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_COMMON,
  ODM_DBG_LOUD,
  (
   "noise_a = %d, noise_b = %d\n",
   pDM_Odm->noise_level.noise[ODM_RF_PATH_A],
   pDM_Odm->noise_level.noise[ODM_RF_PATH_B]
  )
 );




 if (bPauseDIG)
  odm_PauseDIG(pDM_Odm, ODM_RESUME_DIG, IGIValue);

 func_end = jiffies_to_msecs(jiffies - func_start);





 ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_DebugControlInbandNoise_Nseries() <==\n"));
 return pDM_Odm->noise_level.noise_all;

}
