; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_display_coex_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_display_coex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32, i32, i64, i64, i32* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i64, i32 (%struct.btc_coexist*, i32, i64*)*, %struct.btc_stack_info, %struct.btc_board_info }
%struct.btc_stack_info = type { i32, i32, i32, i32, i64, i32 }
%struct.btc_board_info = type { i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\0A ============[BT Coexist info]============\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A %-35s = %d/ %d \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Ant PG number/ Ant mechanism:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\0A %-35s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"[Action Manual control]!!\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\0A %-35s = %s / %d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BT stack/ hci ext ver\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\0A %-35s = %d_%d/ 0x%x/ 0x%x(%d)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", align 1
@glcoex_ver_date_8821a_2ant = common dso_local global i32 0, align 4
@glcoex_ver_8821a_2ant = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_DOT11_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_HS_CHNL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %d / %d(%d)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Dot11 channel / HsMode(HsChnl)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\0A %-35s = %3ph \00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"H2C Wifi inform bt chnl Info\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_S4_HS_RSSI = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"\0A %-35s = %ld/ %ld\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Wifi rssi/ HS rssi\00", align 1
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
@BT_INFO_SRC_8821A_2ANT_MAX = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [19 x i8] c"\0A %-35s = %7ph(%d)\00", align 1
@glbt_info_src_8821a_2ant = common dso_local global i32* null, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"\0A %-35s = %s/%s\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"PS state, IPS/LPS\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"IPS ON\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"IPS OFF\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"LPS ON\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"LPS OFF\00", align 1
@BTC_DBG_DISP_FW_PWR_MODE_CMD = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [39 x i8] c"============[Sw mechanism]============\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"\0A %-35s = %d/ %d/ %d(0x%x) \00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"============[Fw mechanism]============\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"\0A %-35s = %5ph case-%d\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"PS TDMA\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"DecBtPwr/ IgnWlanAct\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"============[Hw setting]============\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"\0A %-35s = 0x%x\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"RF-A, 0x1e initVal\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"\0A %-35s = 0x%x/ 0x%x \00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"0x778 (W_Act)/ 0x6cc (CoTab Sel)\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"0x8db(ADC)/0xc5b[29:25](DAC)\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"0xcb4[7:0](ctrl)/ 0xcb4[29:28](val)\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"0x40/ 0x4c[24:23]/ 0x974\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"0x550(bcn ctrl)/0x522\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"0xc50(DIG)/0xa0a(CCK-TH)\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"OFDM-FA/ CCK-FA\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"0x6c0/0x6c4/0x6c8\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"\0A %-35s = %d/ %d\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"0x770 (hi-pri Rx/Tx)\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"0x774(low-pri Rx/Tx)\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"0x41b (mgntQ hang chk == 0xf)\00", align 1
@BTC_DBG_DISP_COEX_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a2ant_display_coex_info(%struct.btc_coexist* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.btc_board_info*, align 8
  %6 = alloca %struct.btc_stack_info*, align 8
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
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 6
  store %struct.btc_board_info* %27, %struct.btc_board_info** %5, align 8
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 5
  store %struct.btc_stack_info* %29, %struct.btc_stack_info** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %34 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %37 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %2
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %50 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %55 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %56 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %54, i32 %57)
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %60 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %59, i32 0, i32 4
  %61 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %60, align 8
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %63 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %64 = call i32 %61(%struct.btc_coexist* %62, i32 %63, i64* %25)
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %66 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %65, i32 0, i32 4
  %67 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %66, align 8
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %69 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %70 = call i32 %67(%struct.btc_coexist* %68, i32 %69, i64* %24)
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = load i32, i32* @glcoex_ver_date_8821a_2ant, align 4
  %73 = load i32, i32* @glcoex_ver_8821a_2ant, align 4
  %74 = load i64, i64* %24, align 8
  %75 = load i64, i64* %25, align 8
  %76 = load i64, i64* %25, align 8
  %77 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %72, i32 %73, i64 %74, i64 %75, i64 %76)
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %79 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %78, i32 0, i32 4
  %80 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %79, align 8
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %83 = bitcast i32* %16 to i64*
  %84 = call i32 %80(%struct.btc_coexist* %81, i32 %82, i64* %83)
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %86 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %85, i32 0, i32 4
  %87 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %86, align 8
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %89 = load i32, i32* @BTC_GET_U1_WIFI_DOT11_CHNL, align 4
  %90 = bitcast i32* %22 to i64*
  %91 = call i32 %87(%struct.btc_coexist* %88, i32 %89, i64* %90)
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %93 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %92, i32 0, i32 4
  %94 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %93, align 8
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %96 = load i32, i32* @BTC_GET_U1_WIFI_HS_CHNL, align 4
  %97 = bitcast i32* %23 to i64*
  %98 = call i32 %94(%struct.btc_coexist* %95, i32 %96, i64* %97)
  %99 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %23, align 4
  %103 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %107)
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %110 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %109, i32 0, i32 4
  %111 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %110, align 8
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %113 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %114 = call i32 %111(%struct.btc_coexist* %112, i32 %113, i64* %18)
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %116 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %115, i32 0, i32 4
  %117 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %116, align 8
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %119 = load i32, i32* @BTC_GET_S4_HS_RSSI, align 4
  %120 = call i32 %117(%struct.btc_coexist* %118, i32 %119, i64* %19)
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* %19, align 8
  %124 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 %122, i64 %123)
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %126 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %125, i32 0, i32 4
  %127 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %126, align 8
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %129 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %130 = bitcast i32* %13 to i64*
  %131 = call i32 %127(%struct.btc_coexist* %128, i32 %129, i64* %130)
  %132 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %133 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %132, i32 0, i32 4
  %134 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %133, align 8
  %135 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %136 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %137 = bitcast i32* %14 to i64*
  %138 = call i32 %134(%struct.btc_coexist* %135, i32 %136, i64* %137)
  %139 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %140 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %139, i32 0, i32 4
  %141 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %140, align 8
  %142 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %143 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %144 = bitcast i32* %12 to i64*
  %145 = call i32 %141(%struct.btc_coexist* %142, i32 %143, i64* %144)
  %146 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %147, i32 %148, i32 %149)
  %151 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %152 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %151, i32 0, i32 4
  %153 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %152, align 8
  %154 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %155 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %156 = bitcast i32* %15 to i64*
  %157 = call i32 %153(%struct.btc_coexist* %154, i32 %155, i64* %156)
  %158 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %159 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %158, i32 0, i32 4
  %160 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %159, align 8
  %161 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %162 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %163 = call i32 %160(%struct.btc_coexist* %161, i32 %162, i64* %20)
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %165 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %164, i32 0, i32 4
  %166 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %165, align 8
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %168 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %169 = bitcast i32* %17 to i64*
  %170 = call i32 %166(%struct.btc_coexist* %167, i32 %168, i64* %169)
  %171 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %172 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %171, i32 0, i32 4
  %173 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %172, align 8
  %174 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %175 = load i32, i32* @BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, align 4
  %176 = call i32 %173(%struct.btc_coexist* %174, i32 %175, i64* %21)
  %177 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %182 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %183 = load i64, i64* %20, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %47
  br label %192

