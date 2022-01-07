; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_run_coexist_mechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_run_coexist_mechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, i64, %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i64 }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", align 1
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
@.str.8 = private unnamed_addr constant [44 x i8] c"[BTCoex], preAlgorithm=%d, curAlgorithm=%d\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_run_coexist_mechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_run_coexist_mechanism(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btc_bt_link_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  store %struct.rtl_priv* %14, %struct.rtl_priv** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 3
  store %struct.btc_bt_link_info* %16, %struct.btc_bt_link_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @COMP_BT_COEXIST, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @COMP_BT_COEXIST, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %265

30:                                               ; preds = %1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @COMP_BT_COEXIST, align 4
  %38 = load i32, i32* @DBG_LOUD, align 4
  %39 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %265

40:                                               ; preds = %30
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %42 = call i64 @btc8723b2ant_action_algorithm(%struct.btc_coexist* %41)
  store i64 %42, i64* %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 129, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i32, i32* @COMP_BT_COEXIST, align 4
  %53 = load i32, i32* @DBG_LOUD, align 4
  %54 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = call i32 @btc8723b2ant_action_bt_inquiry(%struct.btc_coexist* %55)
  br label %265

57:                                               ; preds = %47, %40
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %59 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %58, i32 0, i32 1
  %60 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %59, align 8
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %63 = call i32 %60(%struct.btc_coexist* %61, i32 %62, i32* %9)
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %64, i32 0, i32 1
  %66 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %65, align 8
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %69 = call i32 %66(%struct.btc_coexist* %67, i32 %68, i32* %10)
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %70, i32 0, i32 1
  %72 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %71, align 8
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %75 = call i32 %72(%struct.btc_coexist* %73, i32 %74, i32* %11)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81, %78, %57
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = load i32, i32* @COMP_BT_COEXIST, align 4
  %87 = load i32, i32* @DBG_LOUD, align 4
  %88 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %90 = call i32 @btc8723b2ant_action_wifi_link_process(%struct.btc_coexist* %89)
  br label %265

91:                                               ; preds = %81
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %92, i32 0, i32 1
  %94 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %93, align 8
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %97 = call i32 %94(%struct.btc_coexist* %95, i32 %96, i32* %6)
  %98 = load i32, i32* %6, align 4
  %99 = ashr i32 %98, 16
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp sge i32 %100, 2
  br i1 %101, label %107, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @WIFI_P2P_GO_CONNECTED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %102, %91
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %109 = load i32, i32* @COMP_BT_COEXIST, align 4
  %110 = load i32, i32* @DBG_LOUD, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %7, align 8
  %115 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i32 1, i32* %8, align 4
  br label %120

119:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %122 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %121, i32 0, i32 0
  %123 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %122, align 8
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %125 = load i32, i32* @BTC_SET_BL_MIRACAST_PLUS_BT, align 4
  %126 = call i32 %123(%struct.btc_coexist* %124, i32 %125, i32* %8)
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %128 = call i32 @btc8723b2ant_action_wifi_multi_port(%struct.btc_coexist* %127)
  br label %265

129:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %131 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %130, i32 0, i32 0
  %132 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %131, align 8
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %134 = load i32, i32* @BTC_SET_BL_MIRACAST_PLUS_BT, align 4
  %135 = call i32 %132(%struct.btc_coexist* %133, i32 %134, i32* %8)
  %136 = load i64, i64* %4, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %141 = load i32, i32* @COMP_BT_COEXIST, align 4
  %142 = load i32, i32* @DBG_LOUD, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %140, i32 %141, i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %148 = call i64 @btc8723b2ant_is_common_action(%struct.btc_coexist* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %129
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %152 = load i32, i32* @COMP_BT_COEXIST, align 4
  %153 = load i32, i32* @DBG_LOUD, align 4
  %154 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %151, i32 %152, i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  br label %265

157:                                              ; preds = %129
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %157
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %167 = load i32, i32* @COMP_BT_COEXIST, align 4
  %168 = load i32, i32* @DBG_LOUD, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %171, i32 %174)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %165, %157
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %252 [
    i32 128, label %182
    i32 135, label %189
    i32 137, label %196
    i32 136, label %203
    i32 132, label %210
    i32 129, label %217
    i32 131, label %224
    i32 130, label %231
    i32 133, label %238
    i32 134, label %245
  ]

