; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_DisplayCoexInfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_DisplayCoexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_64__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32* }
%struct.TYPE_63__ = type { i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64*, i32**, i32, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_61__ = type { i32*, i64 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)*, %struct.TYPE_59__, i64, i32 (%struct.TYPE_61__*, i32, i64*)*, i64, %struct.TYPE_62__, %struct.TYPE_60__, %struct.TYPE_65__ }
%struct.TYPE_59__ = type { i32, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_62__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_60__ = type { i32, i64 }
%struct.TYPE_65__ = type { i32, i32, i32 }

@EXhalbtc8723b1ant_DisplayCoexInfo.PopReportIn10s = internal global i32 0, align 4
@BT_TMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\0D\0A ============[BT Coexist info]============\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\0D\0A ============[Under Manual Control]============\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\0D\0A ==========================================\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\0D\0A ============[Coex is STOPPED]============\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\0D\0A %-35s = %d/ %d/ %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Ant PG Num/ Ant Mech/ Ant Pos:\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\0D\0A %-35s = %s / %d\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"BT stack/ hci ext ver\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"\0D\0A %-35s = %d_%x/ 0x%x/ 0x%x(%d)\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", align 1
@GLCoexVerDate8723b1Ant = common dso_local global i32 0, align 4
@GLCoexVer8723b1Ant = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_DOT11_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_HS_CHNL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"\0D\0A %-35s = %d / %d(%d)\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Dot11 channel / HsChnl(HsMode)\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\0D\0A %-35s = %02x %02x %02x \00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"H2C Wifi inform bt chnl Info\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_64__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_S4_HS_RSSI = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"\0D\0A %-35s = %d/ %d\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Wifi rssi/ HS rssi\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"\0D\0A %-35s = %d/ %d/ %d/ %s\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Wifi bLink/ bRoam/ bScan/ bHi-Pri\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_63__* null, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_TRAFFIC_DIRECTION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_UNDER_B_MODE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"\0D\0A %-35s = %s / %s/ %s/ AP =%d/ %s \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Wifi status\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"5G\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"2.4G\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"11b\00", align 1
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"11bg\00", align 1
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"HT40\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"HT20\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@BTC_WIFI_TRAFFIC_TX = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"uplink\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"downlink\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"noLock\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [30 x i8] c"\0D\0A %-35s = %d/ %d/ %d/ %d/ %d\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"sta/vwifi/hs/p2pGo/p2pGc\00", align 1
@WIFI_STA_CONNECTED = common dso_local global i64 0, align 8
@WIFI_AP_CONNECTED = common dso_local global i64 0, align 8
@WIFI_HS_CONNECTED = common dso_local global i64 0, align 8
@WIFI_P2P_GO_CONNECTED = common dso_local global i64 0, align 8
@WIFI_P2P_GC_CONNECTED = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [29 x i8] c"\0D\0A %-35s = [%s/ %d/ %d/ %d] \00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"BT [status/ rssi/ retryCnt/ popCnt]\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"inquiry/page scan\00", align 1
@BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.41 = private unnamed_addr constant [19 x i8] c"non-connected idle\00", align 1
@BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [15 x i8] c"connected-idle\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"\0D\0A %-35s = %d / %d / %d / %d\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"SCO/HID/PAN/A2DP\00", align 1
@BTC_DBG_DISP_BT_LINK_INFO = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [14 x i8] c"\0D\0A %-35s = %s\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"BT Role\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"BT Info A2DP rate\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [11 x i8] c"Basic rate\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"EDR rate\00", align 1
@BT_INFO_SRC_8723B_1ANT_MAX = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [50 x i8] c"\0D\0A %-35s = %02x %02x %02x %02x %02x %02x %02x(%d)\00", align 1
@GLBtInfoSrc8723b1Ant = common dso_local global i32* null, align 8
@.str.54 = private unnamed_addr constant [30 x i8] c"\0D\0A %-35s = %s/%s, (0x%x/0x%x)\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"PS state, IPS/LPS, (lps/rpwm)\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"IPS ON\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"IPS OFF\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"LPS ON\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"LPS OFF\00", align 1
@BTC_DBG_DISP_FW_PWR_MODE_CMD = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [9 x i8] c"\0D\0A %-35s\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"============[Sw mechanism]============\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"\0D\0A %-35s = %d\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"SM[LowPenaltyRA]\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"\0D\0A %-35s = %s/ %s/ %d \00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"DelBA/ BtCtrlAgg/ AggSize\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"\0D\0A %-35s = 0x%x \00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"Rate Mask\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"============[Fw mechanism]============\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"\0D\0A %-35s = %02x %02x %02x %02x %02x case-%d (auto:%d)\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"PS TDMA\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Coex Table Type\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"IgnWlanAct\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"============[Hw setting]============\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"\0D\0A %-35s = 0x%x/0x%x/0x%x/0x%x\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"backup ARFR1/ARFR2/RL/AMaxTime\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"0x430/0x434/0x42a/0x456\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"\0D\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"0x778/0x6cc/0x880[29:25]\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"\0D\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"0x948/ 0x67[5] / 0x764 / 0x76e\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"0x92c[1:0]/ 0x930[7:0]/0x944[1:0]\00", align 1
@.str.82 = private unnamed_addr constant [34 x i8] c"0x38[11]/0x40/0x4c[24:23]/0x64[0]\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"\0D\0A %-35s = 0x%x/ 0x%x\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"0x550(bcn ctrl)/0x522\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"0xc50(dig)/0x49c(null-drop)\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"OFDM-CCA/OFDM-FA/CCK-FA\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"\0D\0A %-35s = %d/ %d/ %d/ %d\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"CRC_OK CCK/11g/11n/11n-Agg\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"CRC_Err CCK/11g/11n/11n-Agg\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"0x6c0/0x6c4/0x6c8(coexTable)\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"0x770(high-pri rx/tx)\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"0x774(low-pri rx/tx)\00", align 1
@BTC_DBG_DISP_COEX_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_DisplayCoexInfo(%struct.TYPE_61__* %0) #0 {
  %2 = alloca %struct.TYPE_61__*, align 8
  %3 = alloca %struct.TYPE_65__*, align 8
  %4 = alloca %struct.TYPE_60__*, align 8
  %5 = alloca %struct.TYPE_62__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.TYPE_61__* %0, %struct.TYPE_61__** %2, align 8
  %31 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %31, i32 0, i32 11
  store %struct.TYPE_65__* %32, %struct.TYPE_65__** %3, align 8
  %33 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %33, i32 0, i32 10
  store %struct.TYPE_60__* %34, %struct.TYPE_60__** %4, align 8
  %35 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %35, i32 0, i32 9
  store %struct.TYPE_62__* %36, %struct.TYPE_62__** %5, align 8
  %37 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %42 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %40, i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @CL_PRINTF(i32* %43)
  %45 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %1
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %52 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %50, i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @CL_PRINTF(i32* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %55, i32 %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @CL_PRINTF(i32* %58)
  br label %60

60:                                               ; preds = %49, %1
  %61 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %68 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %66, i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @CL_PRINTF(i32* %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %73 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %71, i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @CL_PRINTF(i32* %74)
  br label %76

76:                                               ; preds = %65, %60
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %79 = load %struct.TYPE_65__*, %struct.TYPE_65__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_65__*, %struct.TYPE_65__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_65__*, %struct.TYPE_65__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %77, i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %84, i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @CL_PRINTF(i32* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %93 = load %struct.TYPE_60__*, %struct.TYPE_60__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %99 = load %struct.TYPE_60__*, %struct.TYPE_60__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %91, i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %98, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @CL_PRINTF(i32* %103)
  %105 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %105, i32 0, i32 7
  %107 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %106, align 8
  %108 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %109 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %110 = call i32 %107(%struct.TYPE_61__* %108, i32 %109, i64* %30)
  %111 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %111, i32 0, i32 7
  %113 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %112, align 8
  %114 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %115 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %116 = call i32 %113(%struct.TYPE_61__* %114, i32 %115, i64* %29)
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %119 = load i32, i32* @GLCoexVerDate8723b1Ant, align 4
  %120 = load i32, i32* @GLCoexVer8723b1Ant, align 4
  %121 = load i64, i64* %29, align 8
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* %30, align 8
  %124 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %117, i32 %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %119, i32 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @CL_PRINTF(i32* %125)
  %127 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %127, i32 0, i32 7
  %129 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %128, align 8
  %130 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %131 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %132 = bitcast i32* %18 to i64*
  %133 = call i32 %129(%struct.TYPE_61__* %130, i32 %131, i64* %132)
  %134 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %134, i32 0, i32 7
  %136 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %135, align 8
  %137 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %138 = load i32, i32* @BTC_GET_U1_WIFI_DOT11_CHNL, align 4
  %139 = bitcast i32* %27 to i64*
  %140 = call i32 %136(%struct.TYPE_61__* %137, i32 %138, i64* %139)
  %141 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %141, i32 0, i32 7
  %143 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %142, align 8
  %144 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %145 = load i32, i32* @BTC_GET_U1_WIFI_HS_CHNL, align 4
  %146 = bitcast i32* %28 to i64*
  %147 = call i32 %143(%struct.TYPE_61__* %144, i32 %145, i64* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* %28, align 4
  %152 = load i32, i32* %18, align 4
  %153 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %148, i32 %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %150, i32 %151, i32 %152)
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @CL_PRINTF(i32* %154)
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %158 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %159 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %158, i32 0, i32 10
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %164 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %163, i32 0, i32 10
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %169 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %168, i32 0, i32 10
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %156, i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %162, i32 %167, i32 %172)
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @CL_PRINTF(i32* %174)
  %176 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %176, i32 0, i32 7
  %178 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %177, align 8
  %179 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %180 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %181 = call i32 %178(%struct.TYPE_61__* %179, i32 %180, i64* %20)
  %182 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %182, i32 0, i32 7
  %184 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %183, align 8
  %185 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %186 = load i32, i32* @BTC_GET_S4_HS_RSSI, align 4
  %187 = call i32 %184(%struct.TYPE_61__* %185, i32 %186, i64* %21)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %190 = load i64, i64* %20, align 8
  %191 = sub nsw i64 %190, 100
  %192 = load i64, i64* %21, align 8
  %193 = sub nsw i64 %192, 100
  %194 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %188, i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i64 %191, i64 %193)
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @CL_PRINTF(i32* %195)
  %197 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %197, i32 0, i32 7
  %199 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %198, align 8
  %200 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %201 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %202 = bitcast i32* %14 to i64*
  %203 = call i32 %199(%struct.TYPE_61__* %200, i32 %201, i64* %202)
  %204 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %204, i32 0, i32 7
  %206 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %205, align 8
  %207 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %208 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %209 = bitcast i32* %15 to i64*
  %210 = call i32 %206(%struct.TYPE_61__* %207, i32 %208, i64* %209)
  %211 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %211, i32 0, i32 7
  %213 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %212, align 8
  %214 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %215 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %216 = bitcast i32* %13 to i64*
  %217 = call i32 %213(%struct.TYPE_61__* %214, i32 %215, i64* %216)
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %224 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %223, i32 0, i32 24
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %229 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %218, i32 %219, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %220, i32 %221, i32 %222, i8* %228)
  %230 = load i32*, i32** %6, align 8
  %231 = call i32 @CL_PRINTF(i32* %230)
  %232 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %232, i32 0, i32 7
  %234 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %233, align 8
  %235 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %236 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %237 = bitcast i32* %16 to i64*
  %238 = call i32 %234(%struct.TYPE_61__* %235, i32 %236, i64* %237)
  %239 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %239, i32 0, i32 7
  %241 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %240, align 8
  %242 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %243 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %244 = call i32 %241(%struct.TYPE_61__* %242, i32 %243, i64* %22)
  %245 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %245, i32 0, i32 7
  %247 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %246, align 8
  %248 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %249 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %250 = bitcast i32* %19 to i64*
  %251 = call i32 %247(%struct.TYPE_61__* %248, i32 %249, i64* %250)
  %252 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %252, i32 0, i32 7
  %254 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %253, align 8
  %255 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %256 = load i32, i32* @BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, align 4
  %257 = call i32 %254(%struct.TYPE_61__* %255, i32 %256, i64* %23)
  %258 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %258, i32 0, i32 7
  %260 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %259, align 8
  %261 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %262 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_B_MODE, align 4
  %263 = bitcast i32* %17 to i64*
  %264 = call i32 %260(%struct.TYPE_61__* %261, i32 %262, i64* %263)
  %265 = load i32*, i32** %6, align 8
  %266 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %267 = load i32, i32* %16, align 4
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  %271 = load i32, i32* %17, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %76
  br label %287

274:                                              ; preds = %76
  %275 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %276 = load i64, i64* %22, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  br label %285

279:                                              ; preds = %274
  %280 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %281 = load i64, i64* %22, align 8
  %282 = icmp eq i64 %280, %281
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)
  br label %285

