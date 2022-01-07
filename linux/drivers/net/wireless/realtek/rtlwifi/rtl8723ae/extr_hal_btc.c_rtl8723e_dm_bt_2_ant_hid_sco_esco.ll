; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_2_ant_hid_sco_esco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_2_ant_hid_sco_esco.c"
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
@BT_TXRX_CNT_LEVEL_2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"[BTCoex], BT TxRx Counters >= 1400\0A\00", align 1
@BT_TXRX_CNT_LEVEL_1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"[BTCoex], BT TxRx Counters >= 1200 && < 1400\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"[BTCoex], BT TxRx Counters < 1200\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"HT20 or Legacy\0A\00", align 1
@BT_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BT_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Wifi rssi high\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Wifi rssi low\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Wifi rssi-1 high\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"[BTCoex], BT TxRx Counters>= 1200 && < 1400\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Wifi rssi-1 low\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"[BTCoex], BT btInqPageStartTime = 0x%x, btTxRxCntLvl = %d\0A\00", align 1
@hal_coex_8723 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BT_TXRX_CNT_LEVEL_3 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [51 x i8] c"[BTCoex], Set BT inquiry / page scan 0x3a setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_2_ant_hid_sco_esco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_2_ant_hid_sco_esco(%struct.ieee80211_hw* %0) #0 {
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
  br i1 %29, label %30, label %111

30:                                               ; preds = %1
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @COMP_BT_COEXIST, align 4
  %33 = load i32, i32* @DBG_DMESG, align 4
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 3
  store i32 1431655765, i32* %35, align 4
  %36 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 4
  store i32 65535, i32* %36, align 8
  %37 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 5
  store i32 3, i32* %37, align 4
  %38 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 6
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 7
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 8
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 9
  store i32 1, i32* %41, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @BT_TXRX_CNT_LEVEL_2, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %30
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @COMP_BT_COEXIST, align 4
  %48 = load i32, i32* @DBG_DMESG, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 163, i32* %52, align 4
  %53 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 5, i32* %55, align 4
  %56 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 5, i32* %58, align 4
  %59 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 2, i32* %61, align 4
  %62 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 128, i32* %64, align 4
  br label %110

65:                                               ; preds = %30
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @BT_TXRX_CNT_LEVEL_1, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i32, i32* @COMP_BT_COEXIST, align 4
  %72 = load i32, i32* @DBG_DMESG, align 4
  %73 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 163, i32* %76, align 4
  %77 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 10, i32* %79, align 4
  %80 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 10, i32* %82, align 4
  %83 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  store i32 2, i32* %85, align 4
  %86 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  store i32 128, i32* %88, align 4
  br label %109

89:                                               ; preds = %65
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %91 = load i32, i32* @COMP_BT_COEXIST, align 4
  %92 = load i32, i32* @DBG_DMESG, align 4
  %93 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %94 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 163, i32* %96, align 4
  %97 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 15, i32* %99, align 4
  %100 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 15, i32* %102, align 4
  %103 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 2, i32* %105, align 4
  %106 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32 128, i32* %108, align 4
  br label %109

109:                                              ; preds = %89, %69
  br label %110

110:                                              ; preds = %109, %45
  br label %306

111:                                              ; preds = %1
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %113 = load i32, i32* @COMP_BT_COEXIST, align 4
  %114 = load i32, i32* @DBG_DMESG, align 4
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = call i64 @rtl8723e_dm_bt_check_coex_rssi_state(%struct.ieee80211_hw* %116, i32 2, i32 47, i32 0)
  store i64 %117, i64* %6, align 8
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = call i64 @rtl8723e_dm_bt_check_coex_rssi_state1(%struct.ieee80211_hw* %118, i32 2, i32 27, i32 0)
  store i64 %119, i64* %7, align 8
  %120 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 3
  store i32 1431655765, i32* %120, align 4
  %121 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 4
  store i32 65535, i32* %121, align 8
  %122 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 5
  store i32 3, i32* %122, align 4
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @BT_RSSI_STATE_HIGH, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %111
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* @BT_RSSI_STATE_STAY_HIGH, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126, %111
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = load i32, i32* @COMP_BT_COEXIST, align 4
  %133 = load i32, i32* @DBG_DMESG, align 4
  %134 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %135 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 6
  store i32 1, i32* %135, align 8
  %136 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 7
  store i32 1, i32* %136, align 4
  %137 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 8
  store i32 0, i32* %137, align 8
  br label %146

138:                                              ; preds = %126
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %140 = load i32, i32* @COMP_BT_COEXIST, align 4
  %141 = load i32, i32* @DBG_DMESG, align 4
  %142 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %143 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 6
  store i32 0, i32* %143, align 8
  %144 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 7
  store i32 0, i32* %144, align 4
  %145 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 8
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %138, %130
  %147 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 9
  store i32 1, i32* %147, align 4
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* @BT_RSSI_STATE_HIGH, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* @BT_RSSI_STATE_STAY_HIGH, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %231

155:                                              ; preds = %151, %146
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = load i32, i32* @COMP_BT_COEXIST, align 4
  %158 = load i32, i32* @DBG_DMESG, align 4
  %159 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %161 = call i32 @rtl_write_byte(%struct.rtl_priv* %160, i32 2179, i32 64)
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* @BT_TXRX_CNT_LEVEL_2, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %185

