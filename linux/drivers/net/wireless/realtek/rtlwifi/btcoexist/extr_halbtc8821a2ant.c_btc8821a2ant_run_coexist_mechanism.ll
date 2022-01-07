; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_run_coexist_mechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_run_coexist_mechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, i64, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i64 }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[BTCoex], Manual control!!!\0A\00", align 1
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"[BTCoex], RunCoexistMechanism(), run 5G coex setting!!<===\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[BTCoex], BT is under inquiry/page scan !!\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"[BTCoex], WiFi is under Link Process !!\0A\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@WIFI_P2P_GO_CONNECTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [84 x i8] c"############# [BTCoex],  Multi-Port num_of_wifi_link = %d, wifi_link_status = 0x%x\0A\00", align 1
@BTC_SET_BL_MIRACAST_PLUS_BT = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"[BTCoex], Algorithm = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"[BTCoex], Action 2-Ant common\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"[BTCoex], pre_algorithm = %d, cur_algorithm = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"[BTCoex], Action 2-Ant, algorithm = SCO\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS)\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR)\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"[BTCoex], Action 2-Ant, algorithm = HS mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN+A2DP\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_run_coexist_mechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_run_coexist_mechanism(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.btc_bt_link_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  store %struct.rtl_priv* %15, %struct.rtl_priv** %3, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 3
  store %struct.btc_bt_link_info* %17, %struct.btc_bt_link_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = load i32, i32* @COMP_BT_COEXIST, align 4
  %25 = load i32, i32* @DBG_LOUD, align 4
  %26 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %278

27:                                               ; preds = %1
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 1
  %30 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %29, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %33 = call i32 %30(%struct.btc_coexist* %31, i32 %32, i32* %5)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = load i32, i32* @COMP_BT_COEXIST, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %42 = call i32 @btc8821a2ant_coex_under_5g(%struct.btc_coexist* %41)
  br label %278

43:                                               ; preds = %27
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @COMP_BT_COEXIST, align 4
  %51 = load i32, i32* @DBG_LOUD, align 4
  %52 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %278

53:                                               ; preds = %43
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = call i64 @btc8821a2ant_action_algorithm(%struct.btc_coexist* %54)
  store i64 %55, i64* %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 129, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = load i32, i32* @COMP_BT_COEXIST, align 4
  %66 = load i32, i32* @DBG_LOUD, align 4
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = call i32 @btc8821a2ant_action_bt_inquiry(%struct.btc_coexist* %68)
  br label %278

70:                                               ; preds = %60, %53
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %71, i32 0, i32 1
  %73 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %72, align 8
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %76 = call i32 %73(%struct.btc_coexist* %74, i32 %75, i32* %10)
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %77, i32 0, i32 1
  %79 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %78, align 8
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %81 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %82 = call i32 %79(%struct.btc_coexist* %80, i32 %81, i32* %11)
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %84 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %83, i32 0, i32 1
  %85 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %84, align 8
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %87 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %88 = call i32 %85(%struct.btc_coexist* %86, i32 %87, i32* %12)
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94, %91, %70
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %99 = load i32, i32* @COMP_BT_COEXIST, align 4
  %100 = load i32, i32* @DBG_LOUD, align 4
  %101 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %103 = call i32 @btc8821a2ant_action_wifi_link_process(%struct.btc_coexist* %102)
  br label %278

104:                                              ; preds = %94
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %106 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %105, i32 0, i32 1
  %107 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %106, align 8
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %109 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %110 = call i32 %107(%struct.btc_coexist* %108, i32 %109, i32* %8)
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 16
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp sge i32 %113, 2
  br i1 %114, label %120, label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @WIFI_P2P_GO_CONNECTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115, %104
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = load i32, i32* @COMP_BT_COEXIST, align 4
  %123 = load i32, i32* @DBG_LOUD, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %121, i32 %122, i32 %123, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %4, align 8
  %128 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  store i32 1, i32* %9, align 4
  br label %133

132:                                              ; preds = %120
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %135 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %134, i32 0, i32 0
  %136 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %135, align 8
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %138 = load i32, i32* @BTC_SET_BL_MIRACAST_PLUS_BT, align 4
  %139 = call i32 %136(%struct.btc_coexist* %137, i32 %138, i32* %9)
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %141 = call i32 @btc8821a2ant_action_wifi_multi_port(%struct.btc_coexist* %140)
  br label %278

142:                                              ; preds = %115
  store i32 0, i32* %9, align 4
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %144 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %143, i32 0, i32 0
  %145 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %144, align 8
  %146 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %147 = load i32, i32* @BTC_SET_BL_MIRACAST_PLUS_BT, align 4
  %148 = call i32 %145(%struct.btc_coexist* %146, i32 %147, i32* %9)
  %149 = load i64, i64* %6, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %154 = load i32, i32* @COMP_BT_COEXIST, align 4
  %155 = load i32, i32* @DBG_LOUD, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  %160 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %161 = call i64 @btc8821a2ant_is_common_action(%struct.btc_coexist* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %142
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %165 = load i32, i32* @COMP_BT_COEXIST, align 4
  %166 = load i32, i32* @DBG_LOUD, align 4
  %167 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 1, i32* %169, align 4
  br label %278

170:                                              ; preds = %142
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %170
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %180 = load i32, i32* @COMP_BT_COEXIST, align 4
  %181 = load i32, i32* @DBG_LOUD, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %179, i32 %180, i32 %181, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %184, i32 %187)
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %178, %170
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %265 [
    i32 128, label %195
    i32 135, label %202
    i32 137, label %209
    i32 136, label %216
    i32 132, label %223
    i32 129, label %230
    i32 131, label %237
    i32 130, label %244
    i32 133, label %251
    i32 134, label %258
  ]

