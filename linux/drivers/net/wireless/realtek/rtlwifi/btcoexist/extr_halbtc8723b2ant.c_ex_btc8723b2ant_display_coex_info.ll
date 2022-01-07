; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_display_coex_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_display_coex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i64*, i64, i32, i64, i32, i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i64, i32 (%struct.btc_coexist*, i32, i64*)*, i64, %struct.btc_bt_link_info, %struct.btc_stack_info, %struct.btc_board_info }
%struct.btc_bt_link_info = type { i32, i32, i32, i32 }
%struct.btc_stack_info = type { i32, i64 }
%struct.btc_board_info = type { i64, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\0A ============[BT Coexist info]============\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\0A ==========[Under Manual Control]============\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\0A ==========================================\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A %-35s = %d/ %d \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Ant PG number/ Ant mechanism:\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\0A %-35s = %s / %d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BT stack/ hci ext ver\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\0A %-35s = %d_%x/ 0x%x/ 0x%x(%d)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", align 1
@glcoex_ver_date_8723b_2ant = common dso_local global i32 0, align 4
@glcoex_ver_8723b_2ant = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_DOT11_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_HS_CHNL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %d / %d(%d)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Dot11 channel / HsChnl(HsMode)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\0A %-35s = %3ph \00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"H2C Wifi inform bt chnl Info\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_S4_HS_RSSI = common dso_local global i32 0, align 4
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"\0A %-35s = %d/ %d/ %d\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Wifi rssi/ HS rssi/ AP#\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %d/ %d/ %d \00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Wifi link/ roam/ scan\00", align 1
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_TRAFFIC_DIRECTION = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"\0A %-35s = %s / %s/ %s \00", align 1
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
@.str.29 = private unnamed_addr constant [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"SCO/HID/PAN/A2DP\00", align 1
@BTC_DBG_DISP_BT_LINK_INFO = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.31 = private unnamed_addr constant [13 x i8] c"\0A %-35s = %s\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"BT Info A2DP rate\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"Basic rate\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"EDR rate\00", align 1
@BT_INFO_SRC_8723B_2ANT_MAX = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [19 x i8] c"\0A %-35s = %7ph(%d)\00", align 1
@glbt_info_src_8723b_2ant = common dso_local global i8** null, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"\0A %-35s = %s/%s\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"PS state, IPS/LPS\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"IPS ON\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"IPS OFF\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"LPS ON\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"LPS OFF\00", align 1
@BTC_DBG_DISP_FW_PWR_MODE_CMD = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [8 x i8] c"\0A %-35s\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"============[Sw mechanism]============\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"SM1[ShRf/ LpRA/ LimDig]\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"\0A %-35s = %d/ %d/ %d(0x%x) \00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"============[Fw mechanism]============\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"PS TDMA\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"DecBtPwr/ IgnWlanAct\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"============[Hw setting]============\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"\0A %-35s = 0x%x\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"RF-A, 0x1e initVal\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"0x778/0x880[29:25]\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"0x948/ 0x67[5] / 0x765\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"0x92c[1:0]/ 0x930[7:0]/0x944[1:0]\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"0x38[11]/0x40/0x4c[24:23]/0x64[0]\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"0x550(bcn ctrl)/0x522\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"0xc50(dig)/0x49c(null-drop)\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"OFDM-CCA/OFDM-FA/CCK-FA\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"\0A %-35s = %d/ %d\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"0x770(high-pri rx/tx)\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"0x774(low-pri rx/tx)\00", align 1
@BTC_DBG_DISP_COEX_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b2ant_display_coex_info(%struct.btc_coexist* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.btc_board_info*, align 8
  %6 = alloca %struct.btc_stack_info*, align 8
  %7 = alloca %struct.btc_bt_link_info*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 8
  store %struct.btc_board_info* %31, %struct.btc_board_info** %5, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 7
  store %struct.btc_stack_info* %33, %struct.btc_stack_info** %6, align 8
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %34, i32 0, i32 6
  store %struct.btc_bt_link_info* %35, %struct.btc_bt_link_info** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %29, align 4
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = call i32 @seq_puts(%struct.seq_file* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = call i32 @seq_puts(%struct.seq_file* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %2
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %50 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %53 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %51, i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %57 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %58 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %63 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %64 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %62, i32 %65)
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %68 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %67, i32 0, i32 4
  %69 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %68, align 8
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %71 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %72 = call i32 %69(%struct.btc_coexist* %70, i32 %71, i64* %28)
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %74 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %73, i32 0, i32 4
  %75 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %74, align 8
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %77 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %78 = call i32 %75(%struct.btc_coexist* %76, i32 %77, i64* %27)
  %79 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %80 = load i32, i32* @glcoex_ver_date_8723b_2ant, align 4
  %81 = load i32, i32* @glcoex_ver_8723b_2ant, align 4
  %82 = load i64, i64* %27, align 8
  %83 = load i64, i64* %28, align 8
  %84 = load i64, i64* %28, align 8
  %85 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %80, i32 %81, i64 %82, i64 %83, i64 %84)
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %87 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %86, i32 0, i32 4
  %88 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %87, align 8
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %90 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %91 = bitcast i32* %17 to i64*
  %92 = call i32 %88(%struct.btc_coexist* %89, i32 %90, i64* %91)
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %94 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %93, i32 0, i32 4
  %95 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %94, align 8
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %97 = load i32, i32* @BTC_GET_U1_WIFI_DOT11_CHNL, align 4
  %98 = bitcast i32* %25 to i64*
  %99 = call i32 %95(%struct.btc_coexist* %96, i32 %97, i64* %98)
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %101 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %100, i32 0, i32 4
  %102 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %101, align 8
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %104 = load i32, i32* @BTC_GET_U1_WIFI_HS_CHNL, align 4
  %105 = bitcast i32* %26 to i64*
  %106 = call i32 %102(%struct.btc_coexist* %103, i32 %104, i64* %105)
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* %26, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %108, i32 %109, i32 %110)
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %115)
  %117 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %118 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %117, i32 0, i32 4
  %119 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %118, align 8
  %120 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %121 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %122 = bitcast i32* %19 to i64*
  %123 = call i32 %119(%struct.btc_coexist* %120, i32 %121, i64* %122)
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %125 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %124, i32 0, i32 4
  %126 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %125, align 8
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %128 = load i32, i32* @BTC_GET_S4_HS_RSSI, align 4
  %129 = bitcast i32* %20 to i64*
  %130 = call i32 %126(%struct.btc_coexist* %127, i32 %128, i64* %129)
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %132 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %131, i32 0, i32 4
  %133 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %132, align 8
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %135 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %136 = bitcast i32* %29 to i64*
  %137 = call i32 %133(%struct.btc_coexist* %134, i32 %135, i64* %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %29, align 4
  %142 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %144 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %143, i32 0, i32 4
  %145 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %144, align 8
  %146 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %147 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %148 = bitcast i32* %14 to i64*
  %149 = call i32 %145(%struct.btc_coexist* %146, i32 %147, i64* %148)
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %151 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %150, i32 0, i32 4
  %152 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %151, align 8
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %154 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %155 = bitcast i32* %15 to i64*
  %156 = call i32 %152(%struct.btc_coexist* %153, i32 %154, i64* %155)
  %157 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %158 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %157, i32 0, i32 4
  %159 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %158, align 8
  %160 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %161 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %162 = bitcast i32* %13 to i64*
  %163 = call i32 %159(%struct.btc_coexist* %160, i32 %161, i64* %162)
  %164 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %165, i32 %166, i32 %167)
  %169 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %170 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %169, i32 0, i32 4
  %171 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %170, align 8
  %172 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %173 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %174 = bitcast i32* %16 to i64*
  %175 = call i32 %171(%struct.btc_coexist* %172, i32 %173, i64* %174)
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %177 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %176, i32 0, i32 4
  %178 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %177, align 8
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %180 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %181 = call i32 %178(%struct.btc_coexist* %179, i32 %180, i64* %21)
  %182 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %183 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %182, i32 0, i32 4
  %184 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %183, align 8
  %185 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %186 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %187 = bitcast i32* %18 to i64*
  %188 = call i32 %184(%struct.btc_coexist* %185, i32 %186, i64* %187)
  %189 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %190 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %189, i32 0, i32 4
  %191 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %190, align 8
  %192 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %193 = load i32, i32* @BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, align 4
  %194 = call i32 %191(%struct.btc_coexist* %192, i32 %193, i64* %22)
  %195 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %200 = load i64, i64* %21, align 8
  %201 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %47
  br label %210

204:                                              ; preds = %47
  %205 = load i64, i64* %21, align 8
  %206 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  br label %210

210:                                              ; preds = %204, %203
  %211 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), %203 ], [ %209, %204 ]
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  br label %221

