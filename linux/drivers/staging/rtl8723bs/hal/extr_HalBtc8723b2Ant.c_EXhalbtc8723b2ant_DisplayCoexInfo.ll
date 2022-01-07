; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_DisplayCoexInfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_DisplayCoexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_59__ = type { i64, i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_58__ = type { i32, i64, i32, i64, i32, i64, i64, i64*, i32**, i32, i32, i64 }
%struct.TYPE_56__ = type { i32*, i32 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)*, %struct.TYPE_54__, i32 (%struct.TYPE_56__*, i32, i64*)*, i64, %struct.TYPE_57__, %struct.TYPE_55__, %struct.TYPE_60__ }
%struct.TYPE_54__ = type { i64 }
%struct.TYPE_57__ = type { i32, i32, i32, i32 }
%struct.TYPE_55__ = type { i32, i64 }
%struct.TYPE_60__ = type { i64, i32 }

@BT_TMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\0D\0A ============[BT Coexist info]============\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\0D\0A ============[Under Manual Control]============\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\0D\0A ==========================================\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\0D\0A %-35s = %d/ %d \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Ant PG number/ Ant mechanism:\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0D\0A %-35s = %s / %d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BT stack/ hci ext ver\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"\0D\0A %-35s = %d_%x/ 0x%x/ 0x%x(%d)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", align 1
@GLCoexVerDate8723b2Ant = common dso_local global i32 0, align 4
@GLCoexVer8723b2Ant = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_DOT11_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_HS_CHNL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"\0D\0A %-35s = %d / %d(%d)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Dot11 channel / HsChnl(HsMode)\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\0D\0A %-35s = %02x %02x %02x \00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"H2C Wifi inform bt chnl Info\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_59__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_S4_HS_RSSI = common dso_local global i32 0, align 4
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"\0D\0A %-35s = %d/ %d/ %d\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Wifi rssi/ HS rssi/ AP#\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"\0D\0A %-35s = %d/ %d/ %d \00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Wifi bLink/ bRoam/ bScan\00", align 1
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_TRAFFIC_DIRECTION = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"\0D\0A %-35s = %s / %s/ %s \00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Wifi status\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"5G\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"2.4G\00", align 1
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"Legacy\00", align 1
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"HT40\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"HT20\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@BTC_WIFI_TRAFFIC_TX = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"uplink\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"downlink\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"\0D\0A %-35s = [%s/ %d/ %d] \00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"BT [status/ rssi/ retryCnt]\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_58__* null, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"inquiry/page scan\00", align 1
@BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [19 x i8] c"non-connected idle\00", align 1
@BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [15 x i8] c"connected-idle\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"\0D\0A %-35s = %d / %d / %d / %d\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"SCO/HID/PAN/A2DP\00", align 1
@BTC_DBG_DISP_BT_LINK_INFO = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"\0D\0A %-35s = %s\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"BT Info A2DP rate\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [11 x i8] c"Basic rate\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"EDR rate\00", align 1
@BT_INFO_SRC_8723B_2ANT_MAX = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [50 x i8] c"\0D\0A %-35s = %02x %02x %02x %02x %02x %02x %02x(%d)\00", align 1
@GLBtInfoSrc8723b2Ant = common dso_local global i32* null, align 8
@.str.43 = private unnamed_addr constant [17 x i8] c"\0D\0A %-35s = %s/%s\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"PS state, IPS/LPS\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"IPS ON\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"IPS OFF\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"LPS ON\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"LPS OFF\00", align 1
@BTC_DBG_DISP_FW_PWR_MODE_CMD = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"\0D\0A %-35s\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"============[Sw mechanism]============\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"SM1[ShRf/ LpRA/ LimDig]\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"\0D\0A %-35s = %d/ %d/ %d(0x%x) \00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"============[Fw mechanism]============\00", align 1
@.str.55 = private unnamed_addr constant [54 x i8] c"\0D\0A %-35s = %02x %02x %02x %02x %02x case-%d (auto:%d)\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"PS TDMA\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"DecBtPwr/ IgnWlanAct\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"============[Hw setting]============\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"\0D\0A %-35s = 0x%x\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"RF-A, 0x1e initVal\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"\0D\0A %-35s = 0x%x/ 0x%x\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"0x778/0x880[29:25]\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"\0D\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"0x948/ 0x67[5] / 0x765\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"0x92c[1:0]/ 0x930[7:0]/0x944[1:0]\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"\0D\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"0x38[11]/0x40/0x4c[24:23]/0x64[0]\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"0x550(bcn ctrl)/0x522\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"0xc50(dig)/0x49c(null-drop)\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"OFDM-CCA/OFDM-FA/CCK-FA\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"\0D\0A %-35s = %d/ %d\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"0x770(high-pri rx/tx)\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"0x774(low-pri rx/tx)\00", align 1
@BTC_DBG_DISP_COEX_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b2ant_DisplayCoexInfo(%struct.TYPE_56__* %0) #0 {
  %2 = alloca %struct.TYPE_56__*, align 8
  %3 = alloca %struct.TYPE_60__*, align 8
  %4 = alloca %struct.TYPE_55__*, align 8
  %5 = alloca %struct.TYPE_57__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i64], align 16
  %12 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %2, align 8
  %29 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %29, i32 0, i32 9
  store %struct.TYPE_60__* %30, %struct.TYPE_60__** %3, align 8
  %31 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %31, i32 0, i32 8
  store %struct.TYPE_55__* %32, %struct.TYPE_55__** %4, align 8
  %33 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %33, i32 0, i32 7
  store %struct.TYPE_57__* %34, %struct.TYPE_57__** %5, align 8
  %35 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %40 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %38, i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @CL_PRINTF(i32* %41)
  %43 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %1
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %50 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %48, i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @CL_PRINTF(i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %53, i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @CL_PRINTF(i32* %56)
  br label %58

58:                                               ; preds = %47, %1
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %61 = load %struct.TYPE_60__*, %struct.TYPE_60__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_60__*, %struct.TYPE_60__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %59, i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %63, i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @CL_PRINTF(i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %72 = load %struct.TYPE_55__*, %struct.TYPE_55__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %78 = load %struct.TYPE_55__*, %struct.TYPE_55__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %70, i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %77, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @CL_PRINTF(i32* %82)
  %84 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %84, i32 0, i32 5
  %86 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %85, align 8
  %87 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %88 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %89 = call i32 %86(%struct.TYPE_56__* %87, i32 %88, i64* %27)
  %90 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %90, i32 0, i32 5
  %92 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %91, align 8
  %93 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %94 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %95 = call i32 %92(%struct.TYPE_56__* %93, i32 %94, i64* %26)
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %98 = load i32, i32* @GLCoexVerDate8723b2Ant, align 4
  %99 = load i32, i32* @GLCoexVer8723b2Ant, align 4
  %100 = load i64, i64* %26, align 8
  %101 = load i64, i64* %27, align 8
  %102 = load i64, i64* %27, align 8
  %103 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %96, i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %98, i32 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @CL_PRINTF(i32* %104)
  %106 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %106, i32 0, i32 5
  %108 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %107, align 8
  %109 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %110 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %111 = bitcast i32* %16 to i64*
  %112 = call i32 %108(%struct.TYPE_56__* %109, i32 %110, i64* %111)
  %113 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %113, i32 0, i32 5
  %115 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %114, align 8
  %116 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %117 = load i32, i32* @BTC_GET_U1_WIFI_DOT11_CHNL, align 4
  %118 = bitcast i32* %24 to i64*
  %119 = call i32 %115(%struct.TYPE_56__* %116, i32 %117, i64* %118)
  %120 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %120, i32 0, i32 5
  %122 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %121, align 8
  %123 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %124 = load i32, i32* @BTC_GET_U1_WIFI_HS_CHNL, align 4
  %125 = bitcast i32* %25 to i64*
  %126 = call i32 %122(%struct.TYPE_56__* %123, i32 %124, i64* %125)
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %129 = load i32, i32* %24, align 4
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %16, align 4
  %132 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %127, i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %129, i32 %130, i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @CL_PRINTF(i32* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %137 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %138 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %137, i32 0, i32 14
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %143 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %142, i32 0, i32 14
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %148 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %147, i32 0, i32 14
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %135, i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %141, i32 %146, i32 %151)
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @CL_PRINTF(i32* %153)
  %155 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %155, i32 0, i32 5
  %157 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %156, align 8
  %158 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %159 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %160 = bitcast i32* %18 to i64*
  %161 = call i32 %157(%struct.TYPE_56__* %158, i32 %159, i64* %160)
  %162 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %162, i32 0, i32 5
  %164 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %163, align 8
  %165 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %166 = load i32, i32* @BTC_GET_S4_HS_RSSI, align 4
  %167 = bitcast i32* %19 to i64*
  %168 = call i32 %164(%struct.TYPE_56__* %165, i32 %166, i64* %167)
  %169 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %169, i32 0, i32 5
  %171 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %170, align 8
  %172 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %173 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %174 = bitcast i32* %28 to i64*
  %175 = call i32 %171(%struct.TYPE_56__* %172, i32 %173, i64* %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %28, align 4
  %181 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %176, i32 %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %178, i32 %179, i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @CL_PRINTF(i32* %182)
  %184 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %184, i32 0, i32 5
  %186 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %185, align 8
  %187 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %188 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %189 = bitcast i32* %13 to i64*
  %190 = call i32 %186(%struct.TYPE_56__* %187, i32 %188, i64* %189)
  %191 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %191, i32 0, i32 5
  %193 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %192, align 8
  %194 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %195 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %196 = bitcast i32* %14 to i64*
  %197 = call i32 %193(%struct.TYPE_56__* %194, i32 %195, i64* %196)
  %198 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %198, i32 0, i32 5
  %200 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %199, align 8
  %201 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %202 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %203 = bitcast i32* %12 to i64*
  %204 = call i32 %200(%struct.TYPE_56__* %201, i32 %202, i64* %203)
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %205, i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %207, i32 %208, i32 %209)
  %211 = load i32*, i32** %6, align 8
  %212 = call i32 @CL_PRINTF(i32* %211)
  %213 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %213, i32 0, i32 5
  %215 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %214, align 8
  %216 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %217 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %218 = bitcast i32* %15 to i64*
  %219 = call i32 %215(%struct.TYPE_56__* %216, i32 %217, i64* %218)
  %220 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %220, i32 0, i32 5
  %222 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %221, align 8
  %223 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %224 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %225 = call i32 %222(%struct.TYPE_56__* %223, i32 %224, i64* %20)
  %226 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %226, i32 0, i32 5
  %228 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %227, align 8
  %229 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %230 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %231 = bitcast i32* %17 to i64*
  %232 = call i32 %228(%struct.TYPE_56__* %229, i32 %230, i64* %231)
  %233 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %233, i32 0, i32 5
  %235 = load i32 (%struct.TYPE_56__*, i32, i64*)*, i32 (%struct.TYPE_56__*, i32, i64*)** %234, align 8
  %236 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %237 = load i32, i32* @BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, align 4
  %238 = call i32 %235(%struct.TYPE_56__* %236, i32 %237, i64* %21)
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %245 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %246 = load i64, i64* %20, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %58
  br label %255

249:                                              ; preds = %58
  %250 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %251 = load i64, i64* %20, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  br label %255

255:                                              ; preds = %249, %248
  %256 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), %248 ], [ %254, %249 ]
  %257 = load i32, i32* %17, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  br label %266

