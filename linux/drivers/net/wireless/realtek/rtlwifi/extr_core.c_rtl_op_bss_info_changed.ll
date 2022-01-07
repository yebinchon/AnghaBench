; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i64, i64, i32, i32, i64, i32, i64 }
%struct.rtl_priv = type { %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32 (%struct.ieee80211_hw*, i32, i64*)*, i64 (...)*, i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_15__, %struct.TYPE_14__, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.rtl_priv*, i64)* }
%struct.TYPE_11__ = type { i64 }
%struct.rtl_hal = type { i64 }
%struct.rtl_mac = type { i32, i64, i64, i64, i32, i32, i32, i8*, i64, i8*, i32, i32, i64, i32, i32, i64, i32 }
%struct.rtl_ps_ctl = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.cfg80211_bss = type { i32 }
%struct.rtl_sta_info = type { i8* }

@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BSS_CHANGED_BEACON_ENABLED\0A\00", align 1
@RTL_IBSS_INT_MASKS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"ADHOC DISABLE BEACON\0A\00", align 1
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@COMP_BEACON = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"BSS_CHANGED_BEACON_INT\0A\00", align 1
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@RT_MEDIA_CONNECT = common dso_local global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@COMP_EASY_CONCURRENT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"send PS STATIC frame\0A\00", align 1
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@WIRELESS_MODE_A = common dso_local global i8* null, align 8
@WIRELESS_MODE_B = common dso_local global i8* null, align 8
@WIRELESS_MODE_G = common dso_local global i8* null, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@WIRELESS_MODE_N_24G = common dso_local global i8* null, align 8
@WIRELESS_MODE_N_5G = common dso_local global i8* null, align 8
@WIRELESS_MODE_AC_5G = common dso_local global i8* null, align 8
@WIRELESS_MODE_AC_24G = common dso_local global i8* null, align 8
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@HW_VAR_KEEP_ALIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"BSS_CHANGED_ASSOC\0A\00", align 1
@RT_MEDIA_DISCONNECT = common dso_local global i64 0, align 8
@P2P_PS_NONE = common dso_local global i64 0, align 8
@P2P_PS_DISABLE = common dso_local global i32 0, align 4
@MAC80211_NOLINK = common dso_local global i64 0, align 8
@IEEE80211_BSS_TYPE_ESS = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"bssid = %pMF\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"cfg80211_unlink !!\0A\00", align 1
@PEER_UNKNOWN = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"BSS_CHANGED_UN_ASSOC\0A\00", align 1
@HW_VAR_H2C_FW_JOINBSSRPT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"BSS_CHANGED_ERP_CTS_PROT\0A\00", align 1
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"BSS_CHANGED_ERP_PREAMBLE use short preamble:%x\0A\00", align 1
@HW_VAR_ACK_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"BSS_CHANGED_ERP_SLOT\0A\00", align 1
@RTL_SLOT_TIME_9 = common dso_local global i32 0, align 4
@RTL_SLOT_TIME_20 = common dso_local global i32 0, align 4
@HW_VAR_SLOT_TIME = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"BSS_CHANGED_HT\0A\00", align 1
@HW_VAR_SHORTGI_DENSITY = common dso_local global i32 0, align 4
@HW_VAR_AMPDU_FACTOR = common dso_local global i32 0, align 4
@HW_VAR_AMPDU_MIN_SPACE = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"bssid: %pM\0A\00", align 1
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@HW_VAR_BASIC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @rtl_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  %12 = alloca %struct.rtl_ps_ctl*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ieee80211_sta*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cfg80211_bss*, align 8
  %17 = alloca %struct.ieee80211_sta*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_sta*, align 8
  %20 = alloca %struct.rtl_sta_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  store %struct.rtl_priv* %22, %struct.rtl_priv** %9, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %24 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %23)
  store %struct.rtl_hal* %24, %struct.rtl_hal** %10, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  %27 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %26)
  store %struct.rtl_mac* %27, %struct.rtl_mac** %11, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %29 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %28)
  %30 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %29)
  store %struct.rtl_ps_ctl* %30, %struct.rtl_ps_ctl** %12, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %4
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %184

52:                                               ; preds = %46, %40, %4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %119

62:                                               ; preds = %57
  %63 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %119

67:                                               ; preds = %62, %52
  %68 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %69 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %118

