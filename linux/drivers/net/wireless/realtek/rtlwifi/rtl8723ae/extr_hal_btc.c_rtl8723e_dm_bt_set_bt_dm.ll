; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_bt_dm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_bt_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.btdm_8723 }
%struct.btdm_8723 = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }

@hal_coex_8723 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HW_VAR_FW_PSMODE_STATUS = common dso_local global i32 0, align 4
@HW_VAR_FWLPS_RF_ON = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"[BTCoex], the same coexist setting, return!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"[BTCoex], UPDATE TO NEW COEX SETTING!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"[BTCoex], original/new bAllOff=0x%x/ 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[BTCoex], original/new agc_table_en=0x%x/ 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"[BTCoex], original/new adc_back_off_on=0x%x/ 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"[BTCoex], original/new b2_ant_hid_en=0x%x/ 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"[BTCoex], original/new bLowPenaltyRateAdaptive=0x%x/ 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"[BTCoex], original/new bRfRxLpfShrink=0x%x/ 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"[BTCoex], original/new bRejectAggrePkt=0x%x/ 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"[BTCoex], original/new tdma_on=0x%x/ 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"[BTCoex], original/new tdmaAnt=0x%x/ 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"[BTCoex], original/new tdmaNav=0x%x/ 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"[BTCoex], original/new tdma_dac_swing=0x%x/ 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"[BTCoex], original/new fw_dac_swing_lvl=0x%x/ 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"[BTCoex], original/new bTraTdmaOn=0x%x/ 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"[BTCoex], original/new traTdmaAnt=0x%x/ 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"[BTCoex], original/new traTdmaNav=0x%x/ 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"[BTCoex], original/new bPsTdmaOn=0x%x/ 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"[BTCoex], original/new psTdmaByte[i]=0x%x/ 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"[BTCoex], original/new bIgnoreWlanAct=0x%x/ 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"[BTCoex], original/new bPtaOn=0x%x/ 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"[BTCoex], original/new val_0x6c0=0x%x/ 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"[BTCoex], original/new val_0x6c8=0x%x/ 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"[BTCoex], original/new val_0x6cc=0x%x/ 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"[BTCoex], original/new sw_dac_swing_on=0x%x/ 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"[BTCoex], original/new sw_dac_swing_lvl=0x%x/ 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"[BTCoex], original/new wlanActHi=0x%x/ 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"[BTCoex], original/new wlanActLo=0x%x/ 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"[BTCoex], original/new btRetryIndex=0x%x/ 0x%x\0A\00", align 1
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [45 x i8] c"[BTCoex], set to ignore wlanAct for BT OP!!\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"[BTCoex], disable all coexist mechanism !!\0A\00", align 1
@BT_TX_RATE_ADAPTIVE_LOW_PENALTY = common dso_local global i32 0, align 4
@BT_TX_RATE_ADAPTIVE_NORMAL = common dso_local global i32 0, align 4
@BT_RF_RX_LPF_CORNER_SHRINK = common dso_local global i32 0, align 4
@BT_RF_RX_LPF_CORNER_RESUME = common dso_local global i32 0, align 4
@BT_AGCTABLE_ON = common dso_local global i32 0, align 4
@BT_AGCTABLE_OFF = common dso_local global i32 0, align 4
@BT_BB_BACKOFF_ON = common dso_local global i32 0, align 4
@BT_BB_BACKOFF_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_dm_bt_set_bt_dm(%struct.ieee80211_hw* %0, %struct.btdm_8723* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.btdm_8723*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.btdm_8723*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.btdm_8723* %1, %struct.btdm_8723** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  store %struct.btdm_8723* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hal_coex_8723, i32 0, i32 0), %struct.btdm_8723** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %17, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = load i32, i32* @HW_VAR_FW_PSMODE_STATUS, align 4
  %21 = call i32 %18(%struct.ieee80211_hw* %19, i32 %20, i32* %8)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %27, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = load i32, i32* @HW_VAR_FWLPS_RF_ON, align 4
  %31 = call i32 %28(%struct.ieee80211_hw* %29, i32 %30, i32* %9)
  %32 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %33 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %34 = call i64 @memcmp(%struct.btdm_8723* %32, %struct.btdm_8723* %33, i32 120)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %38 = load i32, i32* @COMP_BT_COEXIST, align 4
  %39 = load i32, i32* @DBG_DMESG, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %644