260:                                              ; preds = %255
  %261 = load i64, i64* @BTC_WIFI_TRAFFIC_TX, align 8
  %262 = load i64, i64* %21, align 8
  %263 = icmp eq i64 %261, %262
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)
  br label %266

266:                                              ; preds = %260, %259
  %267 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %259 ], [ %265, %260 ]
  %268 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %239, i32 %240, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %244, i8* %256, i8* %267)
  %269 = load i32*, i32** %6, align 8
  %270 = call i32 @CL_PRINTF(i32* %269)
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %273 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %266
  br label %304

279:                                              ; preds = %266
  %280 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %281 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %280, i32 0, i32 11
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  br label %302

285:                                              ; preds = %279
  %286 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %287 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %288 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %286, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  br label %300

292:                                              ; preds = %285
  %293 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %294 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %295 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %293, %296
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)
  br label %300

300:                                              ; preds = %292, %291
  %301 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), %291 ], [ %299, %292 ]
  br label %302

302:                                              ; preds = %300, %284
  %303 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), %284 ], [ %301, %300 ]
  br label %304

304:                                              ; preds = %302, %278
  %305 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), %278 ], [ %303, %302 ]
  %306 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %307 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %306, i32 0, i32 10
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %310 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %309, i32 0, i32 9
  %311 = load i32, i32* %310, align 8
  %312 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %271, i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* %305, i32 %308, i32 %311)
  %313 = load i32*, i32** %6, align 8
  %314 = call i32 @CL_PRINTF(i32* %313)
  %315 = load i32*, i32** %6, align 8
  %316 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %317 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %315, i32 %316, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i32 %319, i32 %322, i32 %325, i32 %328)
  %330 = load i32*, i32** %6, align 8
  %331 = call i32 @CL_PRINTF(i32* %330)
  %332 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %332, i32 0, i32 3
  %334 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %333, align 8
  %335 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %336 = load i32, i32* @BTC_DBG_DISP_BT_LINK_INFO, align 4
  %337 = call i32 %334(%struct.TYPE_56__* %335, i32 %336)
  %338 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %339 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  store i32 %340, i32* %9, align 4
  %341 = load i32*, i32** %6, align 8
  %342 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* @BIT0, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0)
  %349 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %341, i32 %342, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i8* %348)
  %350 = load i32*, i32** %6, align 8
  %351 = call i32 @CL_PRINTF(i32* %350)
  store i32 0, i32* %8, align 4
  br label %352