72:                                               ; preds = %67
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %74 = load i32, i32* @COMP_MAC80211, align 4
  %75 = load i32, i32* @DBG_DMESG, align 4
  %76 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 7
  %85 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %84, align 8
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @RTL_IBSS_INT_MASKS, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 %85(%struct.ieee80211_hw* %86, i32 %94, i32 0)
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 5
  %102 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %101, align 8
  %103 = icmp ne i32 (%struct.ieee80211_hw*)* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %72
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %106 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %105, i32 0, i32 1
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 5
  %111 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %110, align 8
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %113 = call i32 %111(%struct.ieee80211_hw* %112)
  br label %114

114:                                              ; preds = %104, %72
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %116 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %117 = call i32 @send_beacon_frame(%struct.ieee80211_hw* %115, %struct.ieee80211_vif* %116)
  br label %118

118:                                              ; preds = %114, %67
  br label %119

119:                                              ; preds = %118, %62, %57
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %159

124:                                              ; preds = %119
  %125 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %159, label %129

129:                                              ; preds = %124
  %130 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %131 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %158

134:                                              ; preds = %129
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %136 = load i32, i32* @COMP_MAC80211, align 4
  %137 = load i32, i32* @DBG_DMESG, align 4
  %138 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %140 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 7
  %147 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %146, align 8
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %150 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %149, i32 0, i32 1
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @RTL_IBSS_INT_MASKS, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 %147(%struct.ieee80211_hw* %148, i32 0, i32 %156)
  br label %158

158:                                              ; preds = %134, %129
  br label %159

159:                                              ; preds = %158, %124, %119
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %159
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %166 = load i32, i32* @COMP_BEACON, align 4
  %167 = load i32, i32* @DBG_TRACE, align 4
  %168 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %165, i32 %166, i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %173 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %172, i32 0, i32 16
  store i32 %171, i32* %173, align 8
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 1
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 6
  %180 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %179, align 8
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %182 = call i32 %180(%struct.ieee80211_hw* %181)
  br label %183

183:                                              ; preds = %164, %159
  br label %184

184:                                              ; preds = %183, %46
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %520

189:                                              ; preds = %184
  %190 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %191 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %371

194:                                              ; preds = %189
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %14, align 8
  store i64 10, i64* %15, align 8
  %195 = load i64, i64* @RT_MEDIA_CONNECT, align 8
  store i64 %195, i64* %13, align 8
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %197 = call i32 @rtl_cam_reset_sec_info(%struct.ieee80211_hw* %196)
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %199 = call i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw* %198)
  %200 = load i64, i64* @MAC80211_LINKED, align 8
  %201 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %202 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  %203 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %204 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %203, i32 0, i32 15
  store i64 0, i64* %204, align 8
  %205 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %206 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %209 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %208, i32 0, i32 14
  store i32 %207, i32* %209, align 4
  %210 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %211 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %214 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @ETH_ALEN, align 4
  %217 = call i32 @memcpy(i64 %212, i64 %215, i32 %216)
  %218 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %219 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %218, i32 0, i32 1
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 5
  %224 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %223, align 8
  %225 = icmp ne i32 (%struct.ieee80211_hw*)* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %194
  %227 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %228 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %227, i32 0, i32 1
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 5
  %233 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %232, align 8
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %235 = call i32 %233(%struct.ieee80211_hw* %234)
  br label %236

236:                                              ; preds = %226, %194
  %237 = call i32 (...) @rcu_read_lock()
  %238 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %239 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %240 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to i64*
  %243 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %238, i64* %242)
  store %struct.ieee80211_sta* %243, %struct.ieee80211_sta** %14, align 8
  %244 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %245 = icmp ne %struct.ieee80211_sta* %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %236
  %247 = call i32 (...) @rcu_read_unlock()
  br label %885

248:                                              ; preds = %236
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %250 = load i32, i32* @COMP_EASY_CONCURRENT, align 4
  %251 = load i32, i32* @DBG_LOUD, align 4
  %252 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %254 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %248
  %259 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %260 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %258
  %265 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %266 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %267 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %268 = call i32 @rtl_send_smps_action(%struct.ieee80211_hw* %265, %struct.ieee80211_sta* %266, i32 %267)
  br label %269

269:                                              ; preds = %264, %258
  br label %270

