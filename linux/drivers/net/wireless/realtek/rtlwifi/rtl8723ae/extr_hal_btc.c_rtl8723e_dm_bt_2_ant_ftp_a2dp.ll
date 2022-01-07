; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_2_ant_ftp_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_2_ant_ftp_a2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.btdm_8723 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], BT TxRx Counters = %d\0A\00", align 1
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"HT40\0A\00", align 1
@BT_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BT_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Wifi rssi high\0A\00", align 1
@BT_TXRX_CNT_LEVEL_2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"[BTCoex], BT TxRx Counters >= 1400\0A\00", align 1
@BT_TXRX_CNT_LEVEL_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"[BTCoex], BT TxRx Counters >= 1200 && < 1400\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"[BTCoex], BT TxRx Counters < 1200\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Wifi rssi low\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"HT20 or Legacy\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Wifi rssi-1 high\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Wifi rssi-1 low\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"[BTCoex], BT btInqPageStartTime = 0x%x, btTxRxCntLvl = %d\0A\00", align 1
@hal_coex_8723 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BT_TXRX_CNT_LEVEL_3 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [51 x i8] c"[BTCoex], Set BT inquiry / page scan 0x3a setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_2_ant_ftp_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_2_ant_ftp_a2dp(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.btdm_8723, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  store %struct.rtl_phy* %12, %struct.rtl_phy** %4, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @rtl8723e_dm_bt_btdm_structure_reload(%struct.ieee80211_hw* %13, %struct.btdm_8723* %5)
  %15 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i64 @rtl8723e_dm_bt_bt_tx_rx_counter_level(%struct.ieee80211_hw* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @COMP_BT_COEXIST, align 4
  %22 = load i32, i32* @DBG_DMESG, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %200

30:                                               ; preds = %1
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @COMP_BT_COEXIST, align 4
  %33 = load i32, i32* @DBG_DMESG, align 4
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %36 = call i64 @rtl8723e_dm_bt_check_coex_rssi_state(%struct.ieee80211_hw* %35, i32 2, i32 37, i32 0)
  store i64 %36, i64* %6, align 8
  %37 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 3
  store i32 1431655765, i32* %37, align 4
  %38 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 4
  store i32 65535, i32* %38, align 8
  %39 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 5
  store i32 3, i32* %39, align 4
  %40 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 6
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 7
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 8
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 9
  store i32 1, i32* %43, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @BT_RSSI_STATE_HIGH, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %30
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @BT_RSSI_STATE_STAY_HIGH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %125

51:                                               ; preds = %47, %30
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i32, i32* @COMP_BT_COEXIST, align 4
  %54 = load i32, i32* @DBG_DMESG, align 4
  %55 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @BT_TXRX_CNT_LEVEL_2, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %51
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = load i32, i32* @COMP_BT_COEXIST, align 4
  %62 = load i32, i32* @DBG_DMESG, align 4
  %63 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 163, i32* %66, align 4
  %67 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 5, i32* %69, align 4
  %70 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 5, i32* %72, align 4
  %73 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 129, i32* %75, align 4
  %76 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32 128, i32* %78, align 4
  br label %124

79:                                               ; preds = %51
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @BT_TXRX_CNT_LEVEL_1, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = load i32, i32* @COMP_BT_COEXIST, align 4
  %86 = load i32, i32* @DBG_DMESG, align 4
  %87 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %88 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 163, i32* %90, align 4
  %91 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 10, i32* %93, align 4
  %94 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 10, i32* %96, align 4
  %97 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 129, i32* %99, align 4
  %100 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  store i32 128, i32* %102, align 4
  br label %123

103:                                              ; preds = %79
  %104 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %105 = load i32, i32* @COMP_BT_COEXIST, align 4
  %106 = load i32, i32* @DBG_DMESG, align 4
  %107 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %108 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 163, i32* %110, align 4
  %111 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 15, i32* %113, align 4
  %114 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 15, i32* %116, align 4
  %117 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  store i32 129, i32* %119, align 4
  %120 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32 128, i32* %122, align 4
  br label %123

123:                                              ; preds = %103, %83
  br label %124

124:                                              ; preds = %123, %59
  br label %199

125:                                              ; preds = %47
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %127 = load i32, i32* @COMP_BT_COEXIST, align 4
  %128 = load i32, i32* @DBG_DMESG, align 4
  %129 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @BT_TXRX_CNT_LEVEL_2, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %125
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %135 = load i32, i32* @COMP_BT_COEXIST, align 4
  %136 = load i32, i32* @DBG_DMESG, align 4
  %137 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %134, i32 %135, i32 %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %138 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 163, i32* %140, align 4
  %141 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 5, i32* %143, align 4
  %144 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 5, i32* %146, align 4
  %147 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32 128, i32* %152, align 4
  br label %198

153:                                              ; preds = %125
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* @BT_TXRX_CNT_LEVEL_1, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %153
  %158 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %159 = load i32, i32* @COMP_BT_COEXIST, align 4
  %160 = load i32, i32* @DBG_DMESG, align 4
  %161 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %158, i32 %159, i32 %160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %162 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 163, i32* %164, align 4
  %165 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 10, i32* %167, align 4
  %168 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  store i32 10, i32* %170, align 4
  %171 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  store i32 0, i32* %173, align 4
  %174 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  store i32 128, i32* %176, align 4
  br label %197

177:                                              ; preds = %153
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %179 = load i32, i32* @COMP_BT_COEXIST, align 4
  %180 = load i32, i32* @DBG_DMESG, align 4
  %181 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %178, i32 %179, i32 %180, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %182 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 163, i32* %184, align 4
  %185 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 15, i32* %187, align 4
  %188 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 15, i32* %190, align 4
  %191 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  store i32 0, i32* %193, align 4
  %194 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  store i32 128, i32* %196, align 4
  br label %197

197:                                              ; preds = %177, %157
  br label %198

198:                                              ; preds = %197, %133
  br label %199

199:                                              ; preds = %198, %124
  br label %395

200:                                              ; preds = %1
  %201 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %202 = load i32, i32* @COMP_BT_COEXIST, align 4
  %203 = load i32, i32* @DBG_DMESG, align 4
  %204 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %201, i32 %202, i32 %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %206 = call i64 @rtl8723e_dm_bt_check_coex_rssi_state(%struct.ieee80211_hw* %205, i32 2, i32 47, i32 0)
  store i64 %206, i64* %6, align 8
  %207 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %208 = call i64 @rtl8723e_dm_bt_check_coex_rssi_state1(%struct.ieee80211_hw* %207, i32 2, i32 27, i32 0)
  store i64 %208, i64* %7, align 8
  %209 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 3
  store i32 1431655765, i32* %209, align 4
  %210 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 4
  store i32 65535, i32* %210, align 8
  %211 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 5
  store i32 3, i32* %211, align 4
  %212 = load i64, i64* %6, align 8
  %213 = load i64, i64* @BT_RSSI_STATE_HIGH, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %200
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* @BT_RSSI_STATE_STAY_HIGH, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %215, %200
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %221 = load i32, i32* @COMP_BT_COEXIST, align 4
  %222 = load i32, i32* @DBG_DMESG, align 4
  %223 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %220, i32 %221, i32 %222, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %224 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 6
  store i32 1, i32* %224, align 8
  %225 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 7
  store i32 1, i32* %225, align 4
  %226 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 8
  store i32 0, i32* %226, align 8
  br label %235

227:                                              ; preds = %215
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %229 = load i32, i32* @COMP_BT_COEXIST, align 4
  %230 = load i32, i32* @DBG_DMESG, align 4
  %231 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %228, i32 %229, i32 %230, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %232 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 6
  store i32 0, i32* %232, align 8
  %233 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 7
  store i32 0, i32* %233, align 4
  %234 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 8
  store i32 0, i32* %234, align 8
  br label %235

235:                                              ; preds = %227, %219
  %236 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 9
  store i32 1, i32* %236, align 4
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* @BT_RSSI_STATE_HIGH, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %244, label %240

240:                                              ; preds = %235
  %241 = load i64, i64* %7, align 8
  %242 = load i64, i64* @BT_RSSI_STATE_STAY_HIGH, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %320

244:                                              ; preds = %240, %235
  %245 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %246 = load i32, i32* @COMP_BT_COEXIST, align 4
  %247 = load i32, i32* @DBG_DMESG, align 4
  %248 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %245, i32 %246, i32 %247, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %250 = call i32 @rtl_write_byte(%struct.rtl_priv* %249, i32 2179, i32 64)
  %251 = load i64, i64* %8, align 8
  %252 = load i64, i64* @BT_TXRX_CNT_LEVEL_2, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %274

254:                                              ; preds = %244
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %256 = load i32, i32* @COMP_BT_COEXIST, align 4
  %257 = load i32, i32* @DBG_DMESG, align 4
  %258 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %255, i32 %256, i32 %257, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %259 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 163, i32* %261, align 4
  %262 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  store i32 5, i32* %264, align 4
  %265 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  store i32 5, i32* %267, align 4
  %268 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 3
  store i32 129, i32* %270, align 4
  %271 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 4
  store i32 128, i32* %273, align 4
  br label %319

274:                                              ; preds = %244
  %275 = load i64, i64* %8, align 8
  %276 = load i64, i64* @BT_TXRX_CNT_LEVEL_1, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %298

278:                                              ; preds = %274
  %279 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %280 = load i32, i32* @COMP_BT_COEXIST, align 4
  %281 = load i32, i32* @DBG_DMESG, align 4
  %282 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %279, i32 %280, i32 %281, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %283 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  store i32 163, i32* %285, align 4
  %286 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 10, i32* %288, align 4
  %289 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 2
  store i32 10, i32* %291, align 4
  %292 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 3
  store i32 129, i32* %294, align 4
  %295 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 4
  store i32 128, i32* %297, align 4
  br label %318

298:                                              ; preds = %274
  %299 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %300 = load i32, i32* @COMP_BT_COEXIST, align 4
  %301 = load i32, i32* @DBG_DMESG, align 4
  %302 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %299, i32 %300, i32 %301, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %303 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 163, i32* %305, align 4
  %306 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  store i32 15, i32* %308, align 4
  %309 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  store i32 15, i32* %311, align 4
  %312 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 3
  store i32 129, i32* %314, align 4
  %315 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 4
  store i32 128, i32* %317, align 4
  br label %318

318:                                              ; preds = %298, %278
  br label %319

319:                                              ; preds = %318, %254
  br label %394

320:                                              ; preds = %240
  %321 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %322 = load i32, i32* @COMP_BT_COEXIST, align 4
  %323 = load i32, i32* @DBG_DMESG, align 4
  %324 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %321, i32 %322, i32 %323, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %325 = load i64, i64* %8, align 8
  %326 = load i64, i64* @BT_TXRX_CNT_LEVEL_2, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %348

328:                                              ; preds = %320
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %330 = load i32, i32* @COMP_BT_COEXIST, align 4
  %331 = load i32, i32* @DBG_DMESG, align 4
  %332 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %329, i32 %330, i32 %331, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %333 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  store i32 163, i32* %335, align 4
  %336 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  store i32 5, i32* %338, align 4
  %339 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 2
  store i32 5, i32* %341, align 4
  %342 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 3
  store i32 0, i32* %344, align 4
  %345 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 4
  store i32 128, i32* %347, align 4
  br label %393

348:                                              ; preds = %320
  %349 = load i64, i64* %8, align 8
  %350 = load i64, i64* @BT_TXRX_CNT_LEVEL_1, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %372

352:                                              ; preds = %348
  %353 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %354 = load i32, i32* @COMP_BT_COEXIST, align 4
  %355 = load i32, i32* @DBG_DMESG, align 4
  %356 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %353, i32 %354, i32 %355, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %357 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  store i32 163, i32* %359, align 4
  %360 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  store i32 10, i32* %362, align 4
  %363 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 2
  store i32 10, i32* %365, align 4
  %366 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 3
  store i32 0, i32* %368, align 4
  %369 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 4
  store i32 128, i32* %371, align 4
  br label %392

372:                                              ; preds = %348
  %373 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %374 = load i32, i32* @COMP_BT_COEXIST, align 4
  %375 = load i32, i32* @DBG_DMESG, align 4
  %376 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %373, i32 %374, i32 %375, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %377 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  store i32 163, i32* %379, align 4
  %380 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  store i32 15, i32* %382, align 4
  %383 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 2
  store i32 15, i32* %385, align 4
  %386 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 3
  store i32 0, i32* %388, align 4
  %389 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 4
  store i32 128, i32* %391, align 4
  br label %392

392:                                              ; preds = %372, %352
  br label %393

393:                                              ; preds = %392, %328
  br label %394

394:                                              ; preds = %393, %319
  br label %395

395:                                              ; preds = %394, %199
  %396 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %397 = call i64 @rtl8723e_dm_bt_need_to_dec_bt_pwr(%struct.ieee80211_hw* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 11
  store i32 1, i32* %400, align 8
  br label %401

401:                                              ; preds = %399, %395
  %402 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %403 = load i32, i32* @COMP_BT_COEXIST, align 4
  %404 = load i32, i32* @DBG_DMESG, align 4
  %405 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hal_coex_8723, i32 0, i32 0), align 8
  %406 = load i64, i64* %8, align 8
  %407 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %402, i32 %403, i32 %404, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i64 %405, i64 %406)
  %408 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hal_coex_8723, i32 0, i32 0), align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %401
  %411 = load i64, i64* @BT_TXRX_CNT_LEVEL_3, align 8
  %412 = load i64, i64* %8, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %435

