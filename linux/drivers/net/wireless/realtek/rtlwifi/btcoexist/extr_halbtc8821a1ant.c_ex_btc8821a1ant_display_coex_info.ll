; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_display_coex_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_display_coex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i64*, i64, i32, i64, i32, i64, i64, i32, i32, i64, i64 }
%struct.btc_coexist = type { i64 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i64, i32 (%struct.btc_coexist*, i32)*, %struct.TYPE_4__, i64, i32 (%struct.btc_coexist*, i32, i64*)*, i64, %struct.btc_bt_link_info, %struct.btc_stack_info, %struct.btc_board_info }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32 }
%struct.btc_bt_link_info = type { i32, i32, i32, i32 }
%struct.btc_stack_info = type { i32, i64 }
%struct.btc_board_info = type { i32, i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\0A ============[BT Coexist info]============\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\0A ============[Under Manual Control]============\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\0A ==========================================\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\0A ============[Coex is STOPPED]============\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\0A %-35s = %d/ %d/ %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Ant PG Num/ Ant Mech/ Ant Pos:\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A %-35s = %s / %d\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"BT stack/ hci ext ver\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"\0A %-35s = %d_%x/ 0x%x/ 0x%x(%d)\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", align 1
@glcoex_ver_date_8821a_1ant = common dso_local global i32 0, align 4
@glcoex_ver_8821a_1ant = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_DOT11_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U1_WIFI_HS_CHNL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %d / %d(%d)\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Dot11 channel / HsChnl(HsMode)\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\0A %-35s = %3ph \00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"H2C Wifi inform bt chnl Info\00", align 1
@coex_dm = common dso_local global %struct.TYPE_6__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_S4_HS_RSSI = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"\0A %-35s = %d/ %d\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Wifi rssi/ HS rssi\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %d/ %d/ %d \00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Wifi link/ roam/ scan\00", align 1
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_TRAFFIC_DIRECTION = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"\0A %-35s = %s / %s/ %s \00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Wifi status\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"5G\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"2.4G\00", align 1
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"Legacy\00", align 1
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"HT40\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"HT20\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@BTC_WIFI_TRAFFIC_TX = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"uplink\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"downlink\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"\0A %-35s = [%s/ %d/ %d] \00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"BT [status/ rssi/ retryCnt]\00", align 1
@coex_sta = common dso_local global %struct.TYPE_5__* null, align 8
@.str.32 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"inquiry/page scan\00", align 1
@BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [19 x i8] c"non-connected idle\00", align 1
@BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [15 x i8] c"connected-idle\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"SCO/HID/PAN/A2DP\00", align 1
@BTC_DBG_DISP_BT_LINK_INFO = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [13 x i8] c"\0A %-35s = %s\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"BT Info A2DP rate\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [11 x i8] c"Basic rate\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"EDR rate\00", align 1
@BT_INFO_SRC_8821A_1ANT_MAX = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [19 x i8] c"\0A %-35s = %7ph(%d)\00", align 1
@glbt_info_src_8821a_1ant = common dso_local global i8** null, align 8
@.str.44 = private unnamed_addr constant [29 x i8] c"\0A %-35s = %s/%s, (0x%x/0x%x)\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"PS state, IPS/LPS, (lps/rpwm)\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"IPS ON\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"IPS OFF\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"LPS ON\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"LPS OFF\00", align 1
@BTC_DBG_DISP_FW_PWR_MODE_CMD = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [8 x i8] c"\0A %-35s\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"============[Sw mechanism]============\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"\0A %-35s = %d\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"SM[LowPenaltyRA]\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %s/ %s/ %d \00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"DelBA/ BtCtrlAgg/ AggSize\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"\0A %-35s = 0x%x \00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Rate Mask\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"============[Fw mechanism]============\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"PS TDMA\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"Latest error condition(should be 0)\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"\0A %-35s = %d \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"IgnWlanAct\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"============[Hw setting]============\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"\0A %-35s = 0x%x/0x%x/0x%x/0x%x\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"backup ARFR1/ARFR2/RL/AMaxTime\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"0x430/0x434/0x42a/0x456\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"0x778/ 0xc58[29:25]\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"\0A %-35s = 0x%x\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"0x8db[6:5]\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"0xcb4[29:28]/0xcb4[7:0]/0x974[9:8]\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"0x40/0x4c[24:23]/0x64[0]\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"0x550(bcn ctrl)/0x522\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"0xc50(dig)\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"OFDM-FA/ CCK-FA\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"0x770(high-pri rx/tx)\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"0x774(low-pri rx/tx)\00", align 1
@BTC_DBG_DISP_COEX_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_display_coex_info(%struct.btc_coexist* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.btc_board_info*, align 8
  %6 = alloca %struct.btc_stack_info*, align 8
  %7 = alloca %struct.btc_bt_link_info*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i64], align 16
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
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 11
  store %struct.btc_board_info* %29, %struct.btc_board_info** %5, align 8
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 10
  store %struct.btc_stack_info* %31, %struct.btc_stack_info** %6, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 9
  store %struct.btc_bt_link_info* %33, %struct.btc_bt_link_info** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = call i32 @seq_puts(%struct.seq_file* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = call i32 @seq_puts(%struct.seq_file* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = call i32 @seq_puts(%struct.seq_file* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = call i32 @seq_puts(%struct.seq_file* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = call i32 @seq_puts(%struct.seq_file* %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %57 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %58 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %61 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %64 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %69 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %74 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %75 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %73, i32 %76)
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %79 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %78, i32 0, i32 7
  %80 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %79, align 8
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %83 = call i32 %80(%struct.btc_coexist* %81, i32 %82, i64* %27)
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %84, i32 0, i32 7
  %86 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %85, align 8
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %89 = call i32 %86(%struct.btc_coexist* %87, i32 %88, i64* %26)
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load i32, i32* @glcoex_ver_date_8821a_1ant, align 4
  %92 = load i32, i32* @glcoex_ver_8821a_1ant, align 4
  %93 = load i64, i64* %26, align 8
  %94 = load i64, i64* %27, align 8
  %95 = load i64, i64* %27, align 8
  %96 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %91, i32 %92, i64 %93, i64 %94, i64 %95)
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %98 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %97, i32 0, i32 7
  %99 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %98, align 8
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %101 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %102 = bitcast i32* %18 to i64*
  %103 = call i32 %99(%struct.btc_coexist* %100, i32 %101, i64* %102)
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %105 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %104, i32 0, i32 7
  %106 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %105, align 8
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %108 = load i32, i32* @BTC_GET_U1_WIFI_DOT11_CHNL, align 4
  %109 = bitcast i32* %24 to i64*
  %110 = call i32 %106(%struct.btc_coexist* %107, i32 %108, i64* %109)
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %112 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %111, i32 0, i32 7
  %113 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %112, align 8
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %115 = load i32, i32* @BTC_GET_U1_WIFI_HS_CHNL, align 4
  %116 = bitcast i32* %25 to i64*
  %117 = call i32 %113(%struct.btc_coexist* %114, i32 %115, i64* %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %119, i32 %120, i32 %121)
  %123 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %126)
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %129 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %128, i32 0, i32 7
  %130 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %129, align 8
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %132 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %133 = call i32 %130(%struct.btc_coexist* %131, i32 %132, i64* %20)
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %135 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %134, i32 0, i32 7
  %136 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %135, align 8
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %138 = load i32, i32* @BTC_GET_S4_HS_RSSI, align 4
  %139 = call i32 %136(%struct.btc_coexist* %137, i32 %138, i64* %21)
  %140 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %141 = load i64, i64* %20, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i64, i64* %21, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %142, i32 %144)
  %146 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %147 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %146, i32 0, i32 7
  %148 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %147, align 8
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %150 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %151 = bitcast i32* %15 to i64*
  %152 = call i32 %148(%struct.btc_coexist* %149, i32 %150, i64* %151)
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %154 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %153, i32 0, i32 7
  %155 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %154, align 8
  %156 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %157 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %158 = bitcast i32* %16 to i64*
  %159 = call i32 %155(%struct.btc_coexist* %156, i32 %157, i64* %158)
  %160 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %161 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %160, i32 0, i32 7
  %162 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %161, align 8
  %163 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %164 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %165 = bitcast i32* %14 to i64*
  %166 = call i32 %162(%struct.btc_coexist* %163, i32 %164, i64* %165)
  %167 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %173 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %172, i32 0, i32 7
  %174 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %173, align 8
  %175 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %176 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %177 = bitcast i32* %17 to i64*
  %178 = call i32 %174(%struct.btc_coexist* %175, i32 %176, i64* %177)
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %180 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %179, i32 0, i32 7
  %181 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %180, align 8
  %182 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %183 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %184 = call i32 %181(%struct.btc_coexist* %182, i32 %183, i64* %22)
  %185 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %186 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %185, i32 0, i32 7
  %187 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %186, align 8
  %188 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %189 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %190 = bitcast i32* %19 to i64*
  %191 = call i32 %187(%struct.btc_coexist* %188, i32 %189, i64* %190)
  %192 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %193 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %192, i32 0, i32 7
  %194 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %193, align 8
  %195 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %196 = load i32, i32* @BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, align 4
  %197 = call i32 %194(%struct.btc_coexist* %195, i32 %196, i64* %23)
  %198 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  %203 = load i64, i64* %22, align 8
  %204 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %55
  br label %213

207:                                              ; preds = %55
  %208 = load i64, i64* %22, align 8
  %209 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)
  br label %213

213:                                              ; preds = %207, %206
  %214 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), %206 ], [ %212, %207 ]
  %215 = load i32, i32* %19, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %213
  br label %224