165:                                              ; preds = %155
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %167 = load i32, i32* @COMP_BT_COEXIST, align 4
  %168 = load i32, i32* @DBG_DMESG, align 4
  %169 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %170 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 163, i32* %172, align 4
  %173 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 5, i32* %175, align 4
  %176 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  store i32 5, i32* %178, align 4
  %179 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  store i32 131, i32* %181, align 4
  %182 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  store i32 128, i32* %184, align 4
  br label %230

185:                                              ; preds = %155
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @BT_TXRX_CNT_LEVEL_1, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %209

189:                                              ; preds = %185
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %191 = load i32, i32* @COMP_BT_COEXIST, align 4
  %192 = load i32, i32* @DBG_DMESG, align 4
  %193 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %194 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 163, i32* %196, align 4
  %197 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32 10, i32* %199, align 4
  %200 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  store i32 10, i32* %202, align 4
  %203 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  store i32 131, i32* %205, align 4
  %206 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  store i32 128, i32* %208, align 4
  br label %229

209:                                              ; preds = %185
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %211 = load i32, i32* @COMP_BT_COEXIST, align 4
  %212 = load i32, i32* @DBG_DMESG, align 4
  %213 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %214 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  store i32 163, i32* %216, align 4
  %217 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  store i32 15, i32* %219, align 4
  %220 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  store i32 15, i32* %222, align 4
  %223 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  store i32 131, i32* %225, align 4
  %226 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 4
  store i32 128, i32* %228, align 4
  br label %229

229:                                              ; preds = %209, %189
  br label %230

230:                                              ; preds = %229, %165
  br label %305

231:                                              ; preds = %151
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %233 = load i32, i32* @COMP_BT_COEXIST, align 4
  %234 = load i32, i32* @DBG_DMESG, align 4
  %235 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %236 = load i64, i64* %8, align 8
  %237 = load i64, i64* @BT_TXRX_CNT_LEVEL_2, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %259

239:                                              ; preds = %231
  %240 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %241 = load i32, i32* @COMP_BT_COEXIST, align 4
  %242 = load i32, i32* @DBG_DMESG, align 4
  %243 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %240, i32 %241, i32 %242, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %244 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 163, i32* %246, align 4
  %247 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  store i32 5, i32* %249, align 4
  %250 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  store i32 5, i32* %252, align 4
  %253 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  store i32 2, i32* %255, align 4
  %256 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 4
  store i32 128, i32* %258, align 4
  br label %304

259:                                              ; preds = %231
  %260 = load i64, i64* %8, align 8
  %261 = load i64, i64* @BT_TXRX_CNT_LEVEL_1, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %283

263:                                              ; preds = %259
  %264 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %265 = load i32, i32* @COMP_BT_COEXIST, align 4
  %266 = load i32, i32* @DBG_DMESG, align 4
  %267 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %264, i32 %265, i32 %266, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %268 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 163, i32* %270, align 4
  %271 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  store i32 10, i32* %273, align 4
  %274 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  store i32 10, i32* %276, align 4
  %277 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 3
  store i32 2, i32* %279, align 4
  %280 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 4
  store i32 128, i32* %282, align 4
  br label %303

283:                                              ; preds = %259
  %284 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %285 = load i32, i32* @COMP_BT_COEXIST, align 4
  %286 = load i32, i32* @DBG_DMESG, align 4
  %287 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %284, i32 %285, i32 %286, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %288 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 163, i32* %290, align 4
  %291 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  store i32 15, i32* %293, align 4
  %294 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  store i32 15, i32* %296, align 4
  %297 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 3
  store i32 2, i32* %299, align 4
  %300 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 4
  store i32 128, i32* %302, align 4
  br label %303

303:                                              ; preds = %283, %263
  br label %304

304:                                              ; preds = %303, %239
  br label %305

305:                                              ; preds = %304, %230
  br label %306

306:                                              ; preds = %305, %110
  %307 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %308 = call i64 @rtl8723e_dm_bt_need_to_dec_bt_pwr(%struct.ieee80211_hw* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 11
  store i32 1, i32* %311, align 8
  br label %312

312:                                              ; preds = %310, %306
  %313 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %314 = load i32, i32* @COMP_BT_COEXIST, align 4
  %315 = load i32, i32* @DBG_DMESG, align 4
  %316 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hal_coex_8723, i32 0, i32 0), align 8
  %317 = load i64, i64* %8, align 8
  %318 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %313, i32 %314, i32 %315, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i64 %316, i64 %317)
  %319 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hal_coex_8723, i32 0, i32 0), align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %312
  %322 = load i64, i64* @BT_TXRX_CNT_LEVEL_3, align 8
  %323 = load i64, i64* %8, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %346

325:                                              ; preds = %321, %312
  %326 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %327 = load i32, i32* @COMP_BT_COEXIST, align 4
  %328 = load i32, i32* @DBG_DMESG, align 4
  %329 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %326, i32 %327, i32 %328, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  %330 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 9
  store i32 1, i32* %330, align 4
  %331 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  store i32 163, i32* %333, align 4
  %334 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  store i32 5, i32* %336, align 4
  %337 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 2
  store i32 5, i32* %339, align 4
  %340 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 3
  store i32 2, i32* %342, align 4
  %343 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %5, i32 0, i32 10
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 4
  store i32 128, i32* %345, align 4
  br label %346

346:                                              ; preds = %325, %321
  %347 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %348 = call i64 @rtl8723e_dm_bt_is_coexist_state_changed(%struct.ieee80211_hw* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %346
  %351 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %352 = call i32 @rtl8723e_dm_bt_set_bt_dm(%struct.ieee80211_hw* %351, %struct.btdm_8723* %5)
  br label %353

353:                                              ; preds = %350, %346
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
