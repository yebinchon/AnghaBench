; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_display_coex_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_display_coex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i64*, i64, i32, i64, i32, i32, i64, i64, i32, i32, i64, i64 }
%struct.btc_coexist = type { i64 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i64, i32 (%struct.btc_coexist*, i32)*, %struct.TYPE_4__, i64, i32 (%struct.btc_coexist*, i32, i64*)*, i64, %struct.btc_bt_link_info, %struct.btc_stack_info, %struct.btc_board_info }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32 }
%struct.btc_bt_link_info = type { i32, i32, i32, i32 }
%struct.btc_stack_info = type { i32, i64 }
%struct.btc_board_info = type { i32, i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\0A ============[BT Coexist info]============\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\0A ============[Under Manual Control]==========\00", align 1
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
@glcoex_ver_date_8723b_1ant = common dso_local global i32 0, align 4
@glcoex_ver_8723b_1ant = common dso_local global i32 0, align 4
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
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [29 x i8] c"\0A %-35s = %d/ %d/ %d/ %d/ %d\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"sta/vwifi/hs/p2pGo/p2pGc\00", align 1
@WIFI_STA_CONNECTED = common dso_local global i64 0, align 8
@WIFI_AP_CONNECTED = common dso_local global i64 0, align 8
@WIFI_HS_CONNECTED = common dso_local global i64 0, align 8
@WIFI_P2P_GO_CONNECTED = common dso_local global i64 0, align 8
@WIFI_P2P_GC_CONNECTED = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [24 x i8] c"\0A %-35s = [%s/ %d/ %d] \00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"BT [status/ rssi/ retryCnt]\00", align 1
@coex_sta = common dso_local global %struct.TYPE_5__* null, align 8
@.str.34 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"inquiry/page scan\00", align 1
@BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [19 x i8] c"non-connected idle\00", align 1
@BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"connected-idle\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"SCO/HID/PAN/A2DP\00", align 1
@BTC_DBG_DISP_BT_LINK_INFO = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [13 x i8] c"\0A %-35s = %s\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"BT Info A2DP rate\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [11 x i8] c"Basic rate\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"EDR rate\00", align 1
@BT_INFO_SRC_8723B_1ANT_MAX = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [19 x i8] c"\0A %-35s = %7ph(%d)\00", align 1
@glbt_info_src_8723b_1ant = common dso_local global i8** null, align 8
@.str.46 = private unnamed_addr constant [29 x i8] c"\0A %-35s = %s/%s, (0x%x/0x%x)\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"PS state, IPS/LPS, (lps/rpwm)\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"IPS ON\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"IPS OFF\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"LPS ON\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"LPS OFF\00", align 1
@BTC_DBG_DISP_FW_PWR_MODE_CMD = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"\0A %-35s\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"============[Sw mechanism]============\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"\0A %-35s = %d/\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"SM[LowPenaltyRA]\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"\0A %-35s = %s/ %s/ %d \00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"DelBA/ BtCtrlAgg/ AggSize\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"\0A %-35s = 0x%x \00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"Rate Mask\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"============[Fw mechanism]============\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"PS TDMA\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"\0A %-35s = %d \00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"IgnWlanAct\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"Latest error condition(should be 0)\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"\0A %-35s = %d\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Coex Table Type\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"============[Hw setting]============\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"\0A %-35s = 0x%x/0x%x/0x%x/0x%x\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"backup ARFR1/ARFR2/RL/AMaxTime\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"0x430/0x434/0x42a/0x456\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"0x778/0x6cc/0x880[29:25]\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"0x948/ 0x67[5] / 0x765\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"0x92c[1:0]/ 0x930[7:0]/0x944[1:0]\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"0x38[11]/0x40/0x4c[24:23]/0x64[0]\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"0x550(bcn ctrl)/0x522\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"0xc50(dig)/0x49c(null-drop)\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"OFDM-CCA/OFDM-FA/CCK-FA\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"0x6c0/0x6c4/0x6c8(coexTable)\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"0x770(high-pri rx/tx)\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"0x774(low-pri rx/tx)\00", align 1
@BTC_DBG_DISP_COEX_STATISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_display_coex_info(%struct.btc_coexist* %0, %struct.seq_file* %1) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 11
  store %struct.btc_board_info* %32, %struct.btc_board_info** %5, align 8
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 10
  store %struct.btc_stack_info* %34, %struct.btc_stack_info** %6, align 8
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %36 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %35, i32 0, i32 9
  store %struct.btc_bt_link_info* %36, %struct.btc_bt_link_info** %7, align 8
  store i32 0, i32* %11, align 4
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
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = call i32 @seq_puts(%struct.seq_file* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %2
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %50 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %55 = call i32 @seq_puts(%struct.seq_file* %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %60 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %61 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %64 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.btc_board_info*, %struct.btc_board_info** %5, align 8
  %67 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %62, i32 %65, i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %72 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %77 = load %struct.btc_stack_info*, %struct.btc_stack_info** %6, align 8
  %78 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %76, i32 %79)
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %81, i32 0, i32 7
  %83 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %82, align 8
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %86 = call i32 %83(%struct.btc_coexist* %84, i32 %85, i64* %30)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 7
  %89 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %88, align 8
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %92 = call i32 %89(%struct.btc_coexist* %90, i32 %91, i64* %29)
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = load i32, i32* @glcoex_ver_date_8723b_1ant, align 4
  %95 = load i32, i32* @glcoex_ver_8723b_1ant, align 4
  %96 = load i64, i64* %29, align 8
  %97 = load i64, i64* %30, align 8
  %98 = load i64, i64* %30, align 8
  %99 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %94, i32 %95, i64 %96, i64 %97, i64 %98)
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %101 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %100, i32 0, i32 7
  %102 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %101, align 8
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %104 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %105 = bitcast i32* %18 to i64*
  %106 = call i32 %102(%struct.btc_coexist* %103, i32 %104, i64* %105)
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %108 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %107, i32 0, i32 7
  %109 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %108, align 8
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %111 = load i32, i32* @BTC_GET_U1_WIFI_DOT11_CHNL, align 4
  %112 = bitcast i32* %27 to i64*
  %113 = call i32 %109(%struct.btc_coexist* %110, i32 %111, i64* %112)
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %115 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %114, i32 0, i32 7
  %116 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %115, align 8
  %117 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %118 = load i32, i32* @BTC_GET_U1_WIFI_HS_CHNL, align 4
  %119 = bitcast i32* %28 to i64*
  %120 = call i32 %116(%struct.btc_coexist* %117, i32 %118, i64* %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* %28, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %129)
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %132 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %131, i32 0, i32 7
  %133 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %132, align 8
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %135 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %136 = call i32 %133(%struct.btc_coexist* %134, i32 %135, i64* %20)
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %138 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %137, i32 0, i32 7
  %139 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %138, align 8
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %141 = load i32, i32* @BTC_GET_S4_HS_RSSI, align 4
  %142 = call i32 %139(%struct.btc_coexist* %140, i32 %141, i64* %21)
  %143 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* %21, align 8
  %146 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i64 %144, i64 %145)
  %147 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %148 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %147, i32 0, i32 7
  %149 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %148, align 8
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %151 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %152 = bitcast i32* %15 to i64*
  %153 = call i32 %149(%struct.btc_coexist* %150, i32 %151, i64* %152)
  %154 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %155 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %154, i32 0, i32 7
  %156 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %155, align 8
  %157 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %158 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %159 = bitcast i32* %16 to i64*
  %160 = call i32 %156(%struct.btc_coexist* %157, i32 %158, i64* %159)
  %161 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %162 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %161, i32 0, i32 7
  %163 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %162, align 8
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %165 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %166 = bitcast i32* %14 to i64*
  %167 = call i32 %163(%struct.btc_coexist* %164, i32 %165, i64* %166)
  %168 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %169, i32 %170, i32 %171)
  %173 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %174 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %173, i32 0, i32 7
  %175 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %174, align 8
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %177 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %178 = bitcast i32* %17 to i64*
  %179 = call i32 %175(%struct.btc_coexist* %176, i32 %177, i64* %178)
  %180 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %181 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %180, i32 0, i32 7
  %182 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %181, align 8
  %183 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %184 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %185 = call i32 %182(%struct.btc_coexist* %183, i32 %184, i64* %22)
  %186 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %187 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %186, i32 0, i32 7
  %188 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %187, align 8
  %189 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %190 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %191 = bitcast i32* %19 to i64*
  %192 = call i32 %188(%struct.btc_coexist* %189, i32 %190, i64* %191)
  %193 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %194 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %193, i32 0, i32 7
  %195 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %194, align 8
  %196 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %197 = load i32, i32* @BTC_GET_U4_WIFI_TRAFFIC_DIRECTION, align 4
  %198 = call i32 %195(%struct.btc_coexist* %196, i32 %197, i64* %23)
  %199 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %58
  br label %214