285:                                              ; preds = %279, %278
  %286 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %278 ], [ %284, %279 ]
  br label %287

287:                                              ; preds = %285, %273
  %288 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), %273 ], [ %286, %285 ]
  %289 = load i32, i32* %19, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %287
  br label %298

292:                                              ; preds = %287
  %293 = load i64, i64* @BTC_WIFI_TRAFFIC_TX, align 8
  %294 = load i64, i64* %23, align 8
  %295 = icmp eq i64 %293, %294
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0)
  br label %298

298:                                              ; preds = %292, %291
  %299 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), %291 ], [ %297, %292 ]
  %300 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %301 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %300, i32 0, i32 23
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %304 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %303, i32 0, i32 22
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)
  %309 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %265, i32 %266, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* %270, i8* %288, i8* %299, i32 %302, i8* %308)
  %310 = load i32*, i32** %6, align 8
  %311 = call i32 @CL_PRINTF(i32* %310)
  %312 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %312, i32 0, i32 7
  %314 = load i32 (%struct.TYPE_61__*, i32, i64*)*, i32 (%struct.TYPE_61__*, i32, i64*)** %313, align 8
  %315 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %316 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %317 = call i32 %314(%struct.TYPE_61__* %315, i32 %316, i64* %26)
  %318 = load i32*, i32** %6, align 8
  %319 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %320 = load i64, i64* %26, align 8
  %321 = load i64, i64* @WIFI_STA_CONNECTED, align 8
  %322 = and i64 %320, %321
  %323 = icmp ne i64 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 1, i32 0
  %326 = load i64, i64* %26, align 8
  %327 = load i64, i64* @WIFI_AP_CONNECTED, align 8
  %328 = and i64 %326, %327
  %329 = icmp ne i64 %328, 0
  %330 = zext i1 %329 to i64
  %331 = select i1 %329, i32 1, i32 0
  %332 = load i64, i64* %26, align 8
  %333 = load i64, i64* @WIFI_HS_CONNECTED, align 8
  %334 = and i64 %332, %333
  %335 = icmp ne i64 %334, 0
  %336 = zext i1 %335 to i64
  %337 = select i1 %335, i32 1, i32 0
  %338 = load i64, i64* %26, align 8
  %339 = load i64, i64* @WIFI_P2P_GO_CONNECTED, align 8
  %340 = and i64 %338, %339
  %341 = icmp ne i64 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i32 1, i32 0
  %344 = load i64, i64* %26, align 8
  %345 = load i64, i64* @WIFI_P2P_GC_CONNECTED, align 8
  %346 = and i64 %344, %345
  %347 = icmp ne i64 %346, 0
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i32 1, i32 0
  %350 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %318, i32 %319, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i32 %325, i32 %331, i32 %337, i32 %343, i32 %349)
  %351 = load i32*, i32** %6, align 8
  %352 = call i32 @CL_PRINTF(i32* %351)
  %353 = load i32, i32* @EXhalbtc8723b1ant_DisplayCoexInfo.PopReportIn10s, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* @EXhalbtc8723b1ant_DisplayCoexInfo.PopReportIn10s, align 4
  %355 = load i32*, i32** %6, align 8
  %356 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %357 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %358, i32 0, i32 6
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %298
  br label %388