182:                                              ; preds = %178
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %184 = load i32, i32* @COMP_BT_COEXIST, align 4
  %185 = load i32, i32* @DBG_LOUD, align 4
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %187 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %188 = call i32 @btc8723b2ant_action_sco(%struct.btc_coexist* %187)
  br label %259

189:                                              ; preds = %178
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %191 = load i32, i32* @COMP_BT_COEXIST, align 4
  %192 = load i32, i32* @DBG_LOUD, align 4
  %193 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %194 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %195 = call i32 @btc8723b2ant_action_hid(%struct.btc_coexist* %194)
  br label %259

196:                                              ; preds = %178
  %197 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %198 = load i32, i32* @COMP_BT_COEXIST, align 4
  %199 = load i32, i32* @DBG_LOUD, align 4
  %200 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %201 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %202 = call i32 @btc8723b2ant_action_a2dp(%struct.btc_coexist* %201)
  br label %259

203:                                              ; preds = %178
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %205 = load i32, i32* @COMP_BT_COEXIST, align 4
  %206 = load i32, i32* @DBG_LOUD, align 4
  %207 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %204, i32 %205, i32 %206, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %208 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %209 = call i32 @btc8723b2ant_action_a2dp_pan_hs(%struct.btc_coexist* %208)
  br label %259

210:                                              ; preds = %178
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %212 = load i32, i32* @COMP_BT_COEXIST, align 4
  %213 = load i32, i32* @DBG_LOUD, align 4
  %214 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %211, i32 %212, i32 %213, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  %215 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %216 = call i32 @btc8723b2ant_action_pan_edr(%struct.btc_coexist* %215)
  br label %259

217:                                              ; preds = %178
  %218 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %219 = load i32, i32* @COMP_BT_COEXIST, align 4
  %220 = load i32, i32* @DBG_LOUD, align 4
  %221 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %218, i32 %219, i32 %220, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %222 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %223 = call i32 @btc8723b2ant_action_pan_hs(%struct.btc_coexist* %222)
  br label %259

224:                                              ; preds = %178
  %225 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %226 = load i32, i32* @COMP_BT_COEXIST, align 4
  %227 = load i32, i32* @DBG_LOUD, align 4
  %228 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %225, i32 %226, i32 %227, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  %229 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %230 = call i32 @btc8723b2ant_action_pan_edr_a2dp(%struct.btc_coexist* %229)
  br label %259

231:                                              ; preds = %178
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %233 = load i32, i32* @COMP_BT_COEXIST, align 4
  %234 = load i32, i32* @DBG_LOUD, align 4
  %235 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %236 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %237 = call i32 @btc8723b2ant_action_pan_edr_hid(%struct.btc_coexist* %236)
  br label %259

238:                                              ; preds = %178
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %240 = load i32, i32* @COMP_BT_COEXIST, align 4
  %241 = load i32, i32* @DBG_LOUD, align 4
  %242 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  %243 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %244 = call i32 @btc8723b2ant_action_hid_a2dp_pan_edr(%struct.btc_coexist* %243)
  br label %259

245:                                              ; preds = %178
  %246 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %247 = load i32, i32* @COMP_BT_COEXIST, align 4
  %248 = load i32, i32* @DBG_LOUD, align 4
  %249 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %250 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %251 = call i32 @btc8723b2ant_action_hid_a2dp(%struct.btc_coexist* %250)
  br label %259

252:                                              ; preds = %178
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %254 = load i32, i32* @COMP_BT_COEXIST, align 4
  %255 = load i32, i32* @DBG_LOUD, align 4
  %256 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %253, i32 %254, i32 %255, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0))
  %257 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %258 = call i32 @btc8723b2ant_coex_alloff(%struct.btc_coexist* %257)
  br label %259

259:                                              ; preds = %252, %245, %238, %231, %224, %217, %210, %203, %196, %189, %182
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  br label %265

265:                                              ; preds = %25, %35, %50, %84, %120, %259, %150
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @btc8723b2ant_action_algorithm(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_wifi_link_process(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_wifi_multi_port(%struct.btc_coexist*) #1

declare dso_local i64 @btc8723b2ant_is_common_action(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_sco(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_a2dp_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_pan_edr_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_pan_edr_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_hid_a2dp_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_action_hid_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b2ant_coex_alloff(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