41:                                               ; preds = %2
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %43 = load i32, i32* @COMP_BT_COEXIST, align 4
  %44 = load i32, i32* @DBG_DMESG, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %47 = load i32, i32* @COMP_BT_COEXIST, align 4
  %48 = load i32, i32* @DBG_DMESG, align 4
  %49 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %50 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %49, i32 0, i32 27
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %53 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %52, i32 0, i32 27
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %57 = load i32, i32* @COMP_BT_COEXIST, align 4
  %58 = load i32, i32* @DBG_DMESG, align 4
  %59 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %60 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %59, i32 0, i32 23
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %63 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %62, i32 0, i32 23
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %67 = load i32, i32* @COMP_BT_COEXIST, align 4
  %68 = load i32, i32* @DBG_DMESG, align 4
  %69 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %70 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %69, i32 0, i32 22
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %73 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %72, i32 0, i32 22
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %77 = load i32, i32* @COMP_BT_COEXIST, align 4
  %78 = load i32, i32* @DBG_DMESG, align 4
  %79 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %80 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %83 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %87 = load i32, i32* @COMP_BT_COEXIST, align 4
  %88 = load i32, i32* @DBG_DMESG, align 4
  %89 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %90 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %89, i32 0, i32 25
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %93 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %92, i32 0, i32 25
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %97 = load i32, i32* @COMP_BT_COEXIST, align 4
  %98 = load i32, i32* @DBG_DMESG, align 4
  %99 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %100 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %99, i32 0, i32 24
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %103 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %102, i32 0, i32 24
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %107 = load i32, i32* @COMP_BT_COEXIST, align 4
  %108 = load i32, i32* @DBG_DMESG, align 4
  %109 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %110 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %109, i32 0, i32 26
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %113 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %112, i32 0, i32 26
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %117 = load i32, i32* @COMP_BT_COEXIST, align 4
  %118 = load i32, i32* @DBG_DMESG, align 4
  %119 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %120 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %123 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %127 = load i32, i32* @COMP_BT_COEXIST, align 4
  %128 = load i32, i32* @DBG_DMESG, align 4
  %129 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %130 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %133 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %131, i32 %134)
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %137 = load i32, i32* @COMP_BT_COEXIST, align 4
  %138 = load i32, i32* @DBG_DMESG, align 4
  %139 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %140 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %143 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %136, i32 %137, i32 %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %141, i32 %144)
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %147 = load i32, i32* @COMP_BT_COEXIST, align 4
  %148 = load i32, i32* @DBG_DMESG, align 4
  %149 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %150 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %153 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %146, i32 %147, i32 %148, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %157 = load i32, i32* @COMP_BT_COEXIST, align 4
  %158 = load i32, i32* @DBG_DMESG, align 4
  %159 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %160 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %159, i32 0, i32 20
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %163 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %162, i32 0, i32 20
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 %161, i32 %164)
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %167 = load i32, i32* @COMP_BT_COEXIST, align 4
  %168 = load i32, i32* @DBG_DMESG, align 4
  %169 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %170 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %173 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %171, i32 %174)
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %177 = load i32, i32* @COMP_BT_COEXIST, align 4
  %178 = load i32, i32* @DBG_DMESG, align 4
  %179 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %180 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %183 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %181, i32 %184)
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %187 = load i32, i32* @COMP_BT_COEXIST, align 4
  %188 = load i32, i32* @DBG_DMESG, align 4
  %189 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %190 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %193 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i32 %191, i32 %194)
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %197 = load i32, i32* @COMP_BT_COEXIST, align 4
  %198 = load i32, i32* @DBG_DMESG, align 4
  %199 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %200 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %199, i32 0, i32 11
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %203 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %201, i32 %204)
  store i32 0, i32* %7, align 4
  br label %206

206:                                              ; preds = %228, %41
  %207 = load i32, i32* %7, align 4
  %208 = icmp slt i32 %207, 5
  br i1 %208, label %209, label %231