363:                                              ; preds = %298
  %364 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %365 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %364, i32 0, i32 21
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  br label %386

369:                                              ; preds = %363
  %370 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %371 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %372 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %370, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %369
  br label %384

376:                                              ; preds = %369
  %377 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %378 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %379 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp eq i64 %377, %380
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)
  br label %384

384:                                              ; preds = %376, %375
  %385 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), %375 ], [ %383, %376 ]
  br label %386

386:                                              ; preds = %384, %368
  %387 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), %368 ], [ %385, %384 ]
  br label %388

388:                                              ; preds = %386, %362
  %389 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), %362 ], [ %387, %386 ]
  %390 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %391 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %390, i32 0, i32 20
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %394 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %393, i32 0, i32 19
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %397 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %396, i32 0, i32 18
  %398 = load i32, i32* %397, align 8
  %399 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %355, i32 %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0), i8* %389, i32 %392, i32 %395, i32 %398)
  %400 = load i32*, i32** %6, align 8
  %401 = call i32 @CL_PRINTF(i32* %400)
  %402 = load i32, i32* @EXhalbtc8723b1ant_DisplayCoexInfo.PopReportIn10s, align 4
  %403 = icmp sge i32 %402, 5
  br i1 %403, label %404, label %407

404:                                              ; preds = %388
  %405 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %406 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %405, i32 0, i32 18
  store i32 0, i32* %406, align 8
  store i32 0, i32* @EXhalbtc8723b1ant_DisplayCoexInfo.PopReportIn10s, align 4
  br label %407