208:                                              ; preds = %58
  %209 = load i64, i64* %22, align 8
  %210 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %211 = icmp eq i64 %209, %210
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)
  br label %214

214:                                              ; preds = %208, %207
  %215 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), %207 ], [ %213, %208 ]
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  br label %225

219:                                              ; preds = %214
  %220 = load i64, i64* %23, align 8
  %221 = load i64, i64* @BTC_WIFI_TRAFFIC_TX, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)
  br label %225

225:                                              ; preds = %219, %218
  %226 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %218 ], [ %224, %219 ]
  %227 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %199, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* %203, i8* %215, i8* %226)
  %228 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %229 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %228, i32 0, i32 7
  %230 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %229, align 8
  %231 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %232 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %233 = call i32 %230(%struct.btc_coexist* %231, i32 %232, i64* %26)
  %234 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %235 = load i64, i64* %26, align 8
  %236 = load i64, i64* @WIFI_STA_CONNECTED, align 8
  %237 = and i64 %235, %236
  %238 = icmp ne i64 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 1, i32 0
  %241 = load i64, i64* %26, align 8
  %242 = load i64, i64* @WIFI_AP_CONNECTED, align 8
  %243 = and i64 %241, %242
  %244 = icmp ne i64 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 1, i32 0
  %247 = load i64, i64* %26, align 8
  %248 = load i64, i64* @WIFI_HS_CONNECTED, align 8
  %249 = and i64 %247, %248
  %250 = icmp ne i64 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 1, i32 0
  %253 = load i64, i64* %26, align 8
  %254 = load i64, i64* @WIFI_P2P_GO_CONNECTED, align 8
  %255 = and i64 %253, %254
  %256 = icmp ne i64 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 1, i32 0
  %259 = load i64, i64* %26, align 8
  %260 = load i64, i64* @WIFI_P2P_GC_CONNECTED, align 8
  %261 = and i64 %259, %260
  %262 = icmp ne i64 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i32 1, i32 0
  %265 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %234, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i32 %240, i32 %246, i32 %252, i32 %258, i32 %264)
  %266 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 13
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %225
  br label %297