209:                                              ; preds = %206
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %211 = load i32, i32* @COMP_BT_COEXIST, align 4
  %212 = load i32, i32* @DBG_DMESG, align 4
  %213 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %214 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %221 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0), i32 %219, i32 %226)
  br label %228

228:                                              ; preds = %209
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %7, align 4
  br label %206

231:                                              ; preds = %206
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %233 = load i32, i32* @COMP_BT_COEXIST, align 4
  %234 = load i32, i32* @DBG_DMESG, align 4
  %235 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %236 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %239 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %237, i32 %240)
  %242 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %243 = load i32, i32* @COMP_BT_COEXIST, align 4
  %244 = load i32, i32* @DBG_DMESG, align 4
  %245 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %246 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %245, i32 0, i32 14
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %249 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %248, i32 0, i32 14
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %242, i32 %243, i32 %244, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 %247, i32 %250)
  %252 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %253 = load i32, i32* @COMP_BT_COEXIST, align 4
  %254 = load i32, i32* @DBG_DMESG, align 4
  %255 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %256 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %255, i32 0, i32 17
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %259 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %258, i32 0, i32 17
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %252, i32 %253, i32 %254, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %257, i32 %260)
  %262 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %263 = load i32, i32* @COMP_BT_COEXIST, align 4
  %264 = load i32, i32* @DBG_DMESG, align 4
  %265 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %266 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %265, i32 0, i32 16
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %269 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %268, i32 0, i32 16
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %262, i32 %263, i32 %264, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %267, i32 %270)
  %272 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %273 = load i32, i32* @COMP_BT_COEXIST, align 4
  %274 = load i32, i32* @DBG_DMESG, align 4
  %275 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %276 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %275, i32 0, i32 15
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %279 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %278, i32 0, i32 15
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %272, i32 %273, i32 %274, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i32 %277, i32 %280)
  %282 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %283 = load i32, i32* @COMP_BT_COEXIST, align 4
  %284 = load i32, i32* @DBG_DMESG, align 4
  %285 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %286 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %289 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %282, i32 %283, i32 %284, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i32 %287, i32 %290)
  %292 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %293 = load i32, i32* @COMP_BT_COEXIST, align 4
  %294 = load i32, i32* @DBG_DMESG, align 4
  %295 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %296 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %299 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %292, i32 %293, i32 %294, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0), i32 %297, i32 %300)
  %302 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %303 = load i32, i32* @COMP_BT_COEXIST, align 4
  %304 = load i32, i32* @DBG_DMESG, align 4
  %305 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %306 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %305, i32 0, i32 19
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %309 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %308, i32 0, i32 19
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %302, i32 %303, i32 %304, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i32 %307, i32 %310)
  %312 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %313 = load i32, i32* @COMP_BT_COEXIST, align 4
  %314 = load i32, i32* @DBG_DMESG, align 4
  %315 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %316 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %315, i32 0, i32 18
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %319 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %318, i32 0, i32 18
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %312, i32 %313, i32 %314, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 %317, i32 %320)
  %322 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %323 = load i32, i32* @COMP_BT_COEXIST, align 4
  %324 = load i32, i32* @DBG_DMESG, align 4
  %325 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %326 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %325, i32 0, i32 21
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %329 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %328, i32 0, i32 21
  %330 = load i32, i32* %329, align 8
  %331 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %322, i32 %323, i32 %324, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i32 %327, i32 %330)
  %332 = load %struct.btdm_8723*, %struct.btdm_8723** %6, align 8
  %333 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %334 = call i32 @memcpy(%struct.btdm_8723* %332, %struct.btdm_8723* %333, i32 120)
  br label %335

335:                                              ; preds = %231
  %336 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %337 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %335
  %342 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %343 = load i32, i32* @COMP_BT_COEXIST, align 4
  %344 = load i32, i32* @DBG_TRACE, align 4
  %345 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %342, i32 %343, i32 %344, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0))
  %346 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %347 = call i32 @rtl8723e_dm_bt_set_fw_ignore_wlan_act(%struct.ieee80211_hw* %346, i32 1)
  br label %644