270:                                              ; preds = %269, %248
  %271 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %272 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @BAND_ON_5G, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %270
  %277 = load i8*, i8** @WIRELESS_MODE_A, align 8
  %278 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %279 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %278, i32 0, i32 7
  store i8* %277, i8** %279, align 8
  br label %296

280:                                              ; preds = %270
  %281 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %282 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp sle i32 %285, 15
  br i1 %286, label %287, label %291

287:                                              ; preds = %280
  %288 = load i8*, i8** @WIRELESS_MODE_B, align 8
  %289 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %290 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %289, i32 0, i32 7
  store i8* %288, i8** %290, align 8
  br label %295

291:                                              ; preds = %280
  %292 = load i8*, i8** @WIRELESS_MODE_G, align 8
  %293 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %294 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %293, i32 0, i32 7
  store i8* %292, i8** %294, align 8
  br label %295

295:                                              ; preds = %291, %287
  br label %296

296:                                              ; preds = %295, %276
  %297 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %298 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %317

302:                                              ; preds = %296
  %303 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %304 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @BAND_ON_2_4G, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load i8*, i8** @WIRELESS_MODE_N_24G, align 8
  %310 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %311 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %310, i32 0, i32 7
  store i8* %309, i8** %311, align 8
  br label %316

312:                                              ; preds = %302
  %313 = load i8*, i8** @WIRELESS_MODE_N_5G, align 8
  %314 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %315 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %314, i32 0, i32 7
  store i8* %313, i8** %315, align 8
  br label %316

316:                                              ; preds = %312, %308
  br label %317

317:                                              ; preds = %316, %296
  %318 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %319 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %338

323:                                              ; preds = %317
  %324 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %325 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @BAND_ON_5G, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %323
  %330 = load i8*, i8** @WIRELESS_MODE_AC_5G, align 8
  %331 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %332 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %331, i32 0, i32 7
  store i8* %330, i8** %332, align 8
  br label %337

333:                                              ; preds = %323
  %334 = load i8*, i8** @WIRELESS_MODE_AC_24G, align 8
  %335 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %336 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %335, i32 0, i32 7
  store i8* %334, i8** %336, align 8
  br label %337

337:                                              ; preds = %333, %329
  br label %338

338:                                              ; preds = %337, %317
  %339 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %340 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %355

344:                                              ; preds = %338
  %345 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %346 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %345, i32 0, i32 1
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 4
  %351 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)** %350, align 8
  %352 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %353 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %354 = call i32 %351(%struct.ieee80211_hw* %352, %struct.ieee80211_sta* %353, i32 0, i32 1)
  br label %355

355:                                              ; preds = %344, %338
  %356 = call i32 (...) @rcu_read_unlock()
  %357 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %358 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %357, i32 0, i32 1
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 0
  %363 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %362, align 8
  %364 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %365 = load i32, i32* @HW_VAR_KEEP_ALIVE, align 4
  %366 = call i32 %363(%struct.ieee80211_hw* %364, i32 %365, i64* %15)
  %367 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %368 = load i32, i32* @COMP_MAC80211, align 4
  %369 = load i32, i32* @DBG_DMESG, align 4
  %370 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %367, i32 %368, i32 %369, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %470

371:                                              ; preds = %189
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %16, align 8
  %372 = load i64, i64* @RT_MEDIA_DISCONNECT, align 8
  store i64 %372, i64* %13, align 8
  %373 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %374 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @MAC80211_LINKED, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %371
  %379 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %380 = call i32 @rtl_lps_leave(%struct.ieee80211_hw* %379)
  br label %381

381:                                              ; preds = %378, %371
  %382 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %12, align 8
  %383 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @P2P_PS_NONE, align 8
  %387 = icmp sgt i64 %385, %386
  br i1 %387, label %388, label %392

388:                                              ; preds = %381
  %389 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %390 = load i32, i32* @P2P_PS_DISABLE, align 4
  %391 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %389, i32 %390)
  br label %392