215:                                              ; preds = %210
  %216 = load i64, i64* %22, align 8
  %217 = load i64, i64* @BTC_WIFI_TRAFFIC_TX, align 8
  %218 = icmp eq i64 %216, %217
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)
  br label %221

221:                                              ; preds = %215, %214
  %222 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %214 ], [ %220, %215 ]
  %223 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %199, i8* %211, i8* %222)
  %224 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %225 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %226 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %229 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %232 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %235 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %227, i32 %230, i32 %233, i32 %236)
  %238 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %239 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %238, i32 0, i32 2
  %240 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %239, align 8
  %241 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %242 = load i32, i32* @BTC_DBG_DISP_BT_LINK_INFO, align 4
  %243 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %244 = call i32 %240(%struct.btc_coexist* %241, i32 %242, %struct.seq_file* %243)
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %10, align 4
  %248 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* @BIT0, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)
  %255 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %248, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* %254)
  store i32 0, i32* %9, align 4
  br label %256

256:                                              ; preds = %292, %221
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* @BT_INFO_SRC_8723B_2ANT_MAX, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %295

260:                                              ; preds = %256
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %291

269:                                              ; preds = %260
  %270 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %271 = load i8**, i8*** @glbt_info_src_8723b_2ant, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 2
  %278 = load i64*, i64** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %270, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* %275, i64 %282, i32 %289)
  br label %291