218:                                              ; preds = %213
  %219 = load i64, i64* %23, align 8
  %220 = load i64, i64* @BTC_WIFI_TRAFFIC_TX, align 8
  %221 = icmp eq i64 %219, %220
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)
  br label %224

224:                                              ; preds = %218, %217
  %225 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %217 ], [ %223, %218 ]
  %226 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* %202, i8* %214, i8* %225)
  %227 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 12
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %258

233:                                              ; preds = %224
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 11
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %256

239:                                              ; preds = %233
  %240 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %240, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %254

246:                                              ; preds = %239
  %247 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %247, %250
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)
  br label %254

254:                                              ; preds = %246, %245
  %255 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), %245 ], [ %253, %246 ]
  br label %256

256:                                              ; preds = %254, %238
  %257 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), %238 ], [ %255, %254 ]
  br label %258

258:                                              ; preds = %256, %232
  %259 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), %232 ], [ %257, %256 ]
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i8* %259, i32 %262, i32 %265)
  %267 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %268 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %269 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %272 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %275 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %278 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %267, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i32 %270, i32 %273, i32 %276, i32 %279)
  %281 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %282 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %281, i32 0, i32 2
  %283 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %282, align 8
  %284 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %285 = load i32, i32* @BTC_DBG_DISP_BT_LINK_INFO, align 4
  %286 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %287 = call i32 %283(%struct.btc_coexist* %284, i32 %285, %struct.seq_file* %286)
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  store i32 %290, i32* %10, align 4
  %291 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* @BIT0, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0)
  %298 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %291, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8* %297)
  store i32 0, i32* %9, align 4
  br label %299