407:                                              ; preds = %404, %388
  %408 = load i32*, i32** %6, align 8
  %409 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %410 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %408, i32 %409, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i32 %412, i32 %415, i32 %418, i32 %421)
  %423 = load i32*, i32** %6, align 8
  %424 = call i32 @CL_PRINTF(i32* %423)
  %425 = load %struct.TYPE_60__*, %struct.TYPE_60__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %436

429:                                              ; preds = %407
  %430 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %431 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %430, i32 0, i32 3
  %432 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %431, align 8
  %433 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %434 = load i32, i32* @BTC_DBG_DISP_BT_LINK_INFO, align 4
  %435 = call i32 %432(%struct.TYPE_61__* %433, i32 %434)
  br label %448

436:                                              ; preds = %407
  %437 = load i32*, i32** %6, align 8
  %438 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %439 = load %struct.TYPE_62__*, %struct.TYPE_62__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  %443 = zext i1 %442 to i64
  %444 = select i1 %442, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)
  %445 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %437, i32 %438, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i8* %444)
  %446 = load i32*, i32** %6, align 8
  %447 = call i32 @CL_PRINTF(i32* %446)
  br label %448

448:                                              ; preds = %436, %429
  %449 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %450 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  store i32 %451, i32* %9, align 4
  %452 = load i32*, i32** %6, align 8
  %453 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %454 = load i32, i32* %9, align 4
  %455 = load i32, i32* @BIT0, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  %458 = zext i1 %457 to i64
  %459 = select i1 %457, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0)
  %460 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %452, i32 %453, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0), i8* %459)
  %461 = load i32*, i32** %6, align 8
  %462 = call i32 @CL_PRINTF(i32* %461)
  store i32 0, i32* %8, align 4
  br label %463

463:                                              ; preds = %558, %448
  %464 = load i32, i32* %8, align 4
  %465 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_MAX, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %561

467:                                              ; preds = %463
  %468 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %469 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %468, i32 0, i32 16
  %470 = load i64*, i64** %469, align 8
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i64, i64* %470, i64 %472
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %557

476:                                              ; preds = %467
  %477 = load i32*, i32** %6, align 8
  %478 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %479 = load i32*, i32** @GLBtInfoSrc8723b1Ant, align 8
  %480 = load i32, i32* %8, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %485 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %484, i32 0, i32 17
  %486 = load i32**, i32*** %485, align 8
  %487 = load i32, i32* %8, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32*, i32** %486, i64 %488
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 0
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %494 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %493, i32 0, i32 17
  %495 = load i32**, i32*** %494, align 8
  %496 = load i32, i32* %8, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32*, i32** %495, i64 %497
  %499 = load i32*, i32** %498, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 1
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %503 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %502, i32 0, i32 17
  %504 = load i32**, i32*** %503, align 8
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32*, i32** %504, i64 %506
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 2
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %512 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %511, i32 0, i32 17
  %513 = load i32**, i32*** %512, align 8
  %514 = load i32, i32* %8, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32*, i32** %513, i64 %515
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 3
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %521 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %520, i32 0, i32 17
  %522 = load i32**, i32*** %521, align 8
  %523 = load i32, i32* %8, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32*, i32** %522, i64 %524
  %526 = load i32*, i32** %525, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 4
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %530 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %529, i32 0, i32 17
  %531 = load i32**, i32*** %530, align 8
  %532 = load i32, i32* %8, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32*, i32** %531, i64 %533
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 5
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %539 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %538, i32 0, i32 17
  %540 = load i32**, i32*** %539, align 8
  %541 = load i32, i32* %8, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32*, i32** %540, i64 %542
  %544 = load i32*, i32** %543, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 6
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %548 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %547, i32 0, i32 16
  %549 = load i64*, i64** %548, align 8
  %550 = load i32, i32* %8, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i64, i64* %549, i64 %551
  %553 = load i64, i64* %552, align 8
  %554 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %477, i32 %478, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.53, i64 0, i64 0), i32 %483, i32 %492, i32 %501, i32 %510, i32 %519, i32 %528, i32 %537, i32 %546, i64 %553)
  %555 = load i32*, i32** %6, align 8
  %556 = call i32 @CL_PRINTF(i32* %555)
  br label %557

557:                                              ; preds = %476, %467
  br label %558

558:                                              ; preds = %557
  %559 = load i32, i32* %8, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %8, align 4
  br label %463

