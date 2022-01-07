; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_display_coex_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_display_coex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i64*, i64, i32, i64, i32, i64, i64, i32, i32, i64 }
%struct.btc_coexist = type { i64 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i64, i32 (%struct.btc_coexist*, i32)*, %struct.TYPE_4__, i32 (%struct.btc_coexist*, i32, i64*)*, i64, %struct.btc_stack_info, %struct.btc_board_info }
%struct.TYPE_4__ = type { i32, i64 }
%struct.btc_stack_info = type { i32, i32, i32, i32, i32, i64 }
%struct.btc_board_info = type { i64, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\0A ============[BT Coexist info]============\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\0A ===========[Under Manual Control]===========\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\0A ==========================================\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A %-35s = %d/ %d \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Ant PG number/ Ant mechanism:\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\0A %-35s = %s / %d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BT stack/ hci ext ver\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\0A %-35s = %d_%d/ 0x%x/ 0x%x(%d)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", align 1
@glcoex_ver_date_8192e_2ant = common dso_local global i32 0, align 4
@glcoex_ver_8192e_2ant = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_DOT11_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_HS_CHNL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %d / %d(%d)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Dot11 channel / HsMode(HsChnl)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\0A %-35s = %3ph \00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"H2C Wifi inform bt chnl Info\00", align 1
@coex_dm = common dso_local global %struct.TYPE_6__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_S4_HS_RSSI = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"\0A %-35s = %d/ %d\00", align 1
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
@.str.29 = private unnamed_addr constant [24 x i8] c"\0A %-35s = [%s/ %d/ %d] \00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"BT [status/ rssi/ retryCnt]\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@coex_sta = common dso_local global %struct.TYPE_5__* null, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"inquiry/page scan\00", align 1
@BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [19 x i8] c"non-connected idle\00", align 1
@BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [15 x i8] c"connected-idle\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"SCO/HID/PAN/A2DP\00", align 1
@BTC_DBG_DISP_BT_LINK_INFO = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [13 x i8] c"\0A %-35s = %s\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"BT Info A2DP rate\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [11 x i8] c"Basic rate\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"EDR rate\00", align 1
@BT_INFO_SRC_8192E_2ANT_MAX = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [19 x i8] c"\0A %-35s = %7ph(%d)\00", align 1
@glbt_info_src_8192e_2ant = common dso_local global i8** null, align 8
@.str.43 = private unnamed_addr constant [16 x i8] c"\0A %-35s = %s/%s\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"PS state, IPS/LPS\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"IPS ON\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"IPS OFF\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"LPS ON\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"LPS OFF\00", align 1
@BTC_DBG_DISP_FW_PWR_MODE_CMD = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [16 x i8] c"\0A %-35s = 0x%x \00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"SS Type\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"\0A %-35s\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"============[Sw mechanism]============\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"SM1[ShRf/ LpRA/ LimDig]\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"\0A %-35s = %d/ %d/ %d(0x%x) \00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Rate Mask\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"============[Fw mechanism]============\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"PS TDMA\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"DecBtPwr/ IgnWlanAct\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"============[Hw setting]============\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"\0A %-35s = 0x%x\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"RF-A, 0x1e initVal\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"\0A %-35s = 0x%x/0x%x/0x%x/0x%x\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"backup ARFR1/ARFR2/RL/AMaxTime\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"0x430/0x434/0x42a/0x456\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"0xc04/ 0xd04/ 0x90c\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"0x778\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"0x92c/ 0x930\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"0x40/ 0x4f\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"0x550(bcn ctrl)/0x522\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"0xc50(dig)\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"0x770(hp rx[31:16]/tx[15:0])\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"0x774(lp rx[31:16]/tx[15:0])\00", align 1
@BTC_DBG_DISP_COEX_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8192e2ant_display_coex_info(%struct.btc_coexist* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.btc_board_info*, align 8
  %6 = alloca %struct.btc_stack_info*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 9
  store %struct.btc_board_info* %28, %struct.btc_board_info** %5, align 8
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 8
  store %struct.btc_stack_info* %30, %struct.btc_stack_info** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = call i32 @seq_puts(%struct.seq_file* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = call i32 @seq_puts(%struct.seq_file* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %2
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %45 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %48 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %46, i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %53 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %58 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %59 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %57, i32 %60)
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %63 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %62, i32 0, i32 6
  %64 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %63, align 8
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %66 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %67 = call i32 %64(%struct.btc_coexist* %65, i32 %66, i64* %26)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %69 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %68, i32 0, i32 6
  %70 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %69, align 8
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %72 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %73 = call i32 %70(%struct.btc_coexist* %71, i32 %72, i64* %25)
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = load i32, i32* @glcoex_ver_date_8192e_2ant, align 4
  %76 = load i32, i32* @glcoex_ver_8192e_2ant, align 4
  %77 = load i64, i64* %25, align 8
  %78 = load i64, i64* %26, align 8
  %79 = load i64, i64* %26, align 8
  %80 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %75, i32 %76, i64 %77, i64 %78, i64 %79)
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %81, i32 0, i32 6
  %83 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %82, align 8
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %86 = bitcast i32* %17 to i64*
  %87 = call i32 %83(%struct.btc_coexist* %84, i32 %85, i64* %86)
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %89 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %88, i32 0, i32 6
  %90 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %89, align 8
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %92 = load i32, i32* @BTC_GET_U1_WIFI_DOT11_CHNL, align 4
  %93 = bitcast i32* %23 to i64*
  %94 = call i32 %90(%struct.btc_coexist* %91, i32 %92, i64* %93)
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %96 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %95, i32 0, i32 6
  %97 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %96, align 8
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %99 = load i32, i32* @BTC_GET_U1_WIFI_HS_CHNL, align 4
  %100 = bitcast i32* %24 to i64*
  %101 = call i32 %97(%struct.btc_coexist* %98, i32 %99, i64* %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %24, align 4
  %106 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 19
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %110)
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %113 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %112, i32 0, i32 6
  %114 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %113, align 8
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %116 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %117 = bitcast i32* %19 to i64*
  %118 = call i32 %114(%struct.btc_coexist* %115, i32 %116, i64* %117)
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %120 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %119, i32 0, i32 6
  %121 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %120, align 8
  %122 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %123 = load i32, i32* @BTC_GET_S4_HS_RSSI, align 4
  %124 = bitcast i32* %20 to i64*
  %125 = call i32 %121(%struct.btc_coexist* %122, i32 %123, i64* %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %20, align 4
  %129 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %131 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %130, i32 0, i32 6
  %132 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %131, align 8
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %134 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %135 = bitcast i32* %14 to i64*
  %136 = call i32 %132(%struct.btc_coexist* %133, i32 %134, i64* %135)
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %138 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %137, i32 0, i32 6
  %139 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %138, align 8
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %141 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %142 = bitcast i32* %15 to i64*
  %143 = call i32 %139(%struct.btc_coexist* %140, i32 %141, i64* %142)
  %144 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %145 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %144, i32 0, i32 6
  %146 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %145, align 8
  %147 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %148 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %149 = bitcast i32* %13 to i64*
  %150 = call i32 %146(%struct.btc_coexist* %147, i32 %148, i64* %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %152, i32 %153, i32 %154)
  %156 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %157 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %156, i32 0, i32 6
  %158 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %157, align 8
  %159 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %160 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %161 = bitcast i32* %16 to i64*
  %162 = call i32 %158(%struct.btc_coexist* %159, i32 %160, i64* %161)
  %163 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %164 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %163, i32 0, i32 6
  %165 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %164, align 8
  %166 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %167 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %168 = call i32 %165(%struct.btc_coexist* %166, i32 %167, i64* %21)
  %169 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %170 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %169, i32 0, i32 6
  %171 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %170, align 8
  %172 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %173 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %174 = bitcast i32* %18 to i64*
  %175 = call i32 %171(%struct.btc_coexist* %172, i32 %173, i64* %174)
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %177 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %176, i32 0, i32 6
  %178 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %177, align 8
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %180 = load i32, i32* @BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, align 4
  %181 = call i32 %178(%struct.btc_coexist* %179, i32 %180, i64* %22)
  %182 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %187 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %188 = load i64, i64* %21, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %42
  br label %197

191:                                              ; preds = %42
  %192 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %193 = load i64, i64* %21, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  br label %197

197:                                              ; preds = %191, %190
  %198 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), %190 ], [ %196, %191 ]
  %199 = load i32, i32* %18, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  br label %208

202:                                              ; preds = %197
  %203 = load i64, i64* @BTC_WIFI_TRAFFIC_TX, align 8
  %204 = load i64, i64* %22, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)
  br label %208