348:                                              ; preds = %335
  %349 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %350 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %349, i32 0, i32 27
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %348
  %354 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %355 = load i32, i32* @COMP_BT_COEXIST, align 4
  %356 = load i32, i32* @DBG_TRACE, align 4
  %357 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %354, i32 %355, i32 %356, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0))
  %358 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %359 = call i32 @rtl8723e_btdm_coex_all_off(%struct.ieee80211_hw* %358)
  br label %644

360:                                              ; preds = %348
  %361 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %362 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %363 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %362, i32 0, i32 26
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @rtl8723e_dm_bt_reject_ap_aggregated_packet(%struct.ieee80211_hw* %361, i32 %364)
  %366 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %367 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %366, i32 0, i32 25
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %360
  %371 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %372 = load i32, i32* @BT_TX_RATE_ADAPTIVE_LOW_PENALTY, align 4
  %373 = call i32 @dm_bt_set_sw_penalty_tx_rate_adapt(%struct.ieee80211_hw* %371, i32 %372)
  br label %378

374:                                              ; preds = %360
  %375 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %376 = load i32, i32* @BT_TX_RATE_ADAPTIVE_NORMAL, align 4
  %377 = call i32 @dm_bt_set_sw_penalty_tx_rate_adapt(%struct.ieee80211_hw* %375, i32 %376)
  br label %378

378:                                              ; preds = %374, %370
  %379 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %380 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %379, i32 0, i32 24
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %378
  %384 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %385 = load i32, i32* @BT_RF_RX_LPF_CORNER_SHRINK, align 4
  %386 = call i32 @rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(%struct.ieee80211_hw* %384, i32 %385)
  br label %391

387:                                              ; preds = %378
  %388 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %389 = load i32, i32* @BT_RF_RX_LPF_CORNER_RESUME, align 4
  %390 = call i32 @rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(%struct.ieee80211_hw* %388, i32 %389)
  br label %391

391:                                              ; preds = %387, %383
  %392 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %393 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %392, i32 0, i32 23
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %391
  %397 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %398 = load i32, i32* @BT_AGCTABLE_ON, align 4
  %399 = call i32 @rtl8723e_dm_bt_agc_table(%struct.ieee80211_hw* %397, i32 %398)
  br label %404

400:                                              ; preds = %391
  %401 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %402 = load i32, i32* @BT_AGCTABLE_OFF, align 4
  %403 = call i32 @rtl8723e_dm_bt_agc_table(%struct.ieee80211_hw* %401, i32 %402)
  br label %404

404:                                              ; preds = %400, %396
  %405 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %406 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %405, i32 0, i32 22
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %404
  %410 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %411 = load i32, i32* @BT_BB_BACKOFF_ON, align 4
  %412 = call i32 @rtl8723e_dm_bt_bb_back_off_level(%struct.ieee80211_hw* %410, i32 %411)
  br label %417

413:                                              ; preds = %404
  %414 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %415 = load i32, i32* @BT_BB_BACKOFF_OFF, align 4
  %416 = call i32 @rtl8723e_dm_bt_bb_back_off_level(%struct.ieee80211_hw* %414, i32 %415)
  br label %417

417:                                              ; preds = %413, %409
  %418 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %419 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %420 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %419, i32 0, i32 21
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @rtl8723e_dm_bt_set_fw_bt_retry_index(%struct.ieee80211_hw* %418, i32 %421)
  %423 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %424 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %425 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %424, i32 0, i32 20
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @rtl8723e_dm_bt_set_fw_dac_swing_level(%struct.ieee80211_hw* %423, i32 %426)
  %428 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %429 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %430 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %429, i32 0, i32 19
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %433 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %432, i32 0, i32 18
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @rtl8723e_dm_bt_set_fw_wlan_act(%struct.ieee80211_hw* %428, i32 %431, i32 %434)
  %436 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %437 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %438 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %437, i32 0, i32 17
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %441 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %440, i32 0, i32 16
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %444 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %443, i32 0, i32 15
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @rtl8723e_dm_bt_set_coex_table(%struct.ieee80211_hw* %436, i32 %439, i32 %442, i32 %445)
  %447 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %448 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %449 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %448, i32 0, i32 14
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @rtl8723e_dm_bt_set_hw_pta_mode(%struct.ieee80211_hw* %447, i32 %450)
  %452 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %453 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %452, i32 0, i32 13
  %454 = load i32, i32* %453, align 8
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %490