414:                                              ; preds = %410, %401
  %415 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %416 = load i32, i32* @COMP_BT_COEXIST, align 4
  %417 = load i32, i32* @DBG_DMESG, align 4
  %418 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %415, i32 %416, i32 %417, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  %419 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 9
  store i32 1, i32* %419, align 4
  %420 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  store i32 163, i32* %422, align 4
  %423 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 1
  store i32 5, i32* %425, align 4
  %426 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 2
  store i32 5, i32* %428, align 4
  %429 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 3
  store i32 131, i32* %431, align 4
  %432 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 4
  store i32 128, i32* %434, align 4
  br label %435

435:                                              ; preds = %414, %410
  %436 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %437 = call i64 @rtl8723e_dm_bt_is_coexist_state_changed(%struct.ieee80211_hw* %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %435
  %440 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %441 = call i32 @rtl8723e_dm_bt_set_bt_dm(%struct.ieee80211_hw* %440, %struct.btdm_8723* %5)
  br label %442

442:                                              ; preds = %439, %435
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_btdm_structure_reload(%struct.ieee80211_hw*, %struct.btdm_8723*) #1

declare dso_local i64 @rtl8723e_dm_bt_bt_tx_rx_counter_level(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @rtl8723e_dm_bt_check_coex_rssi_state(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i64 @rtl8723e_dm_bt_check_coex_rssi_state1(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i64 @rtl8723e_dm_bt_need_to_dec_bt_pwr(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl8723e_dm_bt_is_coexist_state_changed(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_set_bt_dm(%struct.ieee80211_hw*, %struct.btdm_8723*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
