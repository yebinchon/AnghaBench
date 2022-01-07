; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_run_coexist_mechanism.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_run_coexist_mechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.btc_coexist = type { i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[BTCoex], return for Manual CTRL <===\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[BTCoex], BT is under inquiry/page scan !!\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"[BTCoex], Algorithm = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"[BTCoex], Action 2-Ant common\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"[BTCoex] preAlgorithm=%d, curAlgorithm=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Action 2-Ant, algorithm = SCO\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Action 2-Ant, algorithm = SCO+PAN(EDR)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Action 2-Ant, algorithm = HID\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Action 2-Ant, algorithm = A2DP\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Action 2-Ant, algorithm = A2DP+PAN(HS)\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Action 2-Ant, algorithm = PAN(EDR)\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Action 2-Ant, algorithm = HS mode\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Action 2-Ant, algorithm = PAN+A2DP\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Action 2-Ant, algorithm = PAN(EDR)+HID\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Action 2-Ant, algorithm = HID+A2DP+PAN\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Action 2-Ant, algorithm = HID+A2DP\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Action 2-Ant, algorithm = unknown!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_run_coexist_mechanism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_run_coexist_mechanism(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %6 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %5, i32 0, i32 1
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = load i32, i32* @COMP_BT_COEXIST, align 4
  %10 = load i32, i32* @DBG_LOUD, align 4
  %11 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @COMP_BT_COEXIST, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %183

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @COMP_BT_COEXIST, align 4
  %29 = load i32, i32* @DBG_LOUD, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %183

31:                                               ; preds = %21
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = call i64 @btc8192e2ant_action_algorithm(%struct.btc_coexist* %32)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 130, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* @COMP_BT_COEXIST, align 4
  %44 = load i32, i32* @DBG_LOUD, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = call i32 @btc8192e2ant_action_bt_inquiry(%struct.btc_coexist* %46)
  br label %183

48:                                               ; preds = %38, %31
  %49 = load i64, i64* %4, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = load i32, i32* @COMP_BT_COEXIST, align 4
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = call i64 @btc8192e2ant_is_common_action(%struct.btc_coexist* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = load i32, i32* @COMP_BT_COEXIST, align 4
  %66 = load i32, i32* @DBG_LOUD, align 4
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  br label %183

70:                                               ; preds = %48
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @COMP_BT_COEXIST, align 4
  %81 = load i32, i32* @DBG_LOUD, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %78, %70
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %172 [
    i32 129, label %95
    i32 128, label %102
    i32 136, label %109
    i32 138, label %116
    i32 137, label %123
    i32 133, label %130
    i32 130, label %137
    i32 132, label %144
    i32 131, label %151
    i32 134, label %158
    i32 135, label %165
  ]

95:                                               ; preds = %91
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_BT_COEXIST, align 4
  %98 = load i32, i32* @DBG_LOUD, align 4
  %99 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %101 = call i32 @btc8192e2ant_action_sco(%struct.btc_coexist* %100)
  br label %177

102:                                              ; preds = %91
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %104 = load i32, i32* @COMP_BT_COEXIST, align 4
  %105 = load i32, i32* @DBG_LOUD, align 4
  %106 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %108 = call i32 @btc8192e2ant_action_sco_pan(%struct.btc_coexist* %107)
  br label %177

109:                                              ; preds = %91
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %111 = load i32, i32* @COMP_BT_COEXIST, align 4
  %112 = load i32, i32* @DBG_LOUD, align 4
  %113 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %115 = call i32 @btc8192e2ant_action_hid(%struct.btc_coexist* %114)
  br label %177

116:                                              ; preds = %91
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = load i32, i32* @COMP_BT_COEXIST, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %122 = call i32 @btc8192e2ant_action_a2dp(%struct.btc_coexist* %121)
  br label %177

123:                                              ; preds = %91
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %125 = load i32, i32* @COMP_BT_COEXIST, align 4
  %126 = load i32, i32* @DBG_LOUD, align 4
  %127 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %129 = call i32 @btc8192e2ant_action_a2dp_pan_hs(%struct.btc_coexist* %128)
  br label %177

130:                                              ; preds = %91
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = load i32, i32* @COMP_BT_COEXIST, align 4
  %133 = load i32, i32* @DBG_LOUD, align 4
  %134 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %135 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %136 = call i32 @btc8192e2ant_action_pan_edr(%struct.btc_coexist* %135)
  br label %177

137:                                              ; preds = %91
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %139 = load i32, i32* @COMP_BT_COEXIST, align 4
  %140 = load i32, i32* @DBG_LOUD, align 4
  %141 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %142 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %143 = call i32 @btc8192e2ant_action_pan_hs(%struct.btc_coexist* %142)
  br label %177

144:                                              ; preds = %91
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = load i32, i32* @COMP_BT_COEXIST, align 4
  %147 = load i32, i32* @DBG_LOUD, align 4
  %148 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %150 = call i32 @btc8192e2ant_action_pan_edr_a2dp(%struct.btc_coexist* %149)
  br label %177

151:                                              ; preds = %91
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %153 = load i32, i32* @COMP_BT_COEXIST, align 4
  %154 = load i32, i32* @DBG_LOUD, align 4
  %155 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %156 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %157 = call i32 @btc8192e2ant_action_pan_edr_hid(%struct.btc_coexist* %156)
  br label %177

158:                                              ; preds = %91
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %160 = load i32, i32* @COMP_BT_COEXIST, align 4
  %161 = load i32, i32* @DBG_LOUD, align 4
  %162 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %159, i32 %160, i32 %161, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %163 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %164 = call i32 @btc8192e2ant_action_hid_a2dp_pan_edr(%struct.btc_coexist* %163)
  br label %177

165:                                              ; preds = %91
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %167 = load i32, i32* @COMP_BT_COEXIST, align 4
  %168 = load i32, i32* @DBG_LOUD, align 4
  %169 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %171 = call i32 @btc8192e2ant_action_hid_a2dp(%struct.btc_coexist* %170)
  br label %177

172:                                              ; preds = %91
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %174 = load i32, i32* @COMP_BT_COEXIST, align 4
  %175 = load i32, i32* @DBG_LOUD, align 4
  %176 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %173, i32 %174, i32 %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  br label %177

177:                                              ; preds = %172, %165, %158, %151, %144, %137, %130, %123, %116, %109, %102, %95
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %16, %26, %41, %177, %63
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @btc8192e2ant_action_algorithm(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i64 @btc8192e2ant_is_common_action(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_sco(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_sco_pan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_a2dp_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_pan_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_pan_edr_a2dp(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_pan_edr_hid(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_hid_a2dp_pan_edr(%struct.btc_coexist*) #1

declare dso_local i32 @btc8192e2ant_action_hid_a2dp(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