392:                                              ; preds = %388, %381
  %393 = load i64, i64* @MAC80211_NOLINK, align 8
  %394 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %395 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %394, i32 0, i32 1
  store i64 %393, i64* %395, align 8
  %396 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %397 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %400 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %399, i32 0, i32 8
  %401 = load i64, i64* %400, align 8
  %402 = inttoptr i64 %401 to i64*
  %403 = load i32, i32* @IEEE80211_BSS_TYPE_ESS, align 4
  %404 = load i32, i32* @IEEE80211_PRIVACY_OFF, align 4
  %405 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %398, i32* null, i64* %402, i32* null, i32 0, i32 %403, i32 %404)
  store %struct.cfg80211_bss* %405, %struct.cfg80211_bss** %16, align 8
  %406 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %407 = load i32, i32* @COMP_MAC80211, align 4
  %408 = load i32, i32* @DBG_DMESG, align 4
  %409 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %410 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %409, i32 0, i32 8
  %411 = load i64, i64* %410, align 8
  %412 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %406, i32 %407, i32 %408, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %411)
  %413 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %414 = icmp ne %struct.cfg80211_bss* %413, null
  br i1 %414, label %415, label %430

415:                                              ; preds = %392
  %416 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %417 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %420 = call i32 @cfg80211_unlink_bss(i32 %418, %struct.cfg80211_bss* %419)
  %421 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %422 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %425 = call i32 @cfg80211_put_bss(i32 %423, %struct.cfg80211_bss* %424)
  %426 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %427 = load i32, i32* @COMP_MAC80211, align 4
  %428 = load i32, i32* @DBG_DMESG, align 4
  %429 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %426, i32 %427, i32 %428, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %430

430:                                              ; preds = %415, %392
  %431 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %432 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %431, i32 0, i32 8
  %433 = load i64, i64* %432, align 8
  %434 = call i32 @eth_zero_addr(i64 %433)
  %435 = load i8*, i8** @PEER_UNKNOWN, align 8
  %436 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %437 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %436, i32 0, i32 9
  store i8* %435, i8** %437, align 8
  %438 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %439 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %438, i32 0, i32 7
  store i8* null, i8** %439, align 8
  %440 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %441 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %440, i32 0, i32 3
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %465

445:                                              ; preds = %430
  %446 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %447 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %446, i32 0, i32 1
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %450, i32 0, i32 3
  %452 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %451, align 8
  %453 = icmp ne i32 (%struct.ieee80211_hw*)* %452, null
  br i1 %453, label %454, label %464

454:                                              ; preds = %445
  %455 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %456 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %455, i32 0, i32 1
  %457 = load %struct.TYPE_17__*, %struct.TYPE_17__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 0
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i32 0, i32 3
  %461 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %460, align 8
  %462 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %463 = call i32 %461(%struct.ieee80211_hw* %462)
  br label %464

464:                                              ; preds = %454, %445
  br label %465

465:                                              ; preds = %464, %430
  %466 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %467 = load i32, i32* @COMP_MAC80211, align 4
  %468 = load i32, i32* @DBG_DMESG, align 4
  %469 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %466, i32 %467, i32 %468, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %470

470:                                              ; preds = %465, %355
  %471 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %472 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %471, i32 0, i32 1
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_16__*, %struct.TYPE_16__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %475, i32 0, i32 2
  %477 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %476, align 8
  %478 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %479 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %480 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = call i32 %477(%struct.ieee80211_hw* %478, i32 %481)
  %483 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %484 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %483, i32 0, i32 1
  %485 = load %struct.TYPE_17__*, %struct.TYPE_17__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %485, i32 0, i32 0
  %487 = load %struct.TYPE_16__*, %struct.TYPE_16__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %487, i32 0, i32 0
  %489 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %488, align 8
  %490 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %491 = load i32, i32* @HW_VAR_H2C_FW_JOINBSSRPT, align 4
  %492 = call i32 %489(%struct.ieee80211_hw* %490, i32 %491, i64* %13)
  %493 = load i64, i64* %13, align 8
  %494 = load i64, i64* @RT_MEDIA_CONNECT, align 8
  %495 = icmp eq i64 %493, %494
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i32 1, i32 0
  %498 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %12, align 8
  %499 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %498, i32 0, i32 0
  store i32 %497, i32* %499, align 8
  %500 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %501 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %500, i32 0, i32 1
  %502 = load %struct.TYPE_17__*, %struct.TYPE_17__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %502, i32 0, i32 0
  %504 = load %struct.TYPE_16__*, %struct.TYPE_16__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %504, i32 0, i32 1
  %506 = load i64 (...)*, i64 (...)** %505, align 8
  %507 = call i64 (...) %506()
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %519