456:                                              ; preds = %417
  %457 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %458 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %459 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %458, i32 0, i32 10
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %462 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %461, i32 0, i32 9
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %465 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %464, i32 0, i32 8
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(%struct.ieee80211_hw* %457, i32 %460, i32 %463, i32 %466)
  %468 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %469 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %470 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %469, i32 0, i32 7
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %473 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %472, i32 0, i32 6
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %476 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %475, i32 0, i32 5
  %477 = load i32, i32* %476, align 8
  %478 = call i32 @rtl8723e_dm_bt_set_fw_tdma_ctrl(%struct.ieee80211_hw* %468, i32 0, i32 %471, i32 %474, i32 %477)
  %479 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %480 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %481 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = call i32 @rtl8723e_dm_bt_set_fw_ignore_wlan_act(%struct.ieee80211_hw* %479, i32 %482)
  %484 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %485 = call i32 @rtl8723e_dm_bt_set_fw_3a(%struct.ieee80211_hw* %484, i32 0, i32 0, i32 0, i32 8, i32 0)
  %486 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %487 = call i32 @rtl8723e_dm_bt_set_fw_bt_hid_info(%struct.ieee80211_hw* %486, i32 1)
  %488 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %489 = call i32 @rtl8723e_dm_bt_set_fw_2_ant_hid(%struct.ieee80211_hw* %488, i32 1, i32 1)
  br label %629

490:                                              ; preds = %417
  %491 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %492 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %491, i32 0, i32 12
  %493 = load i32, i32* %492, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %529

495:                                              ; preds = %490
  %496 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %497 = call i32 @rtl8723e_dm_bt_set_fw_bt_hid_info(%struct.ieee80211_hw* %496, i32 0)
  %498 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %499 = call i32 @rtl8723e_dm_bt_set_fw_2_ant_hid(%struct.ieee80211_hw* %498, i32 0, i32 0)
  %500 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %501 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %502 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = call i32 @rtl8723e_dm_bt_set_fw_ignore_wlan_act(%struct.ieee80211_hw* %500, i32 %503)
  %505 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %506 = call i32 @rtl8723e_dm_bt_set_fw_3a(%struct.ieee80211_hw* %505, i32 0, i32 0, i32 0, i32 8, i32 0)
  %507 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %508 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %509 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %508, i32 0, i32 10
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %512 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %511, i32 0, i32 9
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %515 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %514, i32 0, i32 8
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(%struct.ieee80211_hw* %507, i32 %510, i32 %513, i32 %516)
  %518 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %519 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %520 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %519, i32 0, i32 7
  %521 = load i32, i32* %520, align 8
  %522 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %523 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %522, i32 0, i32 6
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %526 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %525, i32 0, i32 5
  %527 = load i32, i32* %526, align 8
  %528 = call i32 @rtl8723e_dm_bt_set_fw_tdma_ctrl(%struct.ieee80211_hw* %518, i32 1, i32 %521, i32 %524, i32 %527)
  br label %628

529:                                              ; preds = %490
  %530 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %531 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %530, i32 0, i32 11
  %532 = load i32, i32* %531, align 8
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %593

534:                                              ; preds = %529
  %535 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %536 = call i32 @rtl8723e_dm_bt_set_fw_bt_hid_info(%struct.ieee80211_hw* %535, i32 0)
  %537 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %538 = call i32 @rtl8723e_dm_bt_set_fw_2_ant_hid(%struct.ieee80211_hw* %537, i32 0, i32 0)
  %539 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %540 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %541 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %540, i32 0, i32 10
  %542 = load i32, i32* %541, align 4
  %543 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %544 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %543, i32 0, i32 9
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %547 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %546, i32 0, i32 8
  %548 = load i32, i32* %547, align 4
  %549 = call i32 @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(%struct.ieee80211_hw* %539, i32 %542, i32 %545, i32 %548)
  %550 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %551 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %552 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %551, i32 0, i32 7
  %553 = load i32, i32* %552, align 8
  %554 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %555 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %554, i32 0, i32 6
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %558 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %557, i32 0, i32 5
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @rtl8723e_dm_bt_set_fw_tdma_ctrl(%struct.ieee80211_hw* %550, i32 0, i32 %553, i32 %556, i32 %559)
  %561 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %562 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %563 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @rtl8723e_dm_bt_set_fw_ignore_wlan_act(%struct.ieee80211_hw* %561, i32 %564)
  %566 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %567 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %568 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %567, i32 0, i32 0
  %569 = load i32*, i32** %568, align 8
  %570 = getelementptr inbounds i32, i32* %569, i64 0
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %573 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %572, i32 0, i32 0
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 1
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %578 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %577, i32 0, i32 0
  %579 = load i32*, i32** %578, align 8
  %580 = getelementptr inbounds i32, i32* %579, i64 2
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %583 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %582, i32 0, i32 0
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 3
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %588 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %587, i32 0, i32 0
  %589 = load i32*, i32** %588, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 4
  %591 = load i32, i32* %590, align 4
  %592 = call i32 @rtl8723e_dm_bt_set_fw_3a(%struct.ieee80211_hw* %566, i32 %571, i32 %576, i32 %581, i32 %586, i32 %591)
  br label %627