561:                                              ; preds = %463
  %562 = load i32*, i32** %6, align 8
  %563 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %564 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %565 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %564, i32 0, i32 15
  %566 = load i64, i64* %565, align 8
  %567 = icmp ne i64 %566, 0
  %568 = zext i1 %567 to i64
  %569 = select i1 %567, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0)
  %570 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %571 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %570, i32 0, i32 14
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  %574 = zext i1 %573 to i64
  %575 = select i1 %573, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0)
  %576 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %577 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %576, i32 0, i32 5
  %578 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %581 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %580, i32 0, i32 5
  %582 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %581, i32 0, i32 4
  %583 = load i32, i32* %582, align 8
  %584 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %562, i32 %563, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0), i8* %569, i8* %575, i32 %579, i32 %583)
  %585 = load i32*, i32** %6, align 8
  %586 = call i32 @CL_PRINTF(i32* %585)
  %587 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %588 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %587, i32 0, i32 3
  %589 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %588, align 8
  %590 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %591 = load i32, i32* @BTC_DBG_DISP_FW_PWR_MODE_CMD, align 4
  %592 = call i32 %589(%struct.TYPE_61__* %590, i32 %591)
  %593 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %594 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %593, i32 0, i32 6
  %595 = load i64, i64* %594, align 8
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %701, label %597

597:                                              ; preds = %561
  %598 = load i32*, i32** %6, align 8
  %599 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %600 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %598, i32 %599, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i64 0, i64 0))
  %601 = load i32*, i32** %6, align 8
  %602 = call i32 @CL_PRINTF(i32* %601)
  %603 = load i32*, i32** %6, align 8
  %604 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %605 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %606 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %605, i32 0, i32 9
  %607 = load i32, i32* %606, align 8
  %608 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %603, i32 %604, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i32 %607)
  %609 = load i32*, i32** %6, align 8
  %610 = call i32 @CL_PRINTF(i32* %609)
  %611 = load i32*, i32** %6, align 8
  %612 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %613 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %614 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %613, i32 0, i32 5
  %615 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %614, i32 0, i32 3
  %616 = load i64, i64* %615, align 8
  %617 = icmp ne i64 %616, 0
  %618 = zext i1 %617 to i64
  %619 = select i1 %617, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %620 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %621 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %620, i32 0, i32 5
  %622 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %621, i32 0, i32 2
  %623 = load i64, i64* %622, align 8
  %624 = icmp ne i64 %623, 0
  %625 = zext i1 %624 to i64
  %626 = select i1 %624, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %627 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %628 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %627, i32 0, i32 5
  %629 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %611, i32 %612, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i64 0, i64 0), i8* %619, i8* %626, i32 %630)
  %632 = load i32*, i32** %6, align 8
  %633 = call i32 @CL_PRINTF(i32* %632)
  %634 = load i32*, i32** %6, align 8
  %635 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %636 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %637 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %636, i32 0, i32 5
  %638 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 8
  %640 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %634, i32 %635, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32 %639)
  %641 = load i32*, i32** %6, align 8
  %642 = call i32 @CL_PRINTF(i32* %641)
  %643 = load i32*, i32** %6, align 8
  %644 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %645 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %643, i32 %644, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.68, i64 0, i64 0))
  %646 = load i32*, i32** %6, align 8
  %647 = call i32 @CL_PRINTF(i32* %646)
  %648 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %649 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %648, i32 0, i32 1
  %650 = load i32, i32* %649, align 8
  store i32 %650, i32* %10, align 4
  %651 = load i32*, i32** %6, align 8
  %652 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %653 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %654 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %653, i32 0, i32 8
  %655 = load i32*, i32** %654, align 8
  %656 = getelementptr inbounds i32, i32* %655, i64 0
  %657 = load i32, i32* %656, align 4
  %658 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %659 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %658, i32 0, i32 8
  %660 = load i32*, i32** %659, align 8
  %661 = getelementptr inbounds i32, i32* %660, i64 1
  %662 = load i32, i32* %661, align 4
  %663 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %664 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %663, i32 0, i32 8
  %665 = load i32*, i32** %664, align 8
  %666 = getelementptr inbounds i32, i32* %665, i64 2
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %669 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %668, i32 0, i32 8
  %670 = load i32*, i32** %669, align 8
  %671 = getelementptr inbounds i32, i32* %670, i64 3
  %672 = load i32, i32* %671, align 4
  %673 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %674 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %673, i32 0, i32 8
  %675 = load i32*, i32** %674, align 8
  %676 = getelementptr inbounds i32, i32* %675, i64 4
  %677 = load i32, i32* %676, align 4
  %678 = load i32, i32* %10, align 4
  %679 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %680 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %679, i32 0, i32 7
  %681 = load i32, i32* %680, align 8
  %682 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %651, i32 %652, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0), i32 %657, i32 %662, i32 %667, i32 %672, i32 %677, i32 %678, i32 %681)
  %683 = load i32*, i32** %6, align 8
  %684 = call i32 @CL_PRINTF(i32* %683)
  %685 = load i32*, i32** %6, align 8
  %686 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %687 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %688 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %687, i32 0, i32 13
  %689 = load i32, i32* %688, align 4
  %690 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %685, i32 %686, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i64 0, i64 0), i32 %689)
  %691 = load i32*, i32** %6, align 8
  %692 = call i32 @CL_PRINTF(i32* %691)
  %693 = load i32*, i32** %6, align 8
  %694 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %695 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %696 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %695, i32 0, i32 6
  %697 = load i32, i32* %696, align 4
  %698 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %693, i32 %694, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i32 %697)
  %699 = load i32*, i32** %6, align 8
  %700 = call i32 @CL_PRINTF(i32* %699)
  br label %701