509:                                              ; preds = %470
  %510 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %511 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 0
  %515 = load i32 (%struct.rtl_priv*, i64)*, i32 (%struct.rtl_priv*, i64)** %514, align 8
  %516 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %517 = load i64, i64* %13, align 8
  %518 = call i32 %515(%struct.rtl_priv* %516, i64 %517)
  br label %519

519:                                              ; preds = %509, %470
  br label %520

520:                                              ; preds = %519, %184
  %521 = load i32, i32* %8, align 4
  %522 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %535

525:                                              ; preds = %520
  %526 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %527 = load i32, i32* @COMP_MAC80211, align 4
  %528 = load i32, i32* @DBG_TRACE, align 4
  %529 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %526, i32 %527, i32 %528, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %530 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %531 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 8
  %533 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %534 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %533, i32 0, i32 13
  store i32 %532, i32* %534, align 8
  br label %535

535:                                              ; preds = %525, %520
  %536 = load i32, i32* %8, align 4
  %537 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %565

540:                                              ; preds = %535
  %541 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %542 = load i32, i32* @COMP_MAC80211, align 4
  %543 = load i32, i32* @DBG_LOUD, align 4
  %544 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %545 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %544, i32 0, i32 2
  %546 = load i64, i64* %545, align 8
  %547 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %541, i32 %542, i32 %543, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64 %546)
  %548 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %549 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %548, i32 0, i32 2
  %550 = load i64, i64* %549, align 8
  %551 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %552 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %551, i32 0, i32 12
  store i64 %550, i64* %552, align 8
  %553 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %554 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %553, i32 0, i32 1
  %555 = load %struct.TYPE_17__*, %struct.TYPE_17__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %555, i32 0, i32 0
  %557 = load %struct.TYPE_16__*, %struct.TYPE_16__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %557, i32 0, i32 0
  %559 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %558, align 8
  %560 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %561 = load i32, i32* @HW_VAR_ACK_PREAMBLE, align 4
  %562 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %563 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %562, i32 0, i32 12
  %564 = call i32 %559(%struct.ieee80211_hw* %560, i32 %561, i64* %563)
  br label %565

565:                                              ; preds = %540, %535
  %566 = load i32, i32* %8, align 4
  %567 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %568 = and i32 %566, %567
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %601

570:                                              ; preds = %565
  %571 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %572 = load i32, i32* @COMP_MAC80211, align 4
  %573 = load i32, i32* @DBG_TRACE, align 4
  %574 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %571, i32 %572, i32 %573, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %575 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %576 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %575, i32 0, i32 1
  %577 = load i64, i64* %576, align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %583

579:                                              ; preds = %570
  %580 = load i32, i32* @RTL_SLOT_TIME_9, align 4
  %581 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %582 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %581, i32 0, i32 11
  store i32 %580, i32* %582, align 4
  br label %587

583:                                              ; preds = %570
  %584 = load i32, i32* @RTL_SLOT_TIME_20, align 4
  %585 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %586 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %585, i32 0, i32 11
  store i32 %584, i32* %586, align 4
  br label %587

587:                                              ; preds = %583, %579
  %588 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %589 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %588, i32 0, i32 1
  %590 = load %struct.TYPE_17__*, %struct.TYPE_17__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %590, i32 0, i32 0
  %592 = load %struct.TYPE_16__*, %struct.TYPE_16__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %592, i32 0, i32 0
  %594 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %593, align 8
  %595 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %596 = load i32, i32* @HW_VAR_SLOT_TIME, align 4
  %597 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %598 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %597, i32 0, i32 11
  %599 = bitcast i32* %598 to i64*
  %600 = call i32 %594(%struct.ieee80211_hw* %595, i32 %596, i64* %599)
  br label %601

601:                                              ; preds = %587, %565
  %602 = load i32, i32* %8, align 4
  %603 = load i32, i32* @BSS_CHANGED_HT, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %692

606:                                              ; preds = %601
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %17, align 8
  %607 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %608 = load i32, i32* @COMP_MAC80211, align 4
  %609 = load i32, i32* @DBG_TRACE, align 4
  %610 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %607, i32 %608, i32 %609, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %611 = call i32 (...) @rcu_read_lock()
  %612 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %613 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %614 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %613, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = inttoptr i64 %615 to i64*
  %617 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %612, i64* %616)
  store %struct.ieee80211_sta* %617, %struct.ieee80211_sta** %17, align 8
  %618 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %619 = icmp ne %struct.ieee80211_sta* %618, null
  br i1 %619, label %620, label %653