299:                                              ; preds = %335, %258
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* @BT_INFO_SRC_8821A_1ANT_MAX, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %338

303:                                              ; preds = %299
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %334

312:                                              ; preds = %303
  %313 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %314 = load i8**, i8*** @glbt_info_src_8821a_1ant, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 2
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %313, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i8* %318, i64 %325, i32 %332)
  br label %334

334:                                              ; preds = %312, %303
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %9, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %9, align 4
  br label %299

338:                                              ; preds = %299
  %339 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 8
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 7
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  %350 = zext i1 %349 to i64
  %351 = select i1 %349, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)
  %352 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %353 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %357 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %339, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i64 0, i64 0), i8* %345, i8* %351, i32 %355, i32 %359)
  %361 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %362 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %361, i32 0, i32 2
  %363 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %362, align 8
  %364 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %365 = load i32, i32* @BTC_DBG_DISP_FW_PWR_MODE_CMD, align 4
  %366 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %367 = call i32 %363(%struct.btc_coexist* %364, i32 %365, %struct.seq_file* %366)
  %368 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %369 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %368, i32 0, i32 6
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %430, label %372

372:                                              ; preds = %338
  %373 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %374 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %373, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i64 0, i64 0))
  %375 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 10
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %375, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i32 %378)
  %380 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %381 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %382 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  %386 = zext i1 %385 to i64
  %387 = select i1 %385, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %388 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %389 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %395 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %396 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %380, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i8* %387, i8* %394, i32 %398)
  %400 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %401 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %402 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %400, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 %404)
  %406 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %407 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %406, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i64 0, i64 0))
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  store i32 %410, i32* %11, align 4
  %411 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %11, align 4
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 8
  %418 = load i32, i32* %417, align 4
  %419 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %411, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), i32 %414, i32 %415, i32 %418)
  %420 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 7
  %423 = load i32, i32* %422, align 8
  %424 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %420, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i32 %423)
  %425 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %426 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 6
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %425, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %372, %338
  %431 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %432 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %431, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0))
  %433 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %433, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i64 0, i64 0), i32 %436, i32 %439, i32 %442, i32 %445)
  %447 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %448 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %447, i32 0, i32 0
  %449 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %448, align 8
  %450 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %451 = call i64 %449(%struct.btc_coexist* %450, i32 1072)
  %452 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %451, i64* %452, align 16
  %453 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %454 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %453, i32 0, i32 0
  %455 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %454, align 8
  %456 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %457 = call i64 %455(%struct.btc_coexist* %456, i32 1076)
  %458 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %457, i64* %458, align 8
  %459 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %460 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %459, i32 0, i32 4
  %461 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %460, align 8
  %462 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %463 = call i32 %461(%struct.btc_coexist* %462, i32 1066)
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %463, i32* %464, align 16
  %465 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %466 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %465, i32 0, i32 1
  %467 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %466, align 8
  %468 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %469 = call i32 %467(%struct.btc_coexist* %468, i32 1110)
  %470 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %469, i32* %470, align 16
  %471 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %472 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %473 = load i64, i64* %472, align 16
  %474 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %475 = load i64, i64* %474, align 8
  %476 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %477 = load i32, i32* %476, align 16
  %478 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %479 = load i32, i32* %478, align 16
  %480 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %471, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i64 0, i64 0), i64 %473, i64 %475, i32 %477, i32 %479)
  %481 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %482 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %481, i32 0, i32 1
  %483 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %482, align 8
  %484 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %485 = call i32 %483(%struct.btc_coexist* %484, i32 1912)
  %486 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %485, i32* %486, align 16
  %487 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %488 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %487, i32 0, i32 0
  %489 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %488, align 8
  %490 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %491 = call i64 %489(%struct.btc_coexist* %490, i32 3160)
  %492 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %491, i64* %492, align 16
  %493 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %494 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %495 = load i32, i32* %494, align 16
  %496 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %497 = load i64, i64* %496, align 16
  %498 = and i64 %497, 1040187392
  %499 = ashr i64 %498, 25
  %500 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %493, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 %495, i64 %499)
  %501 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %502 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %501, i32 0, i32 1
  %503 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %502, align 8
  %504 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %505 = call i32 %503(%struct.btc_coexist* %504, i32 2267)
  %506 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %505, i32* %506, align 16
  %507 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %508 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %509 = load i32, i32* %508, align 16
  %510 = and i32 %509, 96
  %511 = ashr i32 %510, 5
  %512 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %507, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0), i32 %511)
  %513 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %514 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %513, i32 0, i32 1
  %515 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %514, align 8
  %516 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %517 = call i32 %515(%struct.btc_coexist* %516, i32 2421)
  %518 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %517, i32* %518, align 16
  %519 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %520 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %519, i32 0, i32 0
  %521 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %520, align 8
  %522 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %523 = call i64 %521(%struct.btc_coexist* %522, i32 3252)
  %524 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %523, i64* %524, align 16
  %525 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %526 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %527 = load i64, i64* %526, align 16
  %528 = and i64 %527, 805306368
  %529 = ashr i64 %528, 28
  %530 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %531 = load i64, i64* %530, align 16
  %532 = and i64 %531, 255
  %533 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %534 = load i32, i32* %533, align 16
  %535 = and i32 %534, 3
  %536 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %525, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0), i64 %529, i64 %532, i32 %535)
  %537 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %538 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %537, i32 0, i32 1
  %539 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %538, align 8
  %540 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %541 = call i32 %539(%struct.btc_coexist* %540, i32 64)
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %541, i32* %542, align 16
  %543 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %544 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %543, i32 0, i32 0
  %545 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %544, align 8
  %546 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %547 = call i64 %545(%struct.btc_coexist* %546, i32 76)
  %548 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %547, i64* %548, align 16
  %549 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %550 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %549, i32 0, i32 1
  %551 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %550, align 8
  %552 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %553 = call i32 %551(%struct.btc_coexist* %552, i32 100)
  %554 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %553, i32* %554, align 4
  %555 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %556 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %557 = load i32, i32* %556, align 16
  %558 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %559 = load i64, i64* %558, align 16
  %560 = and i64 %559, 25165824
  %561 = ashr i64 %560, 23
  %562 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %563 = load i32, i32* %562, align 4
  %564 = and i32 %563, 1
  %565 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %555, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.74, i64 0, i64 0), i32 %557, i64 %561, i32 %564)
  %566 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %567 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %566, i32 0, i32 0
  %568 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %567, align 8
  %569 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %570 = call i64 %568(%struct.btc_coexist* %569, i32 1360)
  %571 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %570, i64* %571, align 16
  %572 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %573 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %572, i32 0, i32 1
  %574 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %573, align 8
  %575 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %576 = call i32 %574(%struct.btc_coexist* %575, i32 1314)
  %577 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %576, i32* %577, align 16
  %578 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %579 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %580 = load i64, i64* %579, align 16
  %581 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %582 = load i32, i32* %581, align 16
  %583 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %578, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i64 0, i64 0), i64 %580, i32 %582)
  %584 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %585 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %584, i32 0, i32 0
  %586 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %585, align 8
  %587 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %588 = call i64 %586(%struct.btc_coexist* %587, i32 3152)
  %589 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %588, i64* %589, align 16
  %590 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %591 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %592 = load i64, i64* %591, align 16
  %593 = and i64 %592, 255
  %594 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %590, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), i64 %593)
  %595 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %596 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %595, i32 0, i32 0
  %597 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %596, align 8
  %598 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %599 = call i64 %597(%struct.btc_coexist* %598, i32 3912)
  %600 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %599, i64* %600, align 16
  %601 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %602 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %601, i32 0, i32 1
  %603 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %602, align 8
  %604 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %605 = call i32 %603(%struct.btc_coexist* %604, i32 2653)
  %606 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %605, i32* %606, align 16
  %607 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %608 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %607, i32 0, i32 1
  %609 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %608, align 8
  %610 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %611 = call i32 %609(%struct.btc_coexist* %610, i32 2652)
  %612 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %611, i32* %612, align 4
  %613 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %614 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %615 = load i64, i64* %614, align 16
  %616 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %617 = load i32, i32* %616, align 16
  %618 = shl i32 %617, 8
  %619 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %620 = load i32, i32* %619, align 4
  %621 = add nsw i32 %618, %620
  %622 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %613, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0), i64 %615, i32 %621)
  %623 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %624 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %623, i32 0, i32 0
  %625 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %624, align 8
  %626 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %627 = call i64 %625(%struct.btc_coexist* %626, i32 1728)
  %628 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %627, i64* %628, align 16
  %629 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %630 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %629, i32 0, i32 0
  %631 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %630, align 8
  %632 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %633 = call i64 %631(%struct.btc_coexist* %632, i32 1732)
  %634 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %633, i64* %634, align 8
  %635 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %636 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %635, i32 0, i32 0
  %637 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %636, align 8
  %638 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %639 = call i64 %637(%struct.btc_coexist* %638, i32 1736)
  %640 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %639, i64* %640, align 16
  %641 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %642 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %641, i32 0, i32 1
  %643 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %642, align 8
  %644 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %645 = call i32 %643(%struct.btc_coexist* %644, i32 1740)
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %645, i32* %646, align 16
  %647 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %648 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %649 = load i64, i64* %648, align 16
  %650 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %651 = load i64, i64* %650, align 8
  %652 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %653 = load i64, i64* %652, align 16
  %654 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %655 = load i32, i32* %654, align 16
  %656 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %647, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i64 0, i64 0), i64 %649, i64 %651, i64 %653, i32 %655)
  %657 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %658 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %659 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %658, i32 0, i32 3
  %660 = load i64, i64* %659, align 8
  %661 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %662 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %661, i32 0, i32 4
  %663 = load i32, i32* %662, align 8
  %664 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %657, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0), i64 %660, i32 %663)
  %665 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %666 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %667 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %666, i32 0, i32 5
  %668 = load i64, i64* %667, align 8
  %669 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %670 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %669, i32 0, i32 6
  %671 = load i32, i32* %670, align 8
  %672 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %665, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i64 0, i64 0), i64 %668, i32 %671)
  %673 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %674 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %673, i32 0, i32 3
  %675 = load i64, i64* %674, align 8
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %680

677:                                              ; preds = %430
  %678 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %679 = call i32 @btc8821a1ant_monitor_bt_ctr(%struct.btc_coexist* %678)
  br label %680

680:                                              ; preds = %677, %430
  %681 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %682 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %681, i32 0, i32 2
  %683 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %682, align 8
  %684 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %685 = load i32, i32* @BTC_DBG_DISP_COEX_STATISTICS, align 4
  %686 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %687 = call i32 %683(%struct.btc_coexist* %684, i32 %685, %struct.seq_file* %686)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @btc8821a1ant_monitor_bt_ctr(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