208:                                              ; preds = %202, %201
  %209 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %201 ], [ %207, %202 ]
  %210 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %182, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %186, i8* %198, i8* %209)
  %211 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %212 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %213 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  br label %243

218:                                              ; preds = %208
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 11
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %241

224:                                              ; preds = %218
  %225 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %239

231:                                              ; preds = %224
  %232 = load i64, i64* @BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %232, %235
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)
  br label %239

239:                                              ; preds = %231, %230
  %240 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), %230 ], [ %238, %231 ]
  br label %241

241:                                              ; preds = %239, %223
  %242 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), %223 ], [ %240, %239 ]
  br label %243

243:                                              ; preds = %241, %217
  %244 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), %217 ], [ %242, %241 ]
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %211, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* %244, i32 %247, i32 %250)
  %252 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %253 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %254 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %257 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %260 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %263 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %252, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i32 %255, i32 %258, i32 %261, i32 %264)
  %266 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %267 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %266, i32 0, i32 2
  %268 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %267, align 8
  %269 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %270 = load i32, i32* @BTC_DBG_DISP_BT_LINK_INFO, align 4
  %271 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %272 = call i32 %268(%struct.btc_coexist* %269, i32 %270, %struct.seq_file* %271)
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %9, align 4
  %276 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @BIT0, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0)
  %283 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i8* %282)
  store i32 0, i32* %8, align 4
  br label %284