186:                                              ; preds = %47
  %187 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %188 = load i64, i64* %20, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  br label %192

192:                                              ; preds = %186, %185
  %193 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), %185 ], [ %191, %186 ]
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  br label %203

197:                                              ; preds = %192
  %198 = load i64, i64* @BTC_WIFI_TRAFFIC_TX, align 8
  %199 = load i64, i64* %21, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)
  br label %203

203:                                              ; preds = %197, %196
  %204 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %196 ], [ %202, %197 ]
  %205 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %181, i8* %193, i8* %204)
  %206 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %207 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %232

210:                                              ; preds = %203
  %211 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %212 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %213 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %216 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %219 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %222 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %214, i32 %217, i32 %220, i32 %223)
  %225 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %226 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %225, i32 0, i32 2
  %227 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %226, align 8
  %228 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %229 = load i32, i32* @BTC_DBG_DISP_BT_LINK_INFO, align 4
  %230 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %231 = call i32 %227(%struct.btc_coexist* %228, i32 %229, %struct.seq_file* %230)
  br label %232

232:                                              ; preds = %210, %203
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %9, align 4
  %236 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @BIT0, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)
  %243 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %236, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* %242)
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %282, %232
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @BT_INFO_SRC_8821A_2ANT_MAX, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %285

248:                                              ; preds = %244
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %281