272:                                              ; preds = %225
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 12
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %295

278:                                              ; preds = %272
  %279 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %279, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %293

285:                                              ; preds = %278
  %286 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %286, %289
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)
  br label %293

293:                                              ; preds = %285, %284
  %294 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), %284 ], [ %292, %285 ]
  br label %295

295:                                              ; preds = %293, %277
  %296 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), %277 ], [ %294, %293 ]
  br label %297

297:                                              ; preds = %295, %271
  %298 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), %271 ], [ %296, %295 ]
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 11
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 10
  %304 = load i32, i32* %303, align 8
  %305 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %266, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i8* %298, i32 %301, i32 %304)
  %306 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %307 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %308 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %311 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %314 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %317 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %306, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i32 %309, i32 %312, i32 %315, i32 %318)
  %320 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %321 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %320, i32 0, i32 2
  %322 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %321, align 8
  %323 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %324 = load i32, i32* @BTC_DBG_DISP_BT_LINK_INFO, align 4
  %325 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %326 = call i32 %322(%struct.btc_coexist* %323, i32 %324, %struct.seq_file* %325)
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  store i32 %329, i32* %10, align 4
  %330 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* @BIT0, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0)
  %337 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i8* %336)
  store i32 0, i32* %9, align 4
  br label %338

338:                                              ; preds = %374, %297
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* @BT_INFO_SRC_8723B_1ANT_MAX, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %377