195:                                              ; preds = %191
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %197 = load i32, i32* @COMP_BT_COEXIST, align 4
  %198 = load i32, i32* @DBG_LOUD, align 4
  %199 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %200 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %201 = call i32 @btc8821a2ant_action_sco(%struct.btc_coexist* %200)
  br label %272

202:                                              ; preds = %191
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %204 = load i32, i32* @COMP_BT_COEXIST, align 4
  %205 = load i32, i32* @DBG_LOUD, align 4
  %206 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %207 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %208 = call i32 @btc8821a2ant_action_hid(%struct.btc_coexist* %207)
  br label %272

209:                                              ; preds = %191
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %211 = load i32, i32* @COMP_BT_COEXIST, align 4
  %212 = load i32, i32* @DBG_LOUD, align 4
  %213 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %214 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %215 = call i32 @btc8821a2ant_action_a2dp(%struct.btc_coexist* %214)
  br label %272

216:                                              ; preds = %191
  %217 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %218 = load i32, i32* @COMP_BT_COEXIST, align 4
  %219 = load i32, i32* @DBG_LOUD, align 4
  %220 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %217, i32 %218, i32 %219, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %221 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %222 = call i32 @btc8821a2ant_action_a2dp_pan_hs(%struct.btc_coexist* %221)
  br label %272

223:                                              ; preds = %191
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %225 = load i32, i32* @COMP_BT_COEXIST, align 4
  %226 = load i32, i32* @DBG_LOUD, align 4
  %227 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %224, i32 %225, i32 %226, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  %228 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %229 = call i32 @btc8821a2ant_action_pan_edr(%struct.btc_coexist* %228)
  br label %272

230:                                              ; preds = %191
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %232 = load i32, i32* @COMP_BT_COEXIST, align 4
  %233 = load i32, i32* @DBG_LOUD, align 4
  %234 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %235 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %236 = call i32 @btc8821a2ant_action_pan_hs(%struct.btc_coexist* %235)
  br label %272

237:                                              ; preds = %191
  %238 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %239 = load i32, i32* @COMP_BT_COEXIST, align 4
  %240 = load i32, i32* @DBG_LOUD, align 4
  %241 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %238, i32 %239, i32 %240, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  %242 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %243 = call i32 @btc8821a2ant_action_pan_edr_a2dp(%struct.btc_coexist* %242)
  br label %272

244:                                              ; preds = %191
  %245 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %246 = load i32, i32* @COMP_BT_COEXIST, align 4
  %247 = load i32, i32* @DBG_LOUD, align 4
  %248 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %245, i32 %246, i32 %247, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %249 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %250 = call i32 @btc8821a2ant_action_pan_edr_hid(%struct.btc_coexist* %249)
  br label %272

251:                                              ; preds = %191
  %252 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %253 = load i32, i32* @COMP_BT_COEXIST, align 4
  %254 = load i32, i32* @DBG_LOUD, align 4
  %255 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %252, i32 %253, i32 %254, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  %256 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %257 = call i32 @btc8821a2ant_act_hid_a2dp_pan_edr(%struct.btc_coexist* %256)
  br label %272

258:                                              ; preds = %191
  %259 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %260 = load i32, i32* @COMP_BT_COEXIST, align 4
  %261 = load i32, i32* @DBG_LOUD, align 4
  %262 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %259, i32 %260, i32 %261, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %263 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %264 = call i32 @btc8821a2ant_action_hid_a2dp(%struct.btc_coexist* %263)
  br label %272

265:                                              ; preds = %191
  %266 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %267 = load i32, i32* @COMP_BT_COEXIST, align 4
  %268 = load i32, i32* @DBG_LOUD, align 4
  %269 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %266, i32 %267, i32 %268, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0))
  %270 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %271 = call i32 @btc8821a2ant_coex_all_off(%struct.btc_coexist* %270)
  br label %272

272:                                              ; preds = %265, %258, %251, %244, %237, %230, %223, %216, %209, %202, %195
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 4
  br label %278

278:                                              ; preds = %22, %36, %48, %63, %97, %133, %272, %163
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8821a2ant_coex_under_5g(%struct.btc_coexist*) #1

declare dso_local i64 @btc8821a2ant_action_algorithm(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_wifi_link_process(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_wifi_multi_port(%struct.btc_coexist*) #1

declare dso_local i64 @btc8821a2ant_is_common_action(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_sco(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_a2dp_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_pan_edr_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_pan_edr_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_act_hid_a2dp_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_action_hid_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_coex_all_off(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