352:                                              ; preds = %447, %304
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_MAX, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %450

356:                                              ; preds = %352
  %357 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %358 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %357, i32 0, i32 7
  %359 = load i64*, i64** %358, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %446

365:                                              ; preds = %356
  %366 = load i32*, i32** %6, align 8
  %367 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %368 = load i32*, i32** @GLBtInfoSrc8723b2Ant, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %374 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %373, i32 0, i32 8
  %375 = load i32**, i32*** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32*, i32** %375, i64 %377
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %383 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %382, i32 0, i32 8
  %384 = load i32**, i32*** %383, align 8
  %385 = load i32, i32* %8, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32*, i32** %384, i64 %386
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %392 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %391, i32 0, i32 8
  %393 = load i32**, i32*** %392, align 8
  %394 = load i32, i32* %8, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32*, i32** %393, i64 %395
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 2
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %401 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %400, i32 0, i32 8
  %402 = load i32**, i32*** %401, align 8
  %403 = load i32, i32* %8, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32*, i32** %402, i64 %404
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 3
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %410 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %409, i32 0, i32 8
  %411 = load i32**, i32*** %410, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32*, i32** %411, i64 %413
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 4
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %419 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %418, i32 0, i32 8
  %420 = load i32**, i32*** %419, align 8
  %421 = load i32, i32* %8, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32*, i32** %420, i64 %422
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 5
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %428 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %427, i32 0, i32 8
  %429 = load i32**, i32*** %428, align 8
  %430 = load i32, i32* %8, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32*, i32** %429, i64 %431
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 6
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %437 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %436, i32 0, i32 7
  %438 = load i64*, i64** %437, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i64, i64* %438, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %366, i32 %367, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i64 0, i64 0), i32 %372, i32 %381, i32 %390, i32 %399, i32 %408, i32 %417, i32 %426, i32 %435, i64 %442)
  %444 = load i32*, i32** %6, align 8
  %445 = call i32 @CL_PRINTF(i32* %444)
  br label %446