620:                                              ; preds = %606
  %621 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %622 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %621, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %622, i32 0, i32 0
  %624 = load i64, i64* %623, align 8
  %625 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %626 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %625, i32 0, i32 2
  %627 = load i64, i64* %626, align 8
  %628 = icmp sgt i64 %624, %627
  br i1 %628, label %629, label %636

629:                                              ; preds = %620
  %630 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %631 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %630, i32 0, i32 2
  %632 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %631, i32 0, i32 0
  %633 = load i64, i64* %632, align 8
  %634 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %635 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %634, i32 0, i32 2
  store i64 %633, i64* %635, align 8
  br label %636

636:                                              ; preds = %629, %620
  %637 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %638 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %637, i32 0, i32 2
  %639 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %638, i32 0, i32 1
  %640 = load i64, i64* %639, align 8
  %641 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %642 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %641, i32 0, i32 3
  %643 = load i64, i64* %642, align 8
  %644 = icmp slt i64 %640, %643
  br i1 %644, label %645, label %652

645:                                              ; preds = %636
  %646 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %647 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %647, i32 0, i32 1
  %649 = load i64, i64* %648, align 8
  %650 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %651 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %650, i32 0, i32 3
  store i64 %649, i64* %651, align 8
  br label %652

652:                                              ; preds = %645, %636
  br label %653

653:                                              ; preds = %652, %606
  %654 = call i32 (...) @rcu_read_unlock()
  %655 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %656 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %655, i32 0, i32 1
  %657 = load %struct.TYPE_17__*, %struct.TYPE_17__** %656, align 8
  %658 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %657, i32 0, i32 0
  %659 = load %struct.TYPE_16__*, %struct.TYPE_16__** %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %659, i32 0, i32 0
  %661 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %660, align 8
  %662 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %663 = load i32, i32* @HW_VAR_SHORTGI_DENSITY, align 4
  %664 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %665 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %664, i32 0, i32 10
  %666 = bitcast i32* %665 to i64*
  %667 = call i32 %661(%struct.ieee80211_hw* %662, i32 %663, i64* %666)
  %668 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %669 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %668, i32 0, i32 1
  %670 = load %struct.TYPE_17__*, %struct.TYPE_17__** %669, align 8
  %671 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %670, i32 0, i32 0
  %672 = load %struct.TYPE_16__*, %struct.TYPE_16__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %672, i32 0, i32 0
  %674 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %673, align 8
  %675 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %676 = load i32, i32* @HW_VAR_AMPDU_FACTOR, align 4
  %677 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %678 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %677, i32 0, i32 3
  %679 = call i32 %674(%struct.ieee80211_hw* %675, i32 %676, i64* %678)
  %680 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %681 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %680, i32 0, i32 1
  %682 = load %struct.TYPE_17__*, %struct.TYPE_17__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %682, i32 0, i32 0
  %684 = load %struct.TYPE_16__*, %struct.TYPE_16__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %684, i32 0, i32 0
  %686 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %685, align 8
  %687 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %688 = load i32, i32* @HW_VAR_AMPDU_MIN_SPACE, align 4
  %689 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %690 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %689, i32 0, i32 2
  %691 = call i32 %686(%struct.ieee80211_hw* %687, i32 %688, i64* %690)
  br label %692

692:                                              ; preds = %653, %601
  %693 = load i32, i32* %8, align 4
  %694 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %695 = and i32 %693, %694
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %884