342:                                              ; preds = %338
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %373

351:                                              ; preds = %342
  %352 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %353 = load i8**, i8*** @glbt_info_src_8723b_1ant, align 8
  %354 = load i32, i32* %9, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8*, i8** %353, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 2
  %360 = load i64*, i64** %359, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0), i8* %357, i64 %364, i32 %371)
  br label %373

373:                                              ; preds = %351, %342
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %9, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %9, align 4
  br label %338

377:                                              ; preds = %338
  %378 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 9
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 8
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0)
  %391 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %392 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %396 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %378, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i8* %384, i8* %390, i32 %394, i32 %398)
  %400 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %401 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %400, i32 0, i32 2
  %402 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %401, align 8
  %403 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %404 = load i32, i32* @BTC_DBG_DISP_FW_PWR_MODE_CMD, align 4
  %405 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %406 = call i32 %402(%struct.btc_coexist* %403, i32 %404, %struct.seq_file* %405)
  %407 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %408 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %407, i32 0, i32 6
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %469, label %411

411:                                              ; preds = %377
  %412 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %413 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %412, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0))
  %414 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 10
  %417 = load i32, i32* %416, align 4
  %418 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %414, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0), i32 %417)
  %419 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %420 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %421 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 3
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  %425 = zext i1 %424 to i64
  %426 = select i1 %424, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %427 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %428 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  %432 = zext i1 %431 to i64
  %433 = select i1 %431, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %434 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %435 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %419, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0), i8* %426, i8* %433, i32 %437)
  %439 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %440 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %441 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %440, i32 0, i32 5
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %439, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 %443)
  %445 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %446 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %445, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i64 0, i64 0))
  %447 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  store i32 %449, i32* %11, align 4
  %450 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %451 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 9
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* %11, align 4
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 8
  %457 = load i32, i32* %456, align 4
  %458 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %450, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i32 %453, i32 %454, i32 %457)
  %459 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %459, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i32 %462)
  %464 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 4
  %468 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %464, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i64 0, i64 0), i32 %467)
  br label %469