291:                                              ; preds = %269, %260
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %9, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %9, align 4
  br label %256

295:                                              ; preds = %256
  %296 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 8
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 7
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0)
  %309 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %296, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* %302, i8* %308)
  %310 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %311 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %310, i32 0, i32 2
  %312 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %311, align 8
  %313 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %314 = load i32, i32* @BTC_DBG_DISP_FW_PWR_MODE_CMD, align 4
  %315 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %316 = call i32 %312(%struct.btc_coexist* %313, i32 %314, %struct.seq_file* %315)
  %317 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %318 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0))
  %319 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 12
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 11
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %319, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i32 %322, i32 %325, i32 %328)
  %330 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 8
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %330, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i64 0, i64 0), i32 %333, i32 %336, i32 %339, i32 %342)
  %344 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %345 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.47, i64 0, i64 0))
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  store i32 %348, i32* %11, align 4
  %349 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %11, align 4
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %349, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i32 %352, i32 %353, i32 %356)
  %358 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %358, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i64 %361, i32 %364)
  %366 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %367 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %366, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0))
  %368 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %368, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), i32 %371)
  %373 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %374 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %373, i32 0, i32 0
  %375 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %374, align 8
  %376 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %377 = call i32 %375(%struct.btc_coexist* %376, i32 1912)
  %378 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %377, i32* %378, align 16
  %379 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %380 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %379, i32 0, i32 1
  %381 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %380, align 8
  %382 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %383 = call i64 %381(%struct.btc_coexist* %382, i32 2176)
  %384 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %383, i64* %384, align 16
  %385 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %387 = load i32, i32* %386, align 16
  %388 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %389 = load i64, i64* %388, align 16
  %390 = and i64 %389, 1040187392
  %391 = ashr i64 %390, 25
  %392 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %385, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i64 0, i64 0), i32 %387, i64 %391)
  %393 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %394 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %393, i32 0, i32 1
  %395 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %394, align 8
  %396 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %397 = call i64 %395(%struct.btc_coexist* %396, i32 2376)
  %398 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %397, i64* %398, align 16
  %399 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %400 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %399, i32 0, i32 0
  %401 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %400, align 8
  %402 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %403 = call i32 %401(%struct.btc_coexist* %402, i32 103)
  %404 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %403, i32* %404, align 16
  %405 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %406 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %405, i32 0, i32 0
  %407 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %406, align 8
  %408 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %409 = call i32 %407(%struct.btc_coexist* %408, i32 1893)
  %410 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %409, i32* %410, align 4
  %411 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %412 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %413 = load i64, i64* %412, align 16
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %415 = load i32, i32* %414, align 16
  %416 = and i32 %415, 32
  %417 = ashr i32 %416, 5
  %418 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %411, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), i64 %413, i32 %417, i32 %419)
  %421 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %422 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %421, i32 0, i32 1
  %423 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %422, align 8
  %424 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %425 = call i64 %423(%struct.btc_coexist* %424, i32 2348)
  %426 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %425, i64* %426, align 16
  %427 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %428 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %427, i32 0, i32 1
  %429 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %428, align 8
  %430 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %431 = call i64 %429(%struct.btc_coexist* %430, i32 2352)
  %432 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %431, i64* %432, align 8
  %433 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %434 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %433, i32 0, i32 1
  %435 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %434, align 8
  %436 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %437 = call i64 %435(%struct.btc_coexist* %436, i32 2372)
  %438 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %437, i64* %438, align 16
  %439 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %440 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %441 = load i64, i64* %440, align 16
  %442 = and i64 %441, 3
  %443 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %444 = load i64, i64* %443, align 8
  %445 = and i64 %444, 255
  %446 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %447 = load i64, i64* %446, align 16
  %448 = and i64 %447, 3
  %449 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %439, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i64 0, i64 0), i64 %442, i64 %445, i64 %448)
  %450 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %451 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %450, i32 0, i32 0
  %452 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %451, align 8
  %453 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %454 = call i32 %452(%struct.btc_coexist* %453, i32 57)
  %455 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %454, i32* %455, align 16
  %456 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %457 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %456, i32 0, i32 0
  %458 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %457, align 8
  %459 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %460 = call i32 %458(%struct.btc_coexist* %459, i32 64)
  %461 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %460, i32* %461, align 4
  %462 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %463 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %462, i32 0, i32 1
  %464 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %463, align 8
  %465 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %466 = call i64 %464(%struct.btc_coexist* %465, i32 76)
  %467 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %466, i64* %467, align 16
  %468 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %469 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %468, i32 0, i32 0
  %470 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %469, align 8
  %471 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %472 = call i32 %470(%struct.btc_coexist* %471, i32 100)
  %473 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %472, i32* %473, align 8
  %474 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %475 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %476 = load i32, i32* %475, align 16
  %477 = and i32 %476, 8
  %478 = ashr i32 %477, 3
  %479 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %480 = load i32, i32* %479, align 4
  %481 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %482 = load i64, i64* %481, align 16
  %483 = and i64 %482, 25165824
  %484 = ashr i64 %483, 23
  %485 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %486 = load i32, i32* %485, align 8
  %487 = and i32 %486, 1
  %488 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %474, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i64 0, i64 0), i32 %478, i32 %480, i64 %484, i32 %487)
  %489 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %490 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %489, i32 0, i32 1
  %491 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %490, align 8
  %492 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %493 = call i64 %491(%struct.btc_coexist* %492, i32 1360)
  %494 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %493, i64* %494, align 16
  %495 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %496 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %495, i32 0, i32 0
  %497 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %496, align 8
  %498 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %499 = call i32 %497(%struct.btc_coexist* %498, i32 1314)
  %500 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %499, i32* %500, align 16
  %501 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %502 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %503 = load i64, i64* %502, align 16
  %504 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %505 = load i32, i32* %504, align 16
  %506 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %501, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0), i64 %503, i32 %505)
  %507 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %508 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %507, i32 0, i32 1
  %509 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %508, align 8
  %510 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %511 = call i64 %509(%struct.btc_coexist* %510, i32 3152)
  %512 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %511, i64* %512, align 16
  %513 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %514 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %513, i32 0, i32 0
  %515 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %514, align 8
  %516 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %517 = call i32 %515(%struct.btc_coexist* %516, i32 1180)
  %518 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %517, i32* %518, align 16
  %519 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %520 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %521 = load i64, i64* %520, align 16
  %522 = and i64 %521, 255
  %523 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %524 = load i32, i32* %523, align 16
  %525 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %519, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0), i64 %522, i32 %524)
  %526 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %527 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %526, i32 0, i32 1
  %528 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %527, align 8
  %529 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %530 = call i64 %528(%struct.btc_coexist* %529, i32 3488)
  %531 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %530, i64* %531, align 16
  %532 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %533 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %532, i32 0, i32 1
  %534 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %533, align 8
  %535 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %536 = call i64 %534(%struct.btc_coexist* %535, i32 3492)
  %537 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %536, i64* %537, align 8
  %538 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %539 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %538, i32 0, i32 1
  %540 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %539, align 8
  %541 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %542 = call i64 %540(%struct.btc_coexist* %541, i32 3496)
  %543 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %542, i64* %543, align 16
  %544 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %545 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %544, i32 0, i32 1
  %546 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %545, align 8
  %547 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %548 = call i64 %546(%struct.btc_coexist* %547, i32 3312)
  %549 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  store i64 %548, i64* %549, align 8
  %550 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %551 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %550, i32 0, i32 0
  %552 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %551, align 8
  %553 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %554 = call i32 %552(%struct.btc_coexist* %553, i32 2651)
  %555 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %554, i32* %555, align 16
  %556 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %557 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %556, i32 0, i32 0
  %558 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %557, align 8
  %559 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %560 = call i32 %558(%struct.btc_coexist* %559, i32 2652)
  %561 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %560, i32* %561, align 4
  %562 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %563 = load i64, i64* %562, align 16
  %564 = and i64 %563, 4294901760
  %565 = ashr i64 %564, 16
  %566 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %567 = load i64, i64* %566, align 8
  %568 = and i64 %567, 4294901760
  %569 = ashr i64 %568, 16
  %570 = add nsw i64 %565, %569
  %571 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %572 = load i64, i64* %571, align 8
  %573 = and i64 %572, 65535
  %574 = add nsw i64 %570, %573
  %575 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %576 = load i64, i64* %575, align 16
  %577 = and i64 %576, 65535
  %578 = add nsw i64 %574, %577
  %579 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  %580 = load i64, i64* %579, align 8
  %581 = and i64 %580, 4294901760
  %582 = ashr i64 %581, 16
  %583 = add nsw i64 %578, %582
  %584 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  %585 = load i64, i64* %584, align 8
  %586 = and i64 %585, 65535
  %587 = add nsw i64 %583, %586
  store i64 %587, i64* %23, align 8
  %588 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %589 = load i32, i32* %588, align 16
  %590 = shl i32 %589, 8
  %591 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %592 = load i32, i32* %591, align 4
  %593 = add nsw i32 %590, %592
  %594 = sext i32 %593 to i64
  store i64 %594, i64* %24, align 8
  %595 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %596 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %597 = load i64, i64* %596, align 16
  %598 = and i64 %597, 65535
  %599 = load i64, i64* %23, align 8
  %600 = load i64, i64* %24, align 8
  %601 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %595, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i64 %598, i64 %599, i64 %600)
  %602 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %603 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %602, i32 0, i32 1
  %604 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %603, align 8
  %605 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %606 = call i64 %604(%struct.btc_coexist* %605, i32 1728)
  %607 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %606, i64* %607, align 16
  %608 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %609 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %608, i32 0, i32 1
  %610 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %609, align 8
  %611 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %612 = call i64 %610(%struct.btc_coexist* %611, i32 1732)
  %613 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %612, i64* %613, align 8
  %614 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %615 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %614, i32 0, i32 1
  %616 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %615, align 8
  %617 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %618 = call i64 %616(%struct.btc_coexist* %617, i32 1736)
  %619 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %618, i64* %619, align 16
  %620 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %621 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %620, i32 0, i32 0
  %622 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %621, align 8
  %623 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %624 = call i32 %622(%struct.btc_coexist* %623, i32 1740)
  %625 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %624, i32* %625, align 16
  %626 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %627 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %628 = load i64, i64* %627, align 16
  %629 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %630 = load i64, i64* %629, align 8
  %631 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %632 = load i64, i64* %631, align 16
  %633 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %634 = load i32, i32* %633, align 16
  %635 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %626, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i64 0, i64 0), i64 %628, i64 %630, i64 %632, i32 %634)
  %636 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %637 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %638 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %637, i32 0, i32 3
  %639 = load i64, i64* %638, align 8
  %640 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %641 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %640, i32 0, i32 4
  %642 = load i32, i32* %641, align 8
  %643 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %636, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0), i64 %639, i32 %642)
  %644 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %645 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %646 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %645, i32 0, i32 5
  %647 = load i64, i64* %646, align 8
  %648 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %649 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %648, i32 0, i32 6
  %650 = load i32, i32* %649, align 8
  %651 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %644, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i64 %647, i32 %650)
  %652 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %653 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %652, i32 0, i32 3
  %654 = load i64, i64* %653, align 8
  %655 = icmp ne i64 %654, 0
  br i1 %655, label %656, label %659

656:                                              ; preds = %295
  %657 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %658 = call i32 @btc8723b2ant_monitor_bt_ctr(%struct.btc_coexist* %657)
  br label %659

659:                                              ; preds = %656, %295
  %660 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %661 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %660, i32 0, i32 2
  %662 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %661, align 8
  %663 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %664 = load i32, i32* @BTC_DBG_DISP_COEX_STATISTICS, align 4
  %665 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %666 = call i32 %662(%struct.btc_coexist* %663, i32 %664, %struct.seq_file* %665)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @btc8723b2ant_monitor_bt_ctr(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