593:                                              ; preds = %529
  %594 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %595 = call i32 @rtl8723e_dm_bt_set_fw_bt_hid_info(%struct.ieee80211_hw* %594, i32 0)
  %596 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %597 = call i32 @rtl8723e_dm_bt_set_fw_2_ant_hid(%struct.ieee80211_hw* %596, i32 0, i32 0)
  %598 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %599 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %600 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %599, i32 0, i32 10
  %601 = load i32, i32* %600, align 4
  %602 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %603 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %602, i32 0, i32 9
  %604 = load i32, i32* %603, align 8
  %605 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %606 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %605, i32 0, i32 8
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(%struct.ieee80211_hw* %598, i32 %601, i32 %604, i32 %607)
  %609 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %610 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %611 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %610, i32 0, i32 7
  %612 = load i32, i32* %611, align 8
  %613 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %614 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %613, i32 0, i32 6
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %617 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %616, i32 0, i32 5
  %618 = load i32, i32* %617, align 8
  %619 = call i32 @rtl8723e_dm_bt_set_fw_tdma_ctrl(%struct.ieee80211_hw* %609, i32 0, i32 %612, i32 %615, i32 %618)
  %620 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %621 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %622 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %621, i32 0, i32 1
  %623 = load i32, i32* %622, align 8
  %624 = call i32 @rtl8723e_dm_bt_set_fw_ignore_wlan_act(%struct.ieee80211_hw* %620, i32 %623)
  %625 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %626 = call i32 @rtl8723e_dm_bt_set_fw_3a(%struct.ieee80211_hw* %625, i32 0, i32 0, i32 0, i32 8, i32 0)
  br label %627

627:                                              ; preds = %593, %534
  br label %628

628:                                              ; preds = %627, %495
  br label %629

629:                                              ; preds = %628, %456
  %630 = call i32 @mdelay(i32 30)
  %631 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %632 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %633 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %632, i32 0, i32 4
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %636 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %635, i32 0, i32 3
  %637 = load i32, i32* %636, align 8
  %638 = call i32 @rtl8723e_dm_bt_set_sw_full_time_dac_swing(%struct.ieee80211_hw* %631, i32 %634, i32 %637)
  %639 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %640 = load %struct.btdm_8723*, %struct.btdm_8723** %4, align 8
  %641 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %640, i32 0, i32 2
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @rtl8723e_dm_bt_set_fw_dec_bt_pwr(%struct.ieee80211_hw* %639, i32 %642)
  br label %644

644:                                              ; preds = %629, %353, %341, %36
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @memcmp(%struct.btdm_8723*, %struct.btdm_8723*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.btdm_8723*, %struct.btdm_8723*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_ignore_wlan_act(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_btdm_coex_all_off(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_reject_ap_aggregated_packet(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @dm_bt_set_sw_penalty_tx_rate_adapt(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_agc_table(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_bb_back_off_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_bt_retry_index(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_dac_swing_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_wlan_act(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_coex_table(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_hw_pta_mode(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_tdma_ctrl(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_3a(%struct.ieee80211_hw*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_bt_hid_info(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_2_ant_hid(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_sw_full_time_dac_swing(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_fw_dec_bt_pwr(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