257:                                              ; preds = %248
  %258 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %259 = load i32*, i32** @glbt_info_src_8821a_2ant, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 8
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %258, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* %265, i32 %272, i32 %279)
  br label %281

281:                                              ; preds = %257, %248
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %244

285:                                              ; preds = %244
  %286 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 7
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0)
  %299 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %286, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* %292, i8* %298)
  %300 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %301 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %300, i32 0, i32 2
  %302 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %301, align 8
  %303 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %304 = load i32, i32* @BTC_DBG_DISP_FW_PWR_MODE_CMD, align 4
  %305 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %306 = call i32 %302(%struct.btc_coexist* %303, i32 %304, %struct.seq_file* %305)
  %307 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %308 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0))
  %309 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %309, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0), i32 %312, i32 %315, i32 %318, i32 %321)
  %323 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %324 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %323, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0))
  %325 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %326 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %347, label %329

329:                                              ; preds = %285
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %10, align 4
  %333 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %10, align 4
  %338 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %333, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i32 %336, i32 %337)
  %339 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %339, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0), i32 %342, i32 %345)
  br label %347

347:                                              ; preds = %329, %285
  %348 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %349 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0))
  %350 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %350, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 %353)
  %355 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %356 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %355, i32 0, i32 0
  %357 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %356, align 8
  %358 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %359 = call i32 %357(%struct.btc_coexist* %358, i32 1912)
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %359, i32* %360, align 16
  %361 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %362 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %361, i32 0, i32 0
  %363 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %362, align 8
  %364 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %365 = call i32 %363(%struct.btc_coexist* %364, i32 1740)
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %365, i32* %366, align 4
  %367 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %369 = load i32, i32* %368, align 16
  %370 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %367, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0), i32 %369, i32 %371)
  %373 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %374 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %373, i32 0, i32 0
  %375 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %374, align 8
  %376 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %377 = call i32 %375(%struct.btc_coexist* %376, i32 2267)
  %378 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %377, i32* %378, align 16
  %379 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %380 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %379, i32 0, i32 0
  %381 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %380, align 8
  %382 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %383 = call i32 %381(%struct.btc_coexist* %382, i32 3163)
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %383, i32* %384, align 4
  %385 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %387 = load i32, i32* %386, align 16
  %388 = and i32 %387, 96
  %389 = ashr i32 %388, 5
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 62
  %393 = ashr i32 %392, 1
  %394 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %385, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i32 %389, i32 %393)
  %395 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %396 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %395, i32 0, i32 1
  %397 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %396, align 8
  %398 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %399 = call i64 %397(%struct.btc_coexist* %398, i32 3252)
  %400 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %399, i64* %400, align 16
  %401 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %402 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %403 = load i64, i64* %402, align 16
  %404 = and i64 %403, 255
  %405 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %406 = load i64, i64* %405, align 16
  %407 = and i64 %406, 805306368
  %408 = ashr i64 %407, 28
  %409 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %401, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0), i64 %404, i64 %408)
  %410 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %411 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %410, i32 0, i32 0
  %412 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %411, align 8
  %413 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %414 = call i32 %412(%struct.btc_coexist* %413, i32 64)
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %414, i32* %415, align 16
  %416 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %417 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %416, i32 0, i32 1
  %418 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %417, align 8
  %419 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %420 = call i64 %418(%struct.btc_coexist* %419, i32 76)
  %421 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %420, i64* %421, align 16
  %422 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %423 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %422, i32 0, i32 1
  %424 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %423, align 8
  %425 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %426 = call i64 %424(%struct.btc_coexist* %425, i32 2420)
  %427 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %426, i64* %427, align 8
  %428 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %430 = load i32, i32* %429, align 16
  %431 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %432 = load i64, i64* %431, align 16
  %433 = and i64 %432, 25165824
  %434 = ashr i64 %433, 23
  %435 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %436 = load i64, i64* %435, align 8
  %437 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %428, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i32 %430, i64 %434, i64 %436)
  %438 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %439 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %438, i32 0, i32 1
  %440 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %439, align 8
  %441 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %442 = call i64 %440(%struct.btc_coexist* %441, i32 1360)
  %443 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %442, i64* %443, align 16
  %444 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %445 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %444, i32 0, i32 0
  %446 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %445, align 8
  %447 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %448 = call i32 %446(%struct.btc_coexist* %447, i32 1314)
  %449 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %448, i32* %449, align 16
  %450 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %451 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %452 = load i64, i64* %451, align 16
  %453 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %454 = load i32, i32* %453, align 16
  %455 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %450, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0), i64 %452, i32 %454)
  %456 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %457 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %456, i32 0, i32 1
  %458 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %457, align 8
  %459 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %460 = call i64 %458(%struct.btc_coexist* %459, i32 3152)
  %461 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %460, i64* %461, align 16
  %462 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %463 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %462, i32 0, i32 0
  %464 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %463, align 8
  %465 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %466 = call i32 %464(%struct.btc_coexist* %465, i32 2570)
  %467 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %466, i32* %467, align 16
  %468 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %469 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %470 = load i64, i64* %469, align 16
  %471 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %472 = load i32, i32* %471, align 16
  %473 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %468, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0), i64 %470, i32 %472)
  %474 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %475 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %474, i32 0, i32 1
  %476 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %475, align 8
  %477 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %478 = call i64 %476(%struct.btc_coexist* %477, i32 3912)
  %479 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %478, i64* %479, align 16
  %480 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %481 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %480, i32 0, i32 0
  %482 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %481, align 8
  %483 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %484 = call i32 %482(%struct.btc_coexist* %483, i32 2651)
  %485 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %484, i32* %485, align 16
  %486 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %487 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %486, i32 0, i32 0
  %488 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %487, align 8
  %489 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %490 = call i32 %488(%struct.btc_coexist* %489, i32 2652)
  %491 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %490, i32* %491, align 4
  %492 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %493 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %494 = load i64, i64* %493, align 16
  %495 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %496 = load i32, i32* %495, align 16
  %497 = shl i32 %496, 8
  %498 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %499 = load i32, i32* %498, align 4
  %500 = add nsw i32 %497, %499
  %501 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %492, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i64 %494, i32 %500)
  %502 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %503 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %502, i32 0, i32 1
  %504 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %503, align 8
  %505 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %506 = call i64 %504(%struct.btc_coexist* %505, i32 1728)
  %507 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %506, i64* %507, align 16
  %508 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %509 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %508, i32 0, i32 1
  %510 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %509, align 8
  %511 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %512 = call i64 %510(%struct.btc_coexist* %511, i32 1732)
  %513 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %512, i64* %513, align 8
  %514 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %515 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %514, i32 0, i32 1
  %516 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %515, align 8
  %517 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %518 = call i64 %516(%struct.btc_coexist* %517, i32 1736)
  %519 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %518, i64* %519, align 16
  %520 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %521 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %522 = load i64, i64* %521, align 16
  %523 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %524 = load i64, i64* %523, align 8
  %525 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  %526 = load i64, i64* %525, align 16
  %527 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %520, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i64 %522, i64 %524, i64 %526)
  %528 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %529 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %530 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i32 0, i32 5
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %533 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 8
  %535 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i64 0, i64 0), i32 %531, i32 %534)
  %536 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 3
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i64 0, i64 0), i32 %539, i32 %542)
  %544 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %545 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %544, i32 0, i32 0
  %546 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %545, align 8
  %547 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %548 = call i32 %546(%struct.btc_coexist* %547, i32 1051)
  %549 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %548, i32* %549, align 16
  %550 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %551 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %552 = load i32, i32* %551, align 16
  %553 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %550, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0), i32 %552)
  %554 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %555 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %554, i32 0, i32 2
  %556 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %555, align 8
  %557 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %558 = load i32, i32* @BTC_DBG_DISP_COEX_STATISTICS, align 4
  %559 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %560 = call i32 %556(%struct.btc_coexist* %557, i32 %558, %struct.seq_file* %559)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