469:                                              ; preds = %411, %377
  %470 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %471 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i32 0, i32 7
  %473 = load i32, i32* %472, align 4
  %474 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %470, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i32 %473)
  %475 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %476 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %475, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i64 0, i64 0))
  %477 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 5
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coex_dm, align 8
  %488 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  %490 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %477, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i64 0, i64 0), i32 %480, i32 %483, i32 %486, i32 %489)
  %491 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %492 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %491, i32 0, i32 0
  %493 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %492, align 8
  %494 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %495 = call i64 %493(%struct.btc_coexist* %494, i32 1072)
  %496 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %495, i64* %496, align 16
  %497 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %498 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %497, i32 0, i32 0
  %499 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %498, align 8
  %500 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %501 = call i64 %499(%struct.btc_coexist* %500, i32 1076)
  %502 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %501, i64* %502, align 8
  %503 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %504 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %503, i32 0, i32 4
  %505 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %504, align 8
  %506 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %507 = call i32 %505(%struct.btc_coexist* %506, i32 1066)
  %508 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %507, i32* %508, align 16
  %509 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %510 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %509, i32 0, i32 1
  %511 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %510, align 8
  %512 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %513 = call i32 %511(%struct.btc_coexist* %512, i32 1110)
  %514 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %513, i32* %514, align 16
  %515 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %516 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %517 = load i64, i64* %516, align 16
  %518 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %519 = load i64, i64* %518, align 8
  %520 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %521 = load i32, i32* %520, align 16
  %522 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %523 = load i32, i32* %522, align 16
  %524 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %515, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i64 %517, i64 %519, i32 %521, i32 %523)
  %525 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %526 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %525, i32 0, i32 1
  %527 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %526, align 8
  %528 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %529 = call i32 %527(%struct.btc_coexist* %528, i32 1912)
  %530 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %529, i32* %530, align 16
  %531 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %532 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %531, i32 0, i32 0
  %533 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %532, align 8
  %534 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %535 = call i64 %533(%struct.btc_coexist* %534, i32 1740)
  %536 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %535, i64* %536, align 16
  %537 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %538 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %537, i32 0, i32 0
  %539 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %538, align 8
  %540 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %541 = call i64 %539(%struct.btc_coexist* %540, i32 2176)
  %542 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %541, i64* %542, align 8
  %543 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %545 = load i32, i32* %544, align 16
  %546 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %547 = load i64, i64* %546, align 16
  %548 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %549 = load i64, i64* %548, align 8
  %550 = and i64 %549, 1040187392
  %551 = ashr i64 %550, 25
  %552 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %543, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i64 0, i64 0), i32 %545, i64 %547, i64 %551)
  %553 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %554 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %553, i32 0, i32 0
  %555 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %554, align 8
  %556 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %557 = call i64 %555(%struct.btc_coexist* %556, i32 2376)
  %558 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %557, i64* %558, align 16
  %559 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %560 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %559, i32 0, i32 1
  %561 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %560, align 8
  %562 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %563 = call i32 %561(%struct.btc_coexist* %562, i32 103)
  %564 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %563, i32* %564, align 16
  %565 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %566 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %565, i32 0, i32 1
  %567 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %566, align 8
  %568 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %569 = call i32 %567(%struct.btc_coexist* %568, i32 1893)
  %570 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %569, i32* %570, align 4
  %571 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %572 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %573 = load i64, i64* %572, align 16
  %574 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %575 = load i32, i32* %574, align 16
  %576 = and i32 %575, 32
  %577 = ashr i32 %576, 5
  %578 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %579 = load i32, i32* %578, align 4
  %580 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %571, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0), i64 %573, i32 %577, i32 %579)
  %581 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %582 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %581, i32 0, i32 0
  %583 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %582, align 8
  %584 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %585 = call i64 %583(%struct.btc_coexist* %584, i32 2348)
  %586 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %585, i64* %586, align 16
  %587 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %588 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %587, i32 0, i32 0
  %589 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %588, align 8
  %590 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %591 = call i64 %589(%struct.btc_coexist* %590, i32 2352)
  %592 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %591, i64* %592, align 8
  %593 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %594 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %593, i32 0, i32 0
  %595 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %594, align 8
  %596 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %597 = call i64 %595(%struct.btc_coexist* %596, i32 2372)
  %598 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %597, i64* %598, align 16
  %599 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %600 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %601 = load i64, i64* %600, align 16
  %602 = and i64 %601, 3
  %603 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %604 = load i64, i64* %603, align 8
  %605 = and i64 %604, 255
  %606 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %607 = load i64, i64* %606, align 16
  %608 = and i64 %607, 3
  %609 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %599, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.75, i64 0, i64 0), i64 %602, i64 %605, i64 %608)
  %610 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %611 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %610, i32 0, i32 1
  %612 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %611, align 8
  %613 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %614 = call i32 %612(%struct.btc_coexist* %613, i32 57)
  %615 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %614, i32* %615, align 16
  %616 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %617 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %616, i32 0, i32 1
  %618 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %617, align 8
  %619 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %620 = call i32 %618(%struct.btc_coexist* %619, i32 64)
  %621 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %620, i32* %621, align 4
  %622 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %623 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %622, i32 0, i32 0
  %624 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %623, align 8
  %625 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %626 = call i64 %624(%struct.btc_coexist* %625, i32 76)
  %627 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %626, i64* %627, align 16
  %628 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %629 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %628, i32 0, i32 1
  %630 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %629, align 8
  %631 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %632 = call i32 %630(%struct.btc_coexist* %631, i32 100)
  %633 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %632, i32* %633, align 8
  %634 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %635 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %636 = load i32, i32* %635, align 16
  %637 = and i32 %636, 8
  %638 = ashr i32 %637, 3
  %639 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %640 = load i32, i32* %639, align 4
  %641 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %642 = load i64, i64* %641, align 16
  %643 = and i64 %642, 25165824
  %644 = ashr i64 %643, 23
  %645 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %646 = load i32, i32* %645, align 8
  %647 = and i32 %646, 1
  %648 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %634, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 %638, i32 %640, i64 %644, i32 %647)
  %649 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %650 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %649, i32 0, i32 0
  %651 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %650, align 8
  %652 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %653 = call i64 %651(%struct.btc_coexist* %652, i32 1360)
  %654 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %653, i64* %654, align 16
  %655 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %656 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %655, i32 0, i32 1
  %657 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %656, align 8
  %658 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %659 = call i32 %657(%struct.btc_coexist* %658, i32 1314)
  %660 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %659, i32* %660, align 16
  %661 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %662 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %663 = load i64, i64* %662, align 16
  %664 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %665 = load i32, i32* %664, align 16
  %666 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %661, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i64 0, i64 0), i64 %663, i32 %665)
  %667 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %668 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %667, i32 0, i32 0
  %669 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %668, align 8
  %670 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %671 = call i64 %669(%struct.btc_coexist* %670, i32 3152)
  %672 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %671, i64* %672, align 16
  %673 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %674 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %673, i32 0, i32 1
  %675 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %674, align 8
  %676 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %677 = call i32 %675(%struct.btc_coexist* %676, i32 1180)
  %678 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %677, i32* %678, align 16
  %679 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %680 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %681 = load i64, i64* %680, align 16
  %682 = and i64 %681, 255
  %683 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %684 = load i32, i32* %683, align 16
  %685 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %679, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i64 0, i64 0), i64 %682, i32 %684)
  %686 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %687 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %686, i32 0, i32 0
  %688 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %687, align 8
  %689 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %690 = call i64 %688(%struct.btc_coexist* %689, i32 3488)
  %691 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %690, i64* %691, align 16
  %692 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %693 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %692, i32 0, i32 0
  %694 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %693, align 8
  %695 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %696 = call i64 %694(%struct.btc_coexist* %695, i32 3492)
  %697 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %696, i64* %697, align 8
  %698 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %699 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %698, i32 0, i32 0
  %700 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %699, align 8
  %701 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %702 = call i64 %700(%struct.btc_coexist* %701, i32 3496)
  %703 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %702, i64* %703, align 16
  %704 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %705 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %704, i32 0, i32 0
  %706 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %705, align 8
  %707 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %708 = call i64 %706(%struct.btc_coexist* %707, i32 3312)
  %709 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  store i64 %708, i64* %709, align 8
  %710 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %711 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %710, i32 0, i32 1
  %712 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %711, align 8
  %713 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %714 = call i32 %712(%struct.btc_coexist* %713, i32 2651)
  %715 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %714, i32* %715, align 16
  %716 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %717 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %716, i32 0, i32 1
  %718 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %717, align 8
  %719 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %720 = call i32 %718(%struct.btc_coexist* %719, i32 2652)
  %721 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %720, i32* %721, align 4
  %722 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %723 = load i64, i64* %722, align 16
  %724 = and i64 %723, 4294901760
  %725 = ashr i64 %724, 16
  %726 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %727 = load i64, i64* %726, align 8
  %728 = and i64 %727, 4294901760
  %729 = ashr i64 %728, 16
  %730 = add nsw i64 %725, %729
  %731 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %732 = load i64, i64* %731, align 8
  %733 = and i64 %732, 65535
  %734 = add nsw i64 %730, %733
  %735 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %736 = load i64, i64* %735, align 16
  %737 = and i64 %736, 65535
  %738 = add nsw i64 %734, %737
  %739 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  %740 = load i64, i64* %739, align 8
  %741 = and i64 %740, 4294901760
  %742 = ashr i64 %741, 16
  %743 = add nsw i64 %738, %742
  %744 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  %745 = load i64, i64* %744, align 8
  %746 = and i64 %745, 65535
  %747 = add nsw i64 %743, %746
  store i64 %747, i64* %24, align 8
  %748 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %749 = load i32, i32* %748, align 16
  %750 = shl i32 %749, 8
  %751 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %752 = load i32, i32* %751, align 4
  %753 = add nsw i32 %750, %752
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %25, align 8
  %755 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %756 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %757 = load i64, i64* %756, align 16
  %758 = and i64 %757, 65535
  %759 = load i64, i64* %24, align 8
  %760 = load i64, i64* %25, align 8
  %761 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %755, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i64 0, i64 0), i64 %758, i64 %759, i64 %760)
  %762 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %763 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %762, i32 0, i32 0
  %764 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %763, align 8
  %765 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %766 = call i64 %764(%struct.btc_coexist* %765, i32 1728)
  %767 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %766, i64* %767, align 16
  %768 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %769 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %768, i32 0, i32 0
  %770 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %769, align 8
  %771 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %772 = call i64 %770(%struct.btc_coexist* %771, i32 1732)
  %773 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %772, i64* %773, align 8
  %774 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %775 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %774, i32 0, i32 0
  %776 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %775, align 8
  %777 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %778 = call i64 %776(%struct.btc_coexist* %777, i32 1736)
  %779 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %778, i64* %779, align 16
  %780 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %781 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %782 = load i64, i64* %781, align 16
  %783 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %784 = load i64, i64* %783, align 8
  %785 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %786 = load i64, i64* %785, align 16
  %787 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %780, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i64 0, i64 0), i64 %782, i64 %784, i64 %786)
  %788 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %789 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %790 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %789, i32 0, i32 3
  %791 = load i64, i64* %790, align 8
  %792 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %793 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %792, i32 0, i32 4
  %794 = load i32, i32* %793, align 8
  %795 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %788, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0), i64 %791, i32 %794)
  %796 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %797 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %798 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %797, i32 0, i32 5
  %799 = load i64, i64* %798, align 8
  %800 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coex_sta, align 8
  %801 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %800, i32 0, i32 6
  %802 = load i32, i32* %801, align 8
  %803 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %796, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i64 0, i64 0), i64 %799, i32 %802)
  %804 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %805 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %804, i32 0, i32 3
  %806 = load i64, i64* %805, align 8
  %807 = icmp ne i64 %806, 0
  br i1 %807, label %808, label %811

808:                                              ; preds = %469
  %809 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %810 = call i32 @halbtc8723b1ant_monitor_bt_ctr(%struct.btc_coexist* %809)
  br label %811

811:                                              ; preds = %808, %469
  %812 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %813 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %812, i32 0, i32 2
  %814 = load i32 (%struct.btc_coexist*, i32, %struct.seq_file*)*, i32 (%struct.btc_coexist*, i32, %struct.seq_file*)** %813, align 8
  %815 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %816 = load i32, i32* @BTC_DBG_DISP_COEX_STATISTICS, align 4
  %817 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %818 = call i32 %814(%struct.btc_coexist* %815, i32 %816, %struct.seq_file* %817)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @halbtc8723b1ant_monitor_bt_ctr(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