697:                                              ; preds = %692
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %19, align 8
  %698 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %699 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %698, i32 0, i32 1
  %700 = load %struct.TYPE_17__*, %struct.TYPE_17__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %700, i32 0, i32 0
  %702 = load %struct.TYPE_16__*, %struct.TYPE_16__** %701, align 8
  %703 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %702, i32 0, i32 0
  %704 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %703, align 8
  %705 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %706 = load i32, i32* @HW_VAR_BSSID, align 4
  %707 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %708 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %707, i32 0, i32 0
  %709 = load i64, i64* %708, align 8
  %710 = inttoptr i64 %709 to i64*
  %711 = call i32 %704(%struct.ieee80211_hw* %705, i32 %706, i64* %710)
  %712 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %713 = load i32, i32* @COMP_MAC80211, align 4
  %714 = load i32, i32* @DBG_DMESG, align 4
  %715 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %716 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %715, i32 0, i32 0
  %717 = load i64, i64* %716, align 8
  %718 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %712, i32 %713, i32 %714, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 %717)
  %719 = load i8*, i8** @PEER_UNKNOWN, align 8
  %720 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %721 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %720, i32 0, i32 9
  store i8* %719, i8** %721, align 8
  %722 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %723 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %722, i32 0, i32 8
  %724 = load i64, i64* %723, align 8
  %725 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %726 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %725, i32 0, i32 0
  %727 = load i64, i64* %726, align 8
  %728 = load i32, i32* @ETH_ALEN, align 4
  %729 = call i32 @memcpy(i64 %724, i64 %727, i32 %728)
  %730 = call i32 (...) @rcu_read_lock()
  %731 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %732 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %733 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %732, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = inttoptr i64 %734 to i64*
  %736 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %731, i64* %735)
  store %struct.ieee80211_sta* %736, %struct.ieee80211_sta** %19, align 8
  %737 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %738 = icmp ne %struct.ieee80211_sta* %737, null
  br i1 %738, label %741, label %739

739:                                              ; preds = %697
  %740 = call i32 (...) @rcu_read_unlock()
  br label %885

741:                                              ; preds = %697
  %742 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %743 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %742, i32 0, i32 0
  %744 = load i64, i64* %743, align 8
  %745 = load i64, i64* @BAND_ON_5G, align 8
  %746 = icmp eq i64 %744, %745
  br i1 %746, label %747, label %751

747:                                              ; preds = %741
  %748 = load i8*, i8** @WIRELESS_MODE_A, align 8
  %749 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %750 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %749, i32 0, i32 7
  store i8* %748, i8** %750, align 8
  br label %767

751:                                              ; preds = %741
  %752 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %753 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %752, i32 0, i32 0
  %754 = load i32*, i32** %753, align 8
  %755 = getelementptr inbounds i32, i32* %754, i64 0
  %756 = load i32, i32* %755, align 4
  %757 = icmp sle i32 %756, 15
  br i1 %757, label %758, label %762

758:                                              ; preds = %751
  %759 = load i8*, i8** @WIRELESS_MODE_B, align 8
  %760 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %761 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %760, i32 0, i32 7
  store i8* %759, i8** %761, align 8
  br label %766

762:                                              ; preds = %751
  %763 = load i8*, i8** @WIRELESS_MODE_G, align 8
  %764 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %765 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %764, i32 0, i32 7
  store i8* %763, i8** %765, align 8
  br label %766

766:                                              ; preds = %762, %758
  br label %767

767:                                              ; preds = %766, %747
  %768 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %769 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %768, i32 0, i32 2
  %770 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %769, i32 0, i32 2
  %771 = load i64, i64* %770, align 8
  %772 = icmp ne i64 %771, 0
  br i1 %772, label %773, label %788

773:                                              ; preds = %767
  %774 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %775 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %774, i32 0, i32 0
  %776 = load i64, i64* %775, align 8
  %777 = load i64, i64* @BAND_ON_2_4G, align 8
  %778 = icmp eq i64 %776, %777
  br i1 %778, label %779, label %783

779:                                              ; preds = %773
  %780 = load i8*, i8** @WIRELESS_MODE_N_24G, align 8
  %781 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %782 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %781, i32 0, i32 7
  store i8* %780, i8** %782, align 8
  br label %787

783:                                              ; preds = %773
  %784 = load i8*, i8** @WIRELESS_MODE_N_5G, align 8
  %785 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %786 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %785, i32 0, i32 7
  store i8* %784, i8** %786, align 8
  br label %787

787:                                              ; preds = %783, %779
  br label %788

788:                                              ; preds = %787, %767
  %789 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %790 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %789, i32 0, i32 1
  %791 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %790, i32 0, i32 0
  %792 = load i64, i64* %791, align 8
  %793 = icmp ne i64 %792, 0
  br i1 %793, label %794, label %809

794:                                              ; preds = %788
  %795 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %796 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %795, i32 0, i32 0
  %797 = load i64, i64* %796, align 8
  %798 = load i64, i64* @BAND_ON_5G, align 8
  %799 = icmp eq i64 %797, %798
  br i1 %799, label %800, label %804

800:                                              ; preds = %794
  %801 = load i8*, i8** @WIRELESS_MODE_AC_5G, align 8
  %802 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %803 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %802, i32 0, i32 7
  store i8* %801, i8** %803, align 8
  br label %808