284:                                              ; preds = %320, %243
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* @BT_INFO_SRC_8192E_2ANT_MAX, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %323

288:                                              ; preds = %284
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %319

297:                                              ; preds = %288
  %298 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %299 = load i8**, i8*** @glbt_info_src_8192e_2ant, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8*, i8** %299, i64 %301
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 2
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %298, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i8* %303, i64 %310, i32 %317)
  br label %319

319:                                              ; preds = %297, %288
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %8, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %8, align 4
  br label %284

323:                                              ; preds = %284
  %324 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 8
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 7
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0)
  %337 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %324, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i8* %330, i8* %336)
  %338 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %339 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %338, i32 0, i32 2
  %340 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %339, align 8
  %341 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %342 = load i32, i32* @BTC_DBG_DISP_FW_PWR_MODE_CMD, align 4
  %343 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %344 = call i32 %340(%struct.btc_coexist* %341, i32 %342, %struct.seq_file* %343)
  %345 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 18
  %348 = load i32, i32* %347, align 4
  %349 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %345, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i32 %348)
  %350 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %351 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0))
  %352 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 17
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 16
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 15
  %361 = load i32, i32* %360, align 8
  %362 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %352, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i32 %355, i32 %358, i32 %361)
  %363 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 14
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 13
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 12
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 11
  %375 = load i32, i32* %374, align 8
  %376 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %363, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i32 %366, i32 %369, i32 %372, i32 %375)
  %377 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %378 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %379 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %377, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0), i32 %381)
  %383 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %384 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i64 0, i64 0))
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  store i32 %387, i32* %10, align 4
  %388 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 10
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %10, align 4
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 9
  %395 = load i32, i32* %394, align 8
  %396 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %388, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), i32 %391, i32 %392, i32 %395)
  %397 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %397, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0), i64 %400, i32 %403)
  %405 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %406 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %405, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0))
  %407 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 8
  %410 = load i32, i32* %409, align 4
  %411 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %407, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i64 0, i64 0), i32 %410)
  %412 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 7
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 6
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %412, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i64 0, i64 0), i32 %415, i32 %418, i32 %421, i32 %424)
  %426 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %427 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %426, i32 0, i32 0
  %428 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %427, align 8
  %429 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %430 = call i64 %428(%struct.btc_coexist* %429, i32 1072)
  %431 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %430, i64* %431, align 16
  %432 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %433 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %432, i32 0, i32 0
  %434 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %433, align 8
  %435 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %436 = call i64 %434(%struct.btc_coexist* %435, i32 1076)
  %437 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %436, i64* %437, align 8
  %438 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %439 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %438, i32 0, i32 4
  %440 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %439, align 8
  %441 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %442 = call i32 %440(%struct.btc_coexist* %441, i32 1066)
  %443 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %442, i32* %443, align 16
  %444 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %445 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %444, i32 0, i32 1
  %446 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %445, align 8
  %447 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %448 = call i32 %446(%struct.btc_coexist* %447, i32 1110)
  %449 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %448, i32* %449, align 16
  %450 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %451 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %452 = load i64, i64* %451, align 16
  %453 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %454 = load i64, i64* %453, align 8
  %455 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %456 = load i32, i32* %455, align 16
  %457 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %458 = load i32, i32* %457, align 16
  %459 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %450, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i64 0, i64 0), i64 %452, i64 %454, i32 %456, i32 %458)
  %460 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %461 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %460, i32 0, i32 0
  %462 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %461, align 8
  %463 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %464 = call i64 %462(%struct.btc_coexist* %463, i32 3076)
  %465 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %464, i64* %465, align 16
  %466 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %467 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %466, i32 0, i32 0
  %468 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %467, align 8
  %469 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %470 = call i64 %468(%struct.btc_coexist* %469, i32 3332)
  %471 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %470, i64* %471, align 8
  %472 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %473 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %472, i32 0, i32 0
  %474 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %473, align 8
  %475 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %476 = call i64 %474(%struct.btc_coexist* %475, i32 2316)
  %477 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %476, i64* %477, align 16
  %478 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %479 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %480 = load i64, i64* %479, align 16
  %481 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %484 = load i64, i64* %483, align 16
  %485 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %478, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i64 0, i64 0), i64 %480, i64 %482, i64 %484)
  %486 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %487 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %486, i32 0, i32 1
  %488 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %487, align 8
  %489 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %490 = call i32 %488(%struct.btc_coexist* %489, i32 1912)
  %491 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %490, i32* %491, align 16
  %492 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %493 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %494 = load i32, i32* %493, align 16
  %495 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %492, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i32 %494)
  %496 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %497 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %496, i32 0, i32 1
  %498 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %497, align 8
  %499 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %500 = call i32 %498(%struct.btc_coexist* %499, i32 2348)
  %501 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %500, i32* %501, align 16
  %502 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %503 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %502, i32 0, i32 0
  %504 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %503, align 8
  %505 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %506 = call i64 %504(%struct.btc_coexist* %505, i32 2352)
  %507 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %506, i64* %507, align 16
  %508 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %509 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %510 = load i32, i32* %509, align 16
  %511 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %512 = load i64, i64* %511, align 16
  %513 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %508, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i64 0, i64 0), i32 %510, i64 %512)
  %514 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %515 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %514, i32 0, i32 1
  %516 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %515, align 8
  %517 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %518 = call i32 %516(%struct.btc_coexist* %517, i32 64)
  %519 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %518, i32* %519, align 16
  %520 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %521 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %520, i32 0, i32 1
  %522 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %521, align 8
  %523 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %524 = call i32 %522(%struct.btc_coexist* %523, i32 79)
  %525 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %524, i32* %525, align 4
  %526 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %527 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %528 = load i32, i32* %527, align 16
  %529 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %530 = load i32, i32* %529, align 4
  %531 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %526, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i32 %528, i32 %530)
  %532 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %533 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %532, i32 0, i32 0
  %534 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %533, align 8
  %535 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %536 = call i64 %534(%struct.btc_coexist* %535, i32 1360)
  %537 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %536, i64* %537, align 16
  %538 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %539 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %538, i32 0, i32 1
  %540 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %539, align 8
  %541 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %542 = call i32 %540(%struct.btc_coexist* %541, i32 1314)
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %542, i32* %543, align 16
  %544 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %545 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %546 = load i64, i64* %545, align 16
  %547 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %548 = load i32, i32* %547, align 16
  %549 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %544, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0), i64 %546, i32 %548)
  %550 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %551 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %550, i32 0, i32 0
  %552 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %551, align 8
  %553 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %554 = call i64 %552(%struct.btc_coexist* %553, i32 3152)
  %555 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %554, i64* %555, align 16
  %556 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %557 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %558 = load i64, i64* %557, align 16
  %559 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %556, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0), i64 %558)
  %560 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %561 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %560, i32 0, i32 0
  %562 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %561, align 8
  %563 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %564 = call i64 %562(%struct.btc_coexist* %563, i32 1728)
  %565 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %564, i64* %565, align 16
  %566 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %567 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %566, i32 0, i32 0
  %568 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %567, align 8
  %569 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %570 = call i64 %568(%struct.btc_coexist* %569, i32 1732)
  %571 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %570, i64* %571, align 8
  %572 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %573 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %572, i32 0, i32 0
  %574 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %573, align 8
  %575 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %576 = call i64 %574(%struct.btc_coexist* %575, i32 1736)
  %577 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %576, i64* %577, align 16
  %578 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %579 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %578, i32 0, i32 1
  %580 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %579, align 8
  %581 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %582 = call i32 %580(%struct.btc_coexist* %581, i32 1740)
  %583 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %582, i32* %583, align 16
  %584 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %585 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %586 = load i64, i64* %585, align 16
  %587 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %588 = load i64, i64* %587, align 8
  %589 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %590 = load i64, i64* %589, align 16
  %591 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %592 = load i32, i32* %591, align 16
  %593 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %584, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i64 0, i64 0), i64 %586, i64 %588, i64 %590, i32 %592)
  %594 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %595 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %596 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %595, i32 0, i32 3
  %597 = load i64, i64* %596, align 8
  %598 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %599 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %598, i32 0, i32 4
  %600 = load i32, i32* %599, align 8
  %601 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %594, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i64 0, i64 0), i64 %597, i32 %600)
  %602 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %603 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %604 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %603, i32 0, i32 5
  %605 = load i64, i64* %604, align 8
  %606 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %607 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %606, i32 0, i32 6
  %608 = load i32, i32* %607, align 8
  %609 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %602, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.78, i64 0, i64 0), i64 %605, i32 %608)
  %610 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %611 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %610, i32 0, i32 3
  %612 = load i64, i64* %611, align 8
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %617

614:                                              ; preds = %323
  %615 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %616 = call i32 @btc8192e2ant_monitor_bt_ctr(%struct.btc_coexist* %615)
  br label %617

617:                                              ; preds = %614, %323
  %618 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %619 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %618, i32 0, i32 2
  %620 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %619, align 8
  %621 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %622 = load i32, i32* @BTC_DBG_DISP_COEX_STATISTICS, align 4
  %623 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %624 = call i32 %620(%struct.btc_coexist* %621, i32 %622, %struct.seq_file* %623)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @btc8192e2ant_monitor_bt_ctr(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