701:                                              ; preds = %597, %561
  %702 = load i32*, i32** %6, align 8
  %703 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %704 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %702, i32 %703, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i64 0, i64 0))
  %705 = load i32*, i32** %6, align 8
  %706 = call i32 @CL_PRINTF(i32* %705)
  %707 = load i32*, i32** %6, align 8
  %708 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %709 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %710 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %709, i32 0, i32 5
  %711 = load i32, i32* %710, align 8
  %712 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %713 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %712, i32 0, i32 4
  %714 = load i32, i32* %713, align 4
  %715 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %716 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %715, i32 0, i32 3
  %717 = load i32, i32* %716, align 8
  %718 = load %struct.TYPE_64__*, %struct.TYPE_64__** @pCoexDm, align 8
  %719 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %718, i32 0, i32 2
  %720 = load i32, i32* %719, align 4
  %721 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %707, i32 %708, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i64 0, i64 0), i32 %711, i32 %714, i32 %717, i32 %720)
  %722 = load i32*, i32** %6, align 8
  %723 = call i32 @CL_PRINTF(i32* %722)
  %724 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %725 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %724, i32 0, i32 1
  %726 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %725, align 8
  %727 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %728 = call i64 %726(%struct.TYPE_61__* %727, i32 1072)
  %729 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %728, i64* %729, align 16
  %730 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %731 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %730, i32 0, i32 1
  %732 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %731, align 8
  %733 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %734 = call i64 %732(%struct.TYPE_61__* %733, i32 1076)
  %735 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %734, i64* %735, align 8
  %736 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %737 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %736, i32 0, i32 4
  %738 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %737, align 8
  %739 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %740 = call i32 %738(%struct.TYPE_61__* %739, i32 1066)
  %741 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %740, i32* %741, align 16
  %742 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %743 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %742, i32 0, i32 2
  %744 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %743, align 8
  %745 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %746 = call i32 %744(%struct.TYPE_61__* %745, i32 1110)
  %747 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %746, i32* %747, align 16
  %748 = load i32*, i32** %6, align 8
  %749 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %750 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %751 = load i64, i64* %750, align 16
  %752 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %753 = load i64, i64* %752, align 8
  %754 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %755 = load i32, i32* %754, align 16
  %756 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %757 = load i32, i32* %756, align 16
  %758 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %748, i32 %749, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i64 0, i64 0), i64 %751, i64 %753, i32 %755, i32 %757)
  %759 = load i32*, i32** %6, align 8
  %760 = call i32 @CL_PRINTF(i32* %759)
  %761 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %762 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %761, i32 0, i32 2
  %763 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %762, align 8
  %764 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %765 = call i32 %763(%struct.TYPE_61__* %764, i32 1912)
  %766 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %765, i32* %766, align 16
  %767 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %768 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %767, i32 0, i32 1
  %769 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %768, align 8
  %770 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %771 = call i64 %769(%struct.TYPE_61__* %770, i32 1740)
  %772 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %771, i64* %772, align 16
  %773 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %774 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %773, i32 0, i32 1
  %775 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %774, align 8
  %776 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %777 = call i64 %775(%struct.TYPE_61__* %776, i32 2176)
  %778 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %777, i64* %778, align 8
  %779 = load i32*, i32** %6, align 8
  %780 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %781 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %782 = load i32, i32* %781, align 16
  %783 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %784 = load i64, i64* %783, align 16
  %785 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %786 = load i64, i64* %785, align 8
  %787 = and i64 %786, 1040187392
  %788 = ashr i64 %787, 25
  %789 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %779, i32 %780, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i64 0, i64 0), i32 %782, i64 %784, i64 %788)
  %790 = load i32*, i32** %6, align 8
  %791 = call i32 @CL_PRINTF(i32* %790)
  %792 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %793 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %792, i32 0, i32 1
  %794 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %793, align 8
  %795 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %796 = call i64 %794(%struct.TYPE_61__* %795, i32 2376)
  %797 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %796, i64* %797, align 16
  %798 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %799 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %798, i32 0, i32 2
  %800 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %799, align 8
  %801 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %802 = call i32 %800(%struct.TYPE_61__* %801, i32 103)
  %803 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %802, i32* %803, align 16
  %804 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %805 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %804, i32 0, i32 1
  %806 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %805, align 8
  %807 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %808 = call i64 %806(%struct.TYPE_61__* %807, i32 1892)
  %809 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %808, i64* %809, align 8
  %810 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %811 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %810, i32 0, i32 2
  %812 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %811, align 8
  %813 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %814 = call i32 %812(%struct.TYPE_61__* %813, i32 1902)
  %815 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %814, i32* %815, align 4
  %816 = load i32*, i32** %6, align 8
  %817 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %818 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %819 = load i64, i64* %818, align 16
  %820 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %821 = load i32, i32* %820, align 16
  %822 = and i32 %821, 32
  %823 = ashr i32 %822, 5
  %824 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %825 = load i64, i64* %824, align 8
  %826 = and i64 %825, 65535
  %827 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %828 = load i32, i32* %827, align 4
  %829 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %816, i32 %817, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i64 0, i64 0), i64 %819, i32 %823, i64 %826, i32 %828)
  %830 = load i32*, i32** %6, align 8
  %831 = call i32 @CL_PRINTF(i32* %830)
  %832 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %833 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %832, i32 0, i32 1
  %834 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %833, align 8
  %835 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %836 = call i64 %834(%struct.TYPE_61__* %835, i32 2348)
  %837 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %836, i64* %837, align 16
  %838 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %839 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %838, i32 0, i32 1
  %840 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %839, align 8
  %841 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %842 = call i64 %840(%struct.TYPE_61__* %841, i32 2352)
  %843 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %842, i64* %843, align 8
  %844 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %845 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %844, i32 0, i32 1
  %846 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %845, align 8
  %847 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %848 = call i64 %846(%struct.TYPE_61__* %847, i32 2372)
  %849 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %848, i64* %849, align 16
  %850 = load i32*, i32** %6, align 8
  %851 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %852 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %853 = load i64, i64* %852, align 16
  %854 = and i64 %853, 3
  %855 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %856 = load i64, i64* %855, align 8
  %857 = and i64 %856, 255
  %858 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %859 = load i64, i64* %858, align 16
  %860 = and i64 %859, 3
  %861 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %850, i32 %851, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i64 0, i64 0), i64 %854, i64 %857, i64 %860)
  %862 = load i32*, i32** %6, align 8
  %863 = call i32 @CL_PRINTF(i32* %862)
  %864 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %865 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %864, i32 0, i32 2
  %866 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %865, align 8
  %867 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %868 = call i32 %866(%struct.TYPE_61__* %867, i32 57)
  %869 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %868, i32* %869, align 16
  %870 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %871 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %870, i32 0, i32 2
  %872 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %871, align 8
  %873 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %874 = call i32 %872(%struct.TYPE_61__* %873, i32 64)
  %875 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %874, i32* %875, align 4
  %876 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %877 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %876, i32 0, i32 1
  %878 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %877, align 8
  %879 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %880 = call i64 %878(%struct.TYPE_61__* %879, i32 76)
  %881 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %880, i64* %881, align 16
  %882 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %883 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %882, i32 0, i32 2
  %884 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %883, align 8
  %885 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %886 = call i32 %884(%struct.TYPE_61__* %885, i32 100)
  %887 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %886, i32* %887, align 8
  %888 = load i32*, i32** %6, align 8
  %889 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %890 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %891 = load i32, i32* %890, align 16
  %892 = and i32 %891, 8
  %893 = ashr i32 %892, 3
  %894 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %895 = load i32, i32* %894, align 4
  %896 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %897 = load i64, i64* %896, align 16
  %898 = and i64 %897, 25165824
  %899 = ashr i64 %898, 23
  %900 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %901 = load i32, i32* %900, align 8
  %902 = and i32 %901, 1
  %903 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %888, i32 %889, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.82, i64 0, i64 0), i32 %893, i32 %895, i64 %899, i32 %902)
  %904 = load i32*, i32** %6, align 8
  %905 = call i32 @CL_PRINTF(i32* %904)
  %906 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %907 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %906, i32 0, i32 1
  %908 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %907, align 8
  %909 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %910 = call i64 %908(%struct.TYPE_61__* %909, i32 1360)
  %911 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %910, i64* %911, align 16
  %912 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %913 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %912, i32 0, i32 2
  %914 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %913, align 8
  %915 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %916 = call i32 %914(%struct.TYPE_61__* %915, i32 1314)
  %917 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %916, i32* %917, align 16
  %918 = load i32*, i32** %6, align 8
  %919 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %920 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %921 = load i64, i64* %920, align 16
  %922 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %923 = load i32, i32* %922, align 16
  %924 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %918, i32 %919, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.84, i64 0, i64 0), i64 %921, i32 %923)
  %925 = load i32*, i32** %6, align 8
  %926 = call i32 @CL_PRINTF(i32* %925)
  %927 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %928 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %927, i32 0, i32 1
  %929 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %928, align 8
  %930 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %931 = call i64 %929(%struct.TYPE_61__* %930, i32 3152)
  %932 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %931, i64* %932, align 16
  %933 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %934 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %933, i32 0, i32 2
  %935 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %934, align 8
  %936 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %937 = call i32 %935(%struct.TYPE_61__* %936, i32 1180)
  %938 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %937, i32* %938, align 16
  %939 = load i32*, i32** %6, align 8
  %940 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %941 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %942 = load i64, i64* %941, align 16
  %943 = and i64 %942, 255
  %944 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %945 = load i32, i32* %944, align 16
  %946 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %939, i32 %940, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i64 0, i64 0), i64 %943, i32 %945)
  %947 = load i32*, i32** %6, align 8
  %948 = call i32 @CL_PRINTF(i32* %947)
  %949 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %950 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %949, i32 0, i32 1
  %951 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %950, align 8
  %952 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %953 = call i64 %951(%struct.TYPE_61__* %952, i32 3488)
  %954 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %953, i64* %954, align 16
  %955 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %956 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %955, i32 0, i32 1
  %957 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %956, align 8
  %958 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %959 = call i64 %957(%struct.TYPE_61__* %958, i32 3492)
  %960 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %959, i64* %960, align 8
  %961 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %962 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %961, i32 0, i32 1
  %963 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %962, align 8
  %964 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %965 = call i64 %963(%struct.TYPE_61__* %964, i32 3496)
  %966 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %965, i64* %966, align 16
  %967 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %968 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %967, i32 0, i32 1
  %969 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %968, align 8
  %970 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %971 = call i64 %969(%struct.TYPE_61__* %970, i32 3312)
  %972 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  store i64 %971, i64* %972, align 8
  %973 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %974 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %973, i32 0, i32 2
  %975 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %974, align 8
  %976 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %977 = call i32 %975(%struct.TYPE_61__* %976, i32 2651)
  %978 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %977, i32* %978, align 16
  %979 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %980 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %979, i32 0, i32 2
  %981 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %980, align 8
  %982 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %983 = call i32 %981(%struct.TYPE_61__* %982, i32 2652)
  %984 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %983, i32* %984, align 4
  %985 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %986 = load i64, i64* %985, align 16
  %987 = and i64 %986, 4294901760
  %988 = ashr i64 %987, 16
  %989 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %990 = load i64, i64* %989, align 8
  %991 = and i64 %990, 4294901760
  %992 = ashr i64 %991, 16
  %993 = add nsw i64 %988, %992
  %994 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %995 = load i64, i64* %994, align 8
  %996 = and i64 %995, 65535
  %997 = add nsw i64 %993, %996
  %998 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %999 = load i64, i64* %998, align 16
  %1000 = and i64 %999, 65535
  %1001 = add nsw i64 %997, %1000
  %1002 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  %1003 = load i64, i64* %1002, align 8
  %1004 = and i64 %1003, 4294901760
  %1005 = ashr i64 %1004, 16
  %1006 = add nsw i64 %1001, %1005
  %1007 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  %1008 = load i64, i64* %1007, align 8
  %1009 = and i64 %1008, 65535
  %1010 = add nsw i64 %1006, %1009
  store i64 %1010, i64* %24, align 8
  %1011 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %1012 = load i32, i32* %1011, align 16
  %1013 = shl i32 %1012, 8
  %1014 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %1015 = load i32, i32* %1014, align 4
  %1016 = add nsw i32 %1013, %1015
  %1017 = sext i32 %1016 to i64
  store i64 %1017, i64* %25, align 8
  %1018 = load i32*, i32** %6, align 8
  %1019 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %1020 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %1021 = load i64, i64* %1020, align 16
  %1022 = and i64 %1021, 65535
  %1023 = load i64, i64* %24, align 8
  %1024 = load i64, i64* %25, align 8
  %1025 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %1018, i32 %1019, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i64 0, i64 0), i64 %1022, i64 %1023, i64 %1024)
  %1026 = load i32*, i32** %6, align 8
  %1027 = call i32 @CL_PRINTF(i32* %1026)
  %1028 = load i32*, i32** %6, align 8
  %1029 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %1030 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1031 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1030, i32 0, i32 12
  %1032 = load i32, i32* %1031, align 8
  %1033 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1034 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1033, i32 0, i32 11
  %1035 = load i32, i32* %1034, align 4
  %1036 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1037 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1036, i32 0, i32 10
  %1038 = load i32, i32* %1037, align 8
  %1039 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1040 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1039, i32 0, i32 9
  %1041 = load i32, i32* %1040, align 4
  %1042 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %1028, i32 %1029, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0), i32 %1032, i32 %1035, i32 %1038, i32 %1041)
  %1043 = load i32*, i32** %6, align 8
  %1044 = call i32 @CL_PRINTF(i32* %1043)
  %1045 = load i32*, i32** %6, align 8
  %1046 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %1047 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1048 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1047, i32 0, i32 8
  %1049 = load i32, i32* %1048, align 8
  %1050 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1051 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1050, i32 0, i32 7
  %1052 = load i32, i32* %1051, align 4
  %1053 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1054 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1053, i32 0, i32 6
  %1055 = load i32, i32* %1054, align 8
  %1056 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1057 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1056, i32 0, i32 5
  %1058 = load i32, i32* %1057, align 4
  %1059 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %1045, i32 %1046, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.89, i64 0, i64 0), i32 %1049, i32 %1052, i32 %1055, i32 %1058)
  %1060 = load i32*, i32** %6, align 8
  %1061 = call i32 @CL_PRINTF(i32* %1060)
  %1062 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1063 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1062, i32 0, i32 1
  %1064 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %1063, align 8
  %1065 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1066 = call i64 %1064(%struct.TYPE_61__* %1065, i32 1728)
  %1067 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %1066, i64* %1067, align 16
  %1068 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1069 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1068, i32 0, i32 1
  %1070 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %1069, align 8
  %1071 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1072 = call i64 %1070(%struct.TYPE_61__* %1071, i32 1732)
  %1073 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %1072, i64* %1073, align 8
  %1074 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1075 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1074, i32 0, i32 1
  %1076 = load i64 (%struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_61__*, i32)** %1075, align 8
  %1077 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1078 = call i64 %1076(%struct.TYPE_61__* %1077, i32 1736)
  %1079 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %1078, i64* %1079, align 16
  %1080 = load i32*, i32** %6, align 8
  %1081 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %1082 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %1083 = load i64, i64* %1082, align 16
  %1084 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %1085 = load i64, i64* %1084, align 8
  %1086 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %1087 = load i64, i64* %1086, align 16
  %1088 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %1080, i32 %1081, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i64 0, i64 0), i64 %1083, i64 %1085, i64 %1087)
  %1089 = load i32*, i32** %6, align 8
  %1090 = call i32 @CL_PRINTF(i32* %1089)
  %1091 = load i32*, i32** %6, align 8
  %1092 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %1093 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1094 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1093, i32 0, i32 1
  %1095 = load i64, i64* %1094, align 8
  %1096 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1097 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1096, i32 0, i32 2
  %1098 = load i32, i32* %1097, align 8
  %1099 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %1091, i32 %1092, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i64 0, i64 0), i64 %1095, i32 %1098)
  %1100 = load i32*, i32** %6, align 8
  %1101 = call i32 @CL_PRINTF(i32* %1100)
  %1102 = load i32*, i32** %6, align 8
  %1103 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %1104 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1105 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1104, i32 0, i32 3
  %1106 = load i64, i64* %1105, align 8
  %1107 = load %struct.TYPE_63__*, %struct.TYPE_63__** @pCoexSta, align 8
  %1108 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1107, i32 0, i32 4
  %1109 = load i32, i32* %1108, align 8
  %1110 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %1102, i32 %1103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.92, i64 0, i64 0), i64 %1106, i32 %1109)
  %1111 = load i32*, i32** %6, align 8
  %1112 = call i32 @CL_PRINTF(i32* %1111)
  %1113 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1114 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1113, i32 0, i32 3
  %1115 = load i32 (%struct.TYPE_61__*, i32)*, i32 (%struct.TYPE_61__*, i32)** %1114, align 8
  %1116 = load %struct.TYPE_61__*, %struct.TYPE_61__** %2, align 8
  %1117 = load i32, i32* @BTC_DBG_DISP_COEX_STATISTICS, align 4
  %1118 = call i32 %1115(%struct.TYPE_61__* %1116, i32 %1117)
  ret void
}

declare dso_local i32 @CL_SPRINTF(i32*, i32, i8*, ...) #1

declare dso_local i32 @CL_PRINTF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