446:                                              ; preds = %365, %356
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %8, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %8, align 4
  br label %352

450:                                              ; preds = %352
  %451 = load i32*, i32** %6, align 8
  %452 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %453 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %454 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %453, i32 0, i32 6
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  %457 = zext i1 %456 to i64
  %458 = select i1 %456, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)
  %459 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %460 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %459, i32 0, i32 5
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  %463 = zext i1 %462 to i64
  %464 = select i1 %462, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0)
  %465 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %451, i32 %452, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i8* %458, i8* %464)
  %466 = load i32*, i32** %6, align 8
  %467 = call i32 @CL_PRINTF(i32* %466)
  %468 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %468, i32 0, i32 3
  %470 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %469, align 8
  %471 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %472 = load i32, i32* @BTC_DBG_DISP_FW_PWR_MODE_CMD, align 4
  %473 = call i32 %470(%struct.TYPE_56__* %471, i32 %472)
  %474 = load i32*, i32** %6, align 8
  %475 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %476 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %474, i32 %475, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i64 0, i64 0))
  %477 = load i32*, i32** %6, align 8
  %478 = call i32 @CL_PRINTF(i32* %477)
  %479 = load i32*, i32** %6, align 8
  %480 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %481 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %482 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %481, i32 0, i32 13
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %485 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %484, i32 0, i32 12
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %488 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %487, i32 0, i32 11
  %489 = load i32, i32* %488, align 8
  %490 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %479, i32 %480, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0), i32 %483, i32 %486, i32 %489)
  %491 = load i32*, i32** %6, align 8
  %492 = call i32 @CL_PRINTF(i32* %491)
  %493 = load i32*, i32** %6, align 8
  %494 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %495 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %496 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %495, i32 0, i32 10
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %499 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %498, i32 0, i32 9
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %502 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %501, i32 0, i32 8
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %505 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %504, i32 0, i32 7
  %506 = load i32, i32* %505, align 8
  %507 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %493, i32 %494, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0), i32 %497, i32 %500, i32 %503, i32 %506)
  %508 = load i32*, i32** %6, align 8
  %509 = call i32 @CL_PRINTF(i32* %508)
  %510 = load i32*, i32** %6, align 8
  %511 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %512 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %510, i32 %511, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i64 0, i64 0))
  %513 = load i32*, i32** %6, align 8
  %514 = call i32 @CL_PRINTF(i32* %513)
  %515 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %516 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  store i32 %517, i32* %10, align 4
  %518 = load i32*, i32** %6, align 8
  %519 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %520 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %521 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %520, i32 0, i32 6
  %522 = load i32*, i32** %521, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 0
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %526 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %525, i32 0, i32 6
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 1
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %531 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %530, i32 0, i32 6
  %532 = load i32*, i32** %531, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 2
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %536 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %535, i32 0, i32 6
  %537 = load i32*, i32** %536, align 8
  %538 = getelementptr inbounds i32, i32* %537, i64 3
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %541 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %540, i32 0, i32 6
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 4
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* %10, align 4
  %546 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %547 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %546, i32 0, i32 5
  %548 = load i32, i32* %547, align 8
  %549 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %518, i32 %519, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i32 %524, i32 %529, i32 %534, i32 %539, i32 %544, i32 %545, i32 %548)
  %550 = load i32*, i32** %6, align 8
  %551 = call i32 @CL_PRINTF(i32* %550)
  %552 = load i32*, i32** %6, align 8
  %553 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %554 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %555 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %554, i32 0, i32 2
  %556 = load i64, i64* %555, align 8
  %557 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %558 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %552, i32 %553, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i64 %556, i32 %559)
  %561 = load i32*, i32** %6, align 8
  %562 = call i32 @CL_PRINTF(i32* %561)
  %563 = load i32*, i32** %6, align 8
  %564 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %565 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %563, i32 %564, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i64 0, i64 0))
  %566 = load i32*, i32** %6, align 8
  %567 = call i32 @CL_PRINTF(i32* %566)
  %568 = load i32*, i32** %6, align 8
  %569 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %570 = load %struct.TYPE_59__*, %struct.TYPE_59__** @pCoexDm, align 8
  %571 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 4
  %573 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %568, i32 %569, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i64 0, i64 0), i32 %572)
  %574 = load i32*, i32** %6, align 8
  %575 = call i32 @CL_PRINTF(i32* %574)
  %576 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %577 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %576, i32 0, i32 1
  %578 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %577, align 8
  %579 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %580 = call i32 %578(%struct.TYPE_56__* %579, i32 1912)
  %581 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %580, i32* %581, align 16
  %582 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %583 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %582, i32 0, i32 2
  %584 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %583, align 8
  %585 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %586 = call i64 %584(%struct.TYPE_56__* %585, i32 2176)
  %587 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %586, i64* %587, align 16
  %588 = load i32*, i32** %6, align 8
  %589 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %590 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %591 = load i32, i32* %590, align 16
  %592 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %593 = load i64, i64* %592, align 16
  %594 = and i64 %593, 1040187392
  %595 = ashr i64 %594, 25
  %596 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %588, i32 %589, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i64 0, i64 0), i32 %591, i64 %595)
  %597 = load i32*, i32** %6, align 8
  %598 = call i32 @CL_PRINTF(i32* %597)
  %599 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %600 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %599, i32 0, i32 2
  %601 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %600, align 8
  %602 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %603 = call i64 %601(%struct.TYPE_56__* %602, i32 2376)
  %604 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %603, i64* %604, align 16
  %605 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %606 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %605, i32 0, i32 1
  %607 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %606, align 8
  %608 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %609 = call i32 %607(%struct.TYPE_56__* %608, i32 103)
  %610 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %609, i32* %610, align 16
  %611 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %612 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %611, i32 0, i32 1
  %613 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %612, align 8
  %614 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %615 = call i32 %613(%struct.TYPE_56__* %614, i32 1893)
  %616 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %615, i32* %616, align 4
  %617 = load i32*, i32** %6, align 8
  %618 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %619 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %620 = load i64, i64* %619, align 16
  %621 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %622 = load i32, i32* %621, align 16
  %623 = and i32 %622, 32
  %624 = ashr i32 %623, 5
  %625 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %626 = load i32, i32* %625, align 4
  %627 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %617, i32 %618, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i64 %620, i32 %624, i32 %626)
  %628 = load i32*, i32** %6, align 8
  %629 = call i32 @CL_PRINTF(i32* %628)
  %630 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %631 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %630, i32 0, i32 2
  %632 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %631, align 8
  %633 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %634 = call i64 %632(%struct.TYPE_56__* %633, i32 2348)
  %635 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %634, i64* %635, align 16
  %636 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %637 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %636, i32 0, i32 2
  %638 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %637, align 8
  %639 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %640 = call i64 %638(%struct.TYPE_56__* %639, i32 2352)
  %641 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %640, i64* %641, align 8
  %642 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %643 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %642, i32 0, i32 2
  %644 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %643, align 8
  %645 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %646 = call i64 %644(%struct.TYPE_56__* %645, i32 2372)
  %647 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %646, i64* %647, align 16
  %648 = load i32*, i32** %6, align 8
  %649 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %650 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %651 = load i64, i64* %650, align 16
  %652 = and i64 %651, 3
  %653 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %654 = load i64, i64* %653, align 8
  %655 = and i64 %654, 255
  %656 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  %657 = load i64, i64* %656, align 16
  %658 = and i64 %657, 3
  %659 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %648, i32 %649, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i64 0, i64 0), i64 %652, i64 %655, i64 %658)
  %660 = load i32*, i32** %6, align 8
  %661 = call i32 @CL_PRINTF(i32* %660)
  %662 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %663 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %662, i32 0, i32 1
  %664 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %663, align 8
  %665 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %666 = call i32 %664(%struct.TYPE_56__* %665, i32 57)
  %667 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %666, i32* %667, align 16
  %668 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %669 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %668, i32 0, i32 1
  %670 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %669, align 8
  %671 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %672 = call i32 %670(%struct.TYPE_56__* %671, i32 64)
  %673 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %672, i32* %673, align 4
  %674 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %675 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %674, i32 0, i32 2
  %676 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %675, align 8
  %677 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %678 = call i64 %676(%struct.TYPE_56__* %677, i32 76)
  %679 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %678, i64* %679, align 16
  %680 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %681 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %680, i32 0, i32 1
  %682 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %681, align 8
  %683 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %684 = call i32 %682(%struct.TYPE_56__* %683, i32 100)
  %685 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %684, i32* %685, align 8
  %686 = load i32*, i32** %6, align 8
  %687 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %688 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %689 = load i32, i32* %688, align 16
  %690 = and i32 %689, 8
  %691 = ashr i32 %690, 3
  %692 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %693 = load i32, i32* %692, align 4
  %694 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %695 = load i64, i64* %694, align 16
  %696 = and i64 %695, 25165824
  %697 = ashr i64 %696, 23
  %698 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %699 = load i32, i32* %698, align 8
  %700 = and i32 %699, 1
  %701 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %686, i32 %687, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i64 0, i64 0), i32 %691, i32 %693, i64 %697, i32 %700)
  %702 = load i32*, i32** %6, align 8
  %703 = call i32 @CL_PRINTF(i32* %702)
  %704 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %705 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %704, i32 0, i32 2
  %706 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %705, align 8
  %707 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %708 = call i64 %706(%struct.TYPE_56__* %707, i32 1360)
  %709 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %708, i64* %709, align 16
  %710 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %711 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %710, i32 0, i32 1
  %712 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %711, align 8
  %713 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %714 = call i32 %712(%struct.TYPE_56__* %713, i32 1314)
  %715 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %714, i32* %715, align 16
  %716 = load i32*, i32** %6, align 8
  %717 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %718 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %719 = load i64, i64* %718, align 16
  %720 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %721 = load i32, i32* %720, align 16
  %722 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %716, i32 %717, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i64 %719, i32 %721)
  %723 = load i32*, i32** %6, align 8
  %724 = call i32 @CL_PRINTF(i32* %723)
  %725 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %726 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %725, i32 0, i32 2
  %727 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %726, align 8
  %728 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %729 = call i64 %727(%struct.TYPE_56__* %728, i32 3152)
  %730 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %729, i64* %730, align 16
  %731 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %732 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %731, i32 0, i32 1
  %733 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %732, align 8
  %734 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %735 = call i32 %733(%struct.TYPE_56__* %734, i32 1180)
  %736 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %735, i32* %736, align 16
  %737 = load i32*, i32** %6, align 8
  %738 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %739 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %740 = load i64, i64* %739, align 16
  %741 = and i64 %740, 255
  %742 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %743 = load i32, i32* %742, align 16
  %744 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %737, i32 %738, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i64 0, i64 0), i64 %741, i32 %743)
  %745 = load i32*, i32** %6, align 8
  %746 = call i32 @CL_PRINTF(i32* %745)
  %747 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %748 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %747, i32 0, i32 2
  %749 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %748, align 8
  %750 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %751 = call i64 %749(%struct.TYPE_56__* %750, i32 3488)
  %752 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %751, i64* %752, align 16
  %753 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %754 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %753, i32 0, i32 2
  %755 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %754, align 8
  %756 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %757 = call i64 %755(%struct.TYPE_56__* %756, i32 3492)
  %758 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %757, i64* %758, align 8
  %759 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %760 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %759, i32 0, i32 2
  %761 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %760, align 8
  %762 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %763 = call i64 %761(%struct.TYPE_56__* %762, i32 3496)
  %764 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %763, i64* %764, align 16
  %765 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %766 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %765, i32 0, i32 2
  %767 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %766, align 8
  %768 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %769 = call i64 %767(%struct.TYPE_56__* %768, i32 3312)
  %770 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 %769, i64* %770, align 8
  %771 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %772 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %771, i32 0, i32 1
  %773 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %772, align 8
  %774 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %775 = call i32 %773(%struct.TYPE_56__* %774, i32 2651)
  %776 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %775, i32* %776, align 16
  %777 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %778 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %777, i32 0, i32 1
  %779 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %778, align 8
  %780 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %781 = call i32 %779(%struct.TYPE_56__* %780, i32 2652)
  %782 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %781, i32* %782, align 4
  %783 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %784 = load i64, i64* %783, align 16
  %785 = and i64 %784, 4294901760
  %786 = ashr i64 %785, 16
  %787 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %788 = load i64, i64* %787, align 8
  %789 = and i64 %788, 4294901760
  %790 = ashr i64 %789, 16
  %791 = add nsw i64 %786, %790
  %792 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %793 = load i64, i64* %792, align 8
  %794 = and i64 %793, 65535
  %795 = add nsw i64 %791, %794
  %796 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  %797 = load i64, i64* %796, align 16
  %798 = and i64 %797, 65535
  %799 = add nsw i64 %795, %798
  %800 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %801 = load i64, i64* %800, align 8
  %802 = and i64 %801, 4294901760
  %803 = ashr i64 %802, 16
  %804 = add nsw i64 %799, %803
  %805 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %806 = load i64, i64* %805, align 8
  %807 = and i64 %806, 65535
  %808 = add nsw i64 %804, %807
  store i64 %808, i64* %22, align 8
  %809 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %810 = load i32, i32* %809, align 16
  %811 = shl i32 %810, 8
  %812 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %813 = load i32, i32* %812, align 4
  %814 = add nsw i32 %811, %813
  %815 = sext i32 %814 to i64
  store i64 %815, i64* %23, align 8
  %816 = load i32*, i32** %6, align 8
  %817 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %818 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %819 = load i64, i64* %818, align 16
  %820 = and i64 %819, 65535
  %821 = load i64, i64* %22, align 8
  %822 = load i64, i64* %23, align 8
  %823 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %816, i32 %817, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i64 0, i64 0), i64 %820, i64 %821, i64 %822)
  %824 = load i32*, i32** %6, align 8
  %825 = call i32 @CL_PRINTF(i32* %824)
  %826 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %827 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %826, i32 0, i32 2
  %828 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %827, align 8
  %829 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %830 = call i64 %828(%struct.TYPE_56__* %829, i32 1728)
  %831 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %830, i64* %831, align 16
  %832 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %833 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %832, i32 0, i32 2
  %834 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %833, align 8
  %835 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %836 = call i64 %834(%struct.TYPE_56__* %835, i32 1732)
  %837 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %836, i64* %837, align 8
  %838 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %839 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %838, i32 0, i32 2
  %840 = load i64 (%struct.TYPE_56__*, i32)*, i64 (%struct.TYPE_56__*, i32)** %839, align 8
  %841 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %842 = call i64 %840(%struct.TYPE_56__* %841, i32 1736)
  %843 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %842, i64* %843, align 16
  %844 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %845 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %844, i32 0, i32 1
  %846 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %845, align 8
  %847 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %848 = call i32 %846(%struct.TYPE_56__* %847, i32 1740)
  %849 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %848, i32* %849, align 16
  %850 = load i32*, i32** %6, align 8
  %851 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %852 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %853 = load i64, i64* %852, align 16
  %854 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %855 = load i64, i64* %854, align 8
  %856 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  %857 = load i64, i64* %856, align 16
  %858 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %859 = load i32, i32* %858, align 16
  %860 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %850, i32 %851, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.71, i64 0, i64 0), i64 %853, i64 %855, i64 %857, i32 %859)
  %861 = load i32*, i32** %6, align 8
  %862 = call i32 @CL_PRINTF(i32* %861)
  %863 = load i32*, i32** %6, align 8
  %864 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %865 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %866 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %865, i32 0, i32 1
  %867 = load i64, i64* %866, align 8
  %868 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %869 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %868, i32 0, i32 2
  %870 = load i32, i32* %869, align 8
  %871 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %863, i32 %864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0), i64 %867, i32 %870)
  %872 = load i32*, i32** %6, align 8
  %873 = call i32 @CL_PRINTF(i32* %872)
  %874 = load i32*, i32** %6, align 8
  %875 = load i32, i32* @BT_TMP_BUF_SIZE, align 4
  %876 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %877 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %876, i32 0, i32 3
  %878 = load i64, i64* %877, align 8
  %879 = load %struct.TYPE_58__*, %struct.TYPE_58__** @pCoexSta, align 8
  %880 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %879, i32 0, i32 4
  %881 = load i32, i32* %880, align 8
  %882 = call i32 (i32*, i32, i8*, ...) @CL_SPRINTF(i32* %874, i32 %875, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i64 0, i64 0), i64 %878, i32 %881)
  %883 = load i32*, i32** %6, align 8
  %884 = call i32 @CL_PRINTF(i32* %883)
  %885 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %886 = call i32 @halbtc8723b2ant_MonitorBtCtr(%struct.TYPE_56__* %885)
  %887 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %888 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %887, i32 0, i32 3
  %889 = load i32 (%struct.TYPE_56__*, i32)*, i32 (%struct.TYPE_56__*, i32)** %888, align 8
  %890 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %891 = load i32, i32* @BTC_DBG_DISP_COEX_STATISTICS, align 4
  %892 = call i32 %889(%struct.TYPE_56__* %890, i32 %891)
  ret void
}

declare dso_local i32 @CL_SPRINTF(i32*, i32, i8*, ...) #1

declare dso_local i32 @CL_PRINTF(i32*) #1

declare dso_local i32 @halbtc8723b2ant_MonitorBtCtr(%struct.TYPE_56__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