804:                                              ; preds = %794
  %805 = load i8*, i8** @WIRELESS_MODE_AC_24G, align 8
  %806 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %807 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %806, i32 0, i32 7
  store i8* %805, i8** %807, align 8
  br label %808

808:                                              ; preds = %804, %800
  br label %809

809:                                              ; preds = %808, %788
  %810 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %811 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %810, i32 0, i32 0
  %812 = load i32, i32* %811, align 4
  %813 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %814 = icmp eq i32 %812, %813
  br i1 %814, label %815, label %825

815:                                              ; preds = %809
  %816 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %817 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %816, i32 0, i32 3
  %818 = load i64, i64* %817, align 8
  %819 = inttoptr i64 %818 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %819, %struct.rtl_sta_info** %20, align 8
  %820 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %821 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %820, i32 0, i32 7
  %822 = load i8*, i8** %821, align 8
  %823 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %20, align 8
  %824 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %823, i32 0, i32 0
  store i8* %822, i8** %824, align 8
  br label %825

825:                                              ; preds = %815, %809
  %826 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %827 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %826, i32 0, i32 2
  %828 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %827, i32 0, i32 2
  %829 = load i64, i64* %828, align 8
  %830 = icmp ne i64 %829, 0
  br i1 %830, label %831, label %834

831:                                              ; preds = %825
  %832 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %833 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %832, i32 0, i32 4
  store i32 1, i32* %833, align 8
  br label %834

834:                                              ; preds = %831, %825
  %835 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %836 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %836, i32 0, i32 0
  %838 = load i64, i64* %837, align 8
  %839 = icmp ne i64 %838, 0
  br i1 %839, label %840, label %843

840:                                              ; preds = %834
  %841 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %842 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %841, i32 0, i32 5
  store i32 1, i32* %842, align 4
  br label %843

843:                                              ; preds = %840, %834
  %844 = load i32, i32* %8, align 4
  %845 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %846 = and i32 %844, %845
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %848, label %882

848:                                              ; preds = %843
  %849 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %850 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %849, i32 0, i32 0
  %851 = load i64, i64* %850, align 8
  %852 = load i64, i64* @BAND_ON_5G, align 8
  %853 = icmp eq i64 %851, %852
  br i1 %853, label %854, label %861

854:                                              ; preds = %848
  %855 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %856 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %855, i32 0, i32 0
  %857 = load i32*, i32** %856, align 8
  %858 = getelementptr inbounds i32, i32* %857, i64 1
  %859 = load i32, i32* %858, align 4
  %860 = shl i32 %859, 4
  store i32 %860, i32* %18, align 4
  br label %867

861:                                              ; preds = %848
  %862 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %19, align 8
  %863 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %862, i32 0, i32 0
  %864 = load i32*, i32** %863, align 8
  %865 = getelementptr inbounds i32, i32* %864, i64 0
  %866 = load i32, i32* %865, align 4
  store i32 %866, i32* %18, align 4
  br label %867

867:                                              ; preds = %861, %854
  %868 = load i32, i32* %18, align 4
  %869 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %870 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %869, i32 0, i32 6
  store i32 %868, i32* %870, align 8
  %871 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %872 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %871, i32 0, i32 1
  %873 = load %struct.TYPE_17__*, %struct.TYPE_17__** %872, align 8
  %874 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %873, i32 0, i32 0
  %875 = load %struct.TYPE_16__*, %struct.TYPE_16__** %874, align 8
  %876 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %875, i32 0, i32 0
  %877 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %876, align 8
  %878 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %879 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %880 = bitcast i32* %18 to i64*
  %881 = call i32 %877(%struct.ieee80211_hw* %878, i32 %879, i64* %880)
  br label %882

882:                                              ; preds = %867, %843
  %883 = call i32 (...) @rcu_read_unlock()
  br label %884

884:                                              ; preds = %882, %692
  br label %885

885:                                              ; preds = %884, %739, %246
  %886 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %887 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %886, i32 0, i32 0
  %888 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %887, i32 0, i32 0
  %889 = call i32 @mutex_unlock(i32* %888)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @send_beacon_frame(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @rtl_cam_reset_sec_info(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i64*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rtl_send_smps_action(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rtl_lps_leave(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, i32*, i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_unlink_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @eth_zero_addr(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
