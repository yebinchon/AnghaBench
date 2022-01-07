; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_tdma_duration_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_tdma_duration_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@btc8821a2ant_tdma_duration_adjust.up = internal global i64 0, align 8
@btc8821a2ant_tdma_duration_adjust.dn = internal global i64 0, align 8
@btc8821a2ant_tdma_duration_adjust.m = internal global i64 0, align 8
@btc8821a2ant_tdma_duration_adjust.n = internal global i64 0, align 8
@btc8821a2ant_tdma_duration_adjust.wait_count = internal global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], TdmaDurationAdjust()\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"[BTCoex], retry_count = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"[BTCoex], up = %d, dn = %d, m = %d, n = %d, wait_count = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter<3!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter>3!!\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"[BTCoex], max Interval = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"[BTCoex], PsTdma type mismatch!!!, cur_ps_tdma = %d, recordPsTdma = %d\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [73 x i8] c"[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8821a2ant_tdma_duration_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_tdma_duration_adjust(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %16, align 8
  store %struct.rtl_priv* %17, %struct.rtl_priv** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = load i32, i32* @COMP_BT_COEXIST, align 4
  %20 = load i32, i32* @DBG_LOUD, align 4
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %188

26:                                               ; preds = %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %30 = load i32, i32* @COMP_BT_COEXIST, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %111

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %42, i32 %43, i32 1, i32 13)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 13, i32* %46, align 4
  br label %73

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %51, i32 %52, i32 1, i32 14)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 14, i32* %55, align 4
  br label %72

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %61 = load i32, i32* @NORMAL_EXEC, align 4
  %62 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %60, i32 %61, i32 1, i32 15)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 15, i32* %64, align 4
  br label %71

65:                                               ; preds = %56
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %67 = load i32, i32* @NORMAL_EXEC, align 4
  %68 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %66, i32 %67, i32 1, i32 15)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 15, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %59
  br label %72

72:                                               ; preds = %71, %50
  br label %73

73:                                               ; preds = %72, %41
  br label %110

74:                                               ; preds = %35
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %79 = load i32, i32* @NORMAL_EXEC, align 4
  %80 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %78, i32 %79, i32 1, i32 9)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 9, i32* %82, align 4
  br label %109

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %88 = load i32, i32* @NORMAL_EXEC, align 4
  %89 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %87, i32 %88, i32 1, i32 10)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 10, i32* %91, align 4
  br label %108

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %97 = load i32, i32* @NORMAL_EXEC, align 4
  %98 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %96, i32 %97, i32 1, i32 11)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 11, i32* %100, align 4
  br label %107

101:                                              ; preds = %92
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %103 = load i32, i32* @NORMAL_EXEC, align 4
  %104 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %102, i32 %103, i32 1, i32 11)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 11, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %95
  br label %108

108:                                              ; preds = %107, %86
  br label %109

109:                                              ; preds = %108, %77
  br label %110

110:                                              ; preds = %109, %73
  br label %187

111:                                              ; preds = %26
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %150

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %119 = load i32, i32* @NORMAL_EXEC, align 4
  %120 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %118, i32 %119, i32 1, i32 5)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 5, i32* %122, align 4
  br label %149

123:                                              ; preds = %114
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %128 = load i32, i32* @NORMAL_EXEC, align 4
  %129 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %127, i32 %128, i32 1, i32 6)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 6, i32* %131, align 4
  br label %148

132:                                              ; preds = %123
  %133 = load i32, i32* %8, align 4
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %137 = load i32, i32* @NORMAL_EXEC, align 4
  %138 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %136, i32 %137, i32 1, i32 7)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 7, i32* %140, align 4
  br label %147

141:                                              ; preds = %132
  %142 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %143 = load i32, i32* @NORMAL_EXEC, align 4
  %144 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %142, i32 %143, i32 1, i32 7)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i32 7, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %135
  br label %148

148:                                              ; preds = %147, %126
  br label %149

149:                                              ; preds = %148, %117
  br label %186

150:                                              ; preds = %111
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %155 = load i32, i32* @NORMAL_EXEC, align 4
  %156 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %154, i32 %155, i32 1, i32 1)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  br label %185

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %164 = load i32, i32* @NORMAL_EXEC, align 4
  %165 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %163, i32 %164, i32 1, i32 2)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i32 2, i32* %167, align 4
  br label %184

168:                                              ; preds = %159
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %173 = load i32, i32* @NORMAL_EXEC, align 4
  %174 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %172, i32 %173, i32 1, i32 3)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i32 3, i32* %176, align 4
  br label %183

177:                                              ; preds = %168
  %178 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %179 = load i32, i32* @NORMAL_EXEC, align 4
  %180 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %178, i32 %179, i32 1, i32 3)
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i32 3, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %171
  br label %184

184:                                              ; preds = %183, %162
  br label %185

185:                                              ; preds = %184, %153
  br label %186

186:                                              ; preds = %185, %149
  br label %187

187:                                              ; preds = %186, %110
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  store i64 1, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  store i64 3, i64* @btc8821a2ant_tdma_duration_adjust.n, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  br label %1826

188:                                              ; preds = %4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %11, align 4
  %192 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %193 = load i32, i32* @COMP_BT_COEXIST, align 4
  %194 = load i32, i32* @DBG_LOUD, align 4
  %195 = load i32, i32* %11, align 4
  %196 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %192, i32 %193, i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %195)
  %197 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %198 = load i32, i32* @COMP_BT_COEXIST, align 4
  %199 = load i32, i32* @DBG_LOUD, align 4
  %200 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  %201 = trunc i64 %200 to i32
  %202 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  %203 = trunc i64 %202 to i32
  %204 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.n, align 8
  %207 = trunc i64 %206 to i32
  %208 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %201, i32 %203, i32 %205, i32 %207, i32 %209)
  store i32 0, i32* %10, align 4
  %211 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %188
  %216 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  %218 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  %219 = add nsw i64 %218, -1
  store i64 %219, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  %220 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  %221 = icmp sle i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  br label %223

223:                                              ; preds = %222, %215
  %224 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  %225 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.n, align 8
  %226 = icmp sge i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  store i64 3, i64* @btc8821a2ant_tdma_duration_adjust.n, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  store i32 1, i32* %10, align 4
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %229 = load i32, i32* @COMP_BT_COEXIST, align 4
  %230 = load i32, i32* @DBG_LOUD, align 4
  %231 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %228, i32 %229, i32 %230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %232

232:                                              ; preds = %227, %223
  br label %285

233:                                              ; preds = %188
  %234 = load i32, i32* %11, align 4
  %235 = icmp sle i32 %234, 3
  br i1 %235, label %236, label %266

236:                                              ; preds = %233
  %237 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  %238 = add nsw i64 %237, -1
  store i64 %238, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  %239 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  %241 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  %242 = icmp sle i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  br label %244

244:                                              ; preds = %243, %236
  %245 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  %246 = icmp eq i64 %245, 2
  br i1 %246, label %247, label %265

247:                                              ; preds = %244
  %248 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  %249 = icmp sle i64 %248, 2
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  br label %254

253:                                              ; preds = %247
  store i64 1, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  br label %254

254:                                              ; preds = %253, %250
  %255 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  %256 = icmp sge i64 %255, 20
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i64 20, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  br label %258

258:                                              ; preds = %257, %254
  %259 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  %260 = mul nsw i64 3, %259
  store i64 %260, i64* @btc8821a2ant_tdma_duration_adjust.n, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  store i32 -1, i32* %10, align 4
  %261 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %262 = load i32, i32* @COMP_BT_COEXIST, align 4
  %263 = load i32, i32* @DBG_LOUD, align 4
  %264 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %261, i32 %262, i32 %263, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %265

265:                                              ; preds = %258, %244
  br label %284

266:                                              ; preds = %233
  %267 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  %268 = icmp eq i64 %267, 1
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  br label %273

272:                                              ; preds = %266
  store i64 1, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  br label %273

273:                                              ; preds = %272, %269
  %274 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  %275 = icmp sge i64 %274, 20
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  store i64 20, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  br label %277

277:                                              ; preds = %276, %273
  %278 = load i64, i64* @btc8821a2ant_tdma_duration_adjust.m, align 8
  %279 = mul nsw i64 3, %278
  store i64 %279, i64* @btc8821a2ant_tdma_duration_adjust.n, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.up, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.dn, align 8
  store i64 0, i64* @btc8821a2ant_tdma_duration_adjust.wait_count, align 8
  store i32 -1, i32* %10, align 4
  %280 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %281 = load i32, i32* @COMP_BT_COEXIST, align 4
  %282 = load i32, i32* @DBG_LOUD, align 4
  %283 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %280, i32 %281, i32 %282, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  br label %284

284:                                              ; preds = %277, %265
  br label %285

285:                                              ; preds = %284, %232
  %286 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %287 = load i32, i32* @COMP_BT_COEXIST, align 4
  %288 = load i32, i32* @DBG_LOUD, align 4
  %289 = load i32, i32* %8, align 4
  %290 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %286, i32 %287, i32 %288, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* %8, align 4
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %825

293:                                              ; preds = %285
  %294 = load i32, i32* %7, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %554

296:                                              ; preds = %293
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 71
  br i1 %300, label %301, label %307

301:                                              ; preds = %296
  %302 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %303 = load i32, i32* @NORMAL_EXEC, align 4
  %304 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %302, i32 %303, i32 1, i32 5)
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 1
  store i32 5, i32* %306, align 4
  br label %355

307:                                              ; preds = %296
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  %313 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %314 = load i32, i32* @NORMAL_EXEC, align 4
  %315 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %313, i32 %314, i32 1, i32 5)
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  store i32 5, i32* %317, align 4
  br label %354

318:                                              ; preds = %307
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %321, 2
  br i1 %322, label %323, label %329

323:                                              ; preds = %318
  %324 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %325 = load i32, i32* @NORMAL_EXEC, align 4
  %326 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %324, i32 %325, i32 1, i32 6)
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 1
  store i32 6, i32* %328, align 4
  br label %353

329:                                              ; preds = %318
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %340

334:                                              ; preds = %329
  %335 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %336 = load i32, i32* @NORMAL_EXEC, align 4
  %337 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %335, i32 %336, i32 1, i32 7)
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  store i32 7, i32* %339, align 4
  br label %352

340:                                              ; preds = %329
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %347 = load i32, i32* @NORMAL_EXEC, align 4
  %348 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %346, i32 %347, i32 1, i32 8)
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 1
  store i32 8, i32* %350, align 4
  br label %351

351:                                              ; preds = %345, %340
  br label %352

352:                                              ; preds = %351, %334
  br label %353

353:                                              ; preds = %352, %323
  br label %354

354:                                              ; preds = %353, %312
  br label %355

355:                                              ; preds = %354, %301
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = icmp eq i32 %358, 9
  br i1 %359, label %360, label %366

360:                                              ; preds = %355
  %361 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %362 = load i32, i32* @NORMAL_EXEC, align 4
  %363 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %361, i32 %362, i32 1, i32 13)
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 1
  store i32 13, i32* %365, align 4
  br label %402

366:                                              ; preds = %355
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = icmp eq i32 %369, 10
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %373 = load i32, i32* @NORMAL_EXEC, align 4
  %374 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %372, i32 %373, i32 1, i32 14)
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 1
  store i32 14, i32* %376, align 4
  br label %401

377:                                              ; preds = %366
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = icmp eq i32 %380, 11
  br i1 %381, label %382, label %388

382:                                              ; preds = %377
  %383 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %384 = load i32, i32* @NORMAL_EXEC, align 4
  %385 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %383, i32 %384, i32 1, i32 15)
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 1
  store i32 15, i32* %387, align 4
  br label %400

388:                                              ; preds = %377
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = icmp eq i32 %391, 12
  br i1 %392, label %393, label %399

393:                                              ; preds = %388
  %394 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %395 = load i32, i32* @NORMAL_EXEC, align 4
  %396 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %394, i32 %395, i32 1, i32 16)
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 1
  store i32 16, i32* %398, align 4
  br label %399

399:                                              ; preds = %393, %388
  br label %400

400:                                              ; preds = %399, %382
  br label %401

401:                                              ; preds = %400, %371
  br label %402

402:                                              ; preds = %401, %360
  %403 = load i32, i32* %10, align 4
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %405, label %477

405:                                              ; preds = %402
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 5
  br i1 %409, label %410, label %416

410:                                              ; preds = %405
  %411 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %412 = load i32, i32* @NORMAL_EXEC, align 4
  %413 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %411, i32 %412, i32 1, i32 6)
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 1
  store i32 6, i32* %415, align 4
  br label %476

416:                                              ; preds = %405
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 6
  br i1 %420, label %421, label %427

421:                                              ; preds = %416
  %422 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %423 = load i32, i32* @NORMAL_EXEC, align 4
  %424 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %422, i32 %423, i32 1, i32 7)
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 1
  store i32 7, i32* %426, align 4
  br label %475

427:                                              ; preds = %416
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = icmp eq i32 %430, 7
  br i1 %431, label %432, label %438

432:                                              ; preds = %427
  %433 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %434 = load i32, i32* @NORMAL_EXEC, align 4
  %435 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %433, i32 %434, i32 1, i32 8)
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 1
  store i32 8, i32* %437, align 4
  br label %474

438:                                              ; preds = %427
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 13
  br i1 %442, label %443, label %449

443:                                              ; preds = %438
  %444 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %445 = load i32, i32* @NORMAL_EXEC, align 4
  %446 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %444, i32 %445, i32 1, i32 14)
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 1
  store i32 14, i32* %448, align 4
  br label %473

449:                                              ; preds = %438
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  %453 = icmp eq i32 %452, 14
  br i1 %453, label %454, label %460

454:                                              ; preds = %449
  %455 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %456 = load i32, i32* @NORMAL_EXEC, align 4
  %457 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %455, i32 %456, i32 1, i32 15)
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 1
  store i32 15, i32* %459, align 4
  br label %472

460:                                              ; preds = %449
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = icmp eq i32 %463, 15
  br i1 %464, label %465, label %471

465:                                              ; preds = %460
  %466 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %467 = load i32, i32* @NORMAL_EXEC, align 4
  %468 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %466, i32 %467, i32 1, i32 16)
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 1
  store i32 16, i32* %470, align 4
  br label %471

471:                                              ; preds = %465, %460
  br label %472

472:                                              ; preds = %471, %454
  br label %473

473:                                              ; preds = %472, %443
  br label %474

474:                                              ; preds = %473, %432
  br label %475

475:                                              ; preds = %474, %421
  br label %476

476:                                              ; preds = %475, %410
  br label %553

477:                                              ; preds = %402
  %478 = load i32, i32* %10, align 4
  %479 = icmp eq i32 %478, 1
  br i1 %479, label %480, label %552

480:                                              ; preds = %477
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = icmp eq i32 %483, 8
  br i1 %484, label %485, label %491

485:                                              ; preds = %480
  %486 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %487 = load i32, i32* @NORMAL_EXEC, align 4
  %488 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %486, i32 %487, i32 1, i32 7)
  %489 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 1
  store i32 7, i32* %490, align 4
  br label %551

491:                                              ; preds = %480
  %492 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = icmp eq i32 %494, 7
  br i1 %495, label %496, label %502

496:                                              ; preds = %491
  %497 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %498 = load i32, i32* @NORMAL_EXEC, align 4
  %499 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %497, i32 %498, i32 1, i32 6)
  %500 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 1
  store i32 6, i32* %501, align 4
  br label %550

502:                                              ; preds = %491
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 4
  %506 = icmp eq i32 %505, 6
  br i1 %506, label %507, label %513

507:                                              ; preds = %502
  %508 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %509 = load i32, i32* @NORMAL_EXEC, align 4
  %510 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %508, i32 %509, i32 1, i32 5)
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 1
  store i32 5, i32* %512, align 4
  br label %549

513:                                              ; preds = %502
  %514 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 4
  %517 = icmp eq i32 %516, 16
  br i1 %517, label %518, label %524

518:                                              ; preds = %513
  %519 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %520 = load i32, i32* @NORMAL_EXEC, align 4
  %521 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %519, i32 %520, i32 1, i32 15)
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 1
  store i32 15, i32* %523, align 4
  br label %548

524:                                              ; preds = %513
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 2
  %527 = load i32, i32* %526, align 4
  %528 = icmp eq i32 %527, 15
  br i1 %528, label %529, label %535

529:                                              ; preds = %524
  %530 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %531 = load i32, i32* @NORMAL_EXEC, align 4
  %532 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %530, i32 %531, i32 1, i32 14)
  %533 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i32 0, i32 1
  store i32 14, i32* %534, align 4
  br label %547

535:                                              ; preds = %524
  %536 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %537 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 4
  %539 = icmp eq i32 %538, 14
  br i1 %539, label %540, label %546

540:                                              ; preds = %535
  %541 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %542 = load i32, i32* @NORMAL_EXEC, align 4
  %543 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %541, i32 %542, i32 1, i32 13)
  %544 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %544, i32 0, i32 1
  store i32 13, i32* %545, align 4
  br label %546

546:                                              ; preds = %540, %535
  br label %547

547:                                              ; preds = %546, %529
  br label %548

548:                                              ; preds = %547, %518
  br label %549

549:                                              ; preds = %548, %507
  br label %550

550:                                              ; preds = %549, %496
  br label %551

551:                                              ; preds = %550, %485
  br label %552

552:                                              ; preds = %551, %477
  br label %553

553:                                              ; preds = %552, %476
  br label %824

554:                                              ; preds = %293
  %555 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = icmp eq i32 %557, 5
  br i1 %558, label %559, label %565

559:                                              ; preds = %554
  %560 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %561 = load i32, i32* @NORMAL_EXEC, align 4
  %562 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %560, i32 %561, i32 1, i32 71)
  %563 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %564 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %563, i32 0, i32 1
  store i32 71, i32* %564, align 4
  br label %601

565:                                              ; preds = %554
  %566 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %566, i32 0, i32 2
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 6
  br i1 %569, label %570, label %576

570:                                              ; preds = %565
  %571 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %572 = load i32, i32* @NORMAL_EXEC, align 4
  %573 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %571, i32 %572, i32 1, i32 2)
  %574 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %575 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %574, i32 0, i32 1
  store i32 2, i32* %575, align 4
  br label %600

576:                                              ; preds = %565
  %577 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %578 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 4
  %580 = icmp eq i32 %579, 7
  br i1 %580, label %581, label %587

581:                                              ; preds = %576
  %582 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %583 = load i32, i32* @NORMAL_EXEC, align 4
  %584 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %582, i32 %583, i32 1, i32 3)
  %585 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 1
  store i32 3, i32* %586, align 4
  br label %599

587:                                              ; preds = %576
  %588 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %589 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 4
  %591 = icmp eq i32 %590, 8
  br i1 %591, label %592, label %598

592:                                              ; preds = %587
  %593 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %594 = load i32, i32* @NORMAL_EXEC, align 4
  %595 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %593, i32 %594, i32 1, i32 4)
  %596 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %597 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %596, i32 0, i32 1
  store i32 4, i32* %597, align 4
  br label %598

598:                                              ; preds = %592, %587
  br label %599

599:                                              ; preds = %598, %581
  br label %600

600:                                              ; preds = %599, %570
  br label %601

601:                                              ; preds = %600, %559
  %602 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %603 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %602, i32 0, i32 2
  %604 = load i32, i32* %603, align 4
  %605 = icmp eq i32 %604, 13
  br i1 %605, label %606, label %612

606:                                              ; preds = %601
  %607 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %608 = load i32, i32* @NORMAL_EXEC, align 4
  %609 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %607, i32 %608, i32 1, i32 9)
  %610 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %610, i32 0, i32 1
  store i32 9, i32* %611, align 4
  br label %648

612:                                              ; preds = %601
  %613 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %614 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 4
  %616 = icmp eq i32 %615, 14
  br i1 %616, label %617, label %623

617:                                              ; preds = %612
  %618 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %619 = load i32, i32* @NORMAL_EXEC, align 4
  %620 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %618, i32 %619, i32 1, i32 10)
  %621 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %622 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %621, i32 0, i32 1
  store i32 10, i32* %622, align 4
  br label %647

623:                                              ; preds = %612
  %624 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %625 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %626, 15
  br i1 %627, label %628, label %634

628:                                              ; preds = %623
  %629 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %630 = load i32, i32* @NORMAL_EXEC, align 4
  %631 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %629, i32 %630, i32 1, i32 11)
  %632 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %632, i32 0, i32 1
  store i32 11, i32* %633, align 4
  br label %646

634:                                              ; preds = %623
  %635 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %636 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %635, i32 0, i32 2
  %637 = load i32, i32* %636, align 4
  %638 = icmp eq i32 %637, 16
  br i1 %638, label %639, label %645

639:                                              ; preds = %634
  %640 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %641 = load i32, i32* @NORMAL_EXEC, align 4
  %642 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %640, i32 %641, i32 1, i32 12)
  %643 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %643, i32 0, i32 1
  store i32 12, i32* %644, align 4
  br label %645

645:                                              ; preds = %639, %634
  br label %646

646:                                              ; preds = %645, %628
  br label %647

647:                                              ; preds = %646, %617
  br label %648

648:                                              ; preds = %647, %606
  %649 = load i32, i32* %10, align 4
  %650 = icmp eq i32 %649, -1
  br i1 %650, label %651, label %735

651:                                              ; preds = %648
  %652 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %653 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %652, i32 0, i32 2
  %654 = load i32, i32* %653, align 4
  %655 = icmp eq i32 %654, 71
  br i1 %655, label %656, label %662

656:                                              ; preds = %651
  %657 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %658 = load i32, i32* @NORMAL_EXEC, align 4
  %659 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %657, i32 %658, i32 1, i32 1)
  %660 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %661 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %660, i32 0, i32 1
  store i32 1, i32* %661, align 4
  br label %734

662:                                              ; preds = %651
  %663 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %664 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %663, i32 0, i32 2
  %665 = load i32, i32* %664, align 4
  %666 = icmp eq i32 %665, 1
  br i1 %666, label %667, label %673

667:                                              ; preds = %662
  %668 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %669 = load i32, i32* @NORMAL_EXEC, align 4
  %670 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %668, i32 %669, i32 1, i32 2)
  %671 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %672 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %671, i32 0, i32 1
  store i32 2, i32* %672, align 4
  br label %733

673:                                              ; preds = %662
  %674 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %675 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %674, i32 0, i32 2
  %676 = load i32, i32* %675, align 4
  %677 = icmp eq i32 %676, 2
  br i1 %677, label %678, label %684

678:                                              ; preds = %673
  %679 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %680 = load i32, i32* @NORMAL_EXEC, align 4
  %681 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %679, i32 %680, i32 1, i32 3)
  %682 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %683 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %682, i32 0, i32 1
  store i32 3, i32* %683, align 4
  br label %732

684:                                              ; preds = %673
  %685 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %685, i32 0, i32 2
  %687 = load i32, i32* %686, align 4
  %688 = icmp eq i32 %687, 3
  br i1 %688, label %689, label %695

689:                                              ; preds = %684
  %690 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %691 = load i32, i32* @NORMAL_EXEC, align 4
  %692 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %690, i32 %691, i32 1, i32 4)
  %693 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %694 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %693, i32 0, i32 1
  store i32 4, i32* %694, align 4
  br label %731

695:                                              ; preds = %684
  %696 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %697 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %696, i32 0, i32 2
  %698 = load i32, i32* %697, align 4
  %699 = icmp eq i32 %698, 9
  br i1 %699, label %700, label %706

700:                                              ; preds = %695
  %701 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %702 = load i32, i32* @NORMAL_EXEC, align 4
  %703 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %701, i32 %702, i32 1, i32 10)
  %704 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %704, i32 0, i32 1
  store i32 10, i32* %705, align 4
  br label %730

706:                                              ; preds = %695
  %707 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %708 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %707, i32 0, i32 2
  %709 = load i32, i32* %708, align 4
  %710 = icmp eq i32 %709, 10
  br i1 %710, label %711, label %717

711:                                              ; preds = %706
  %712 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %713 = load i32, i32* @NORMAL_EXEC, align 4
  %714 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %712, i32 %713, i32 1, i32 11)
  %715 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %716 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %715, i32 0, i32 1
  store i32 11, i32* %716, align 4
  br label %729

717:                                              ; preds = %706
  %718 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %719 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %718, i32 0, i32 2
  %720 = load i32, i32* %719, align 4
  %721 = icmp eq i32 %720, 11
  br i1 %721, label %722, label %728

722:                                              ; preds = %717
  %723 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %724 = load i32, i32* @NORMAL_EXEC, align 4
  %725 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %723, i32 %724, i32 1, i32 12)
  %726 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %726, i32 0, i32 1
  store i32 12, i32* %727, align 4
  br label %728

728:                                              ; preds = %722, %717
  br label %729

729:                                              ; preds = %728, %711
  br label %730

730:                                              ; preds = %729, %700
  br label %731

731:                                              ; preds = %730, %689
  br label %732

732:                                              ; preds = %731, %678
  br label %733

733:                                              ; preds = %732, %667
  br label %734

734:                                              ; preds = %733, %656
  br label %823

735:                                              ; preds = %648
  %736 = load i32, i32* %10, align 4
  %737 = icmp eq i32 %736, 1
  br i1 %737, label %738, label %822

738:                                              ; preds = %735
  %739 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %740 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %739, i32 0, i32 2
  %741 = load i32, i32* %740, align 4
  %742 = icmp eq i32 %741, 4
  br i1 %742, label %743, label %749

743:                                              ; preds = %738
  %744 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %745 = load i32, i32* @NORMAL_EXEC, align 4
  %746 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %744, i32 %745, i32 1, i32 3)
  %747 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %748 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %747, i32 0, i32 1
  store i32 3, i32* %748, align 4
  br label %821

749:                                              ; preds = %738
  %750 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %751 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %750, i32 0, i32 2
  %752 = load i32, i32* %751, align 4
  %753 = icmp eq i32 %752, 3
  br i1 %753, label %754, label %760

754:                                              ; preds = %749
  %755 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %756 = load i32, i32* @NORMAL_EXEC, align 4
  %757 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %755, i32 %756, i32 1, i32 2)
  %758 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %759 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %758, i32 0, i32 1
  store i32 2, i32* %759, align 4
  br label %820

760:                                              ; preds = %749
  %761 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %762 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %761, i32 0, i32 2
  %763 = load i32, i32* %762, align 4
  %764 = icmp eq i32 %763, 2
  br i1 %764, label %765, label %771

765:                                              ; preds = %760
  %766 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %767 = load i32, i32* @NORMAL_EXEC, align 4
  %768 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %766, i32 %767, i32 1, i32 1)
  %769 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %770 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %769, i32 0, i32 1
  store i32 1, i32* %770, align 4
  br label %819

771:                                              ; preds = %760
  %772 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %773 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %772, i32 0, i32 2
  %774 = load i32, i32* %773, align 4
  %775 = icmp eq i32 %774, 1
  br i1 %775, label %776, label %782

776:                                              ; preds = %771
  %777 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %778 = load i32, i32* @NORMAL_EXEC, align 4
  %779 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %777, i32 %778, i32 1, i32 71)
  %780 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %781 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %780, i32 0, i32 1
  store i32 71, i32* %781, align 4
  br label %818

782:                                              ; preds = %771
  %783 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %784 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %783, i32 0, i32 2
  %785 = load i32, i32* %784, align 4
  %786 = icmp eq i32 %785, 12
  br i1 %786, label %787, label %793

787:                                              ; preds = %782
  %788 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %789 = load i32, i32* @NORMAL_EXEC, align 4
  %790 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %788, i32 %789, i32 1, i32 11)
  %791 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %792 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %791, i32 0, i32 1
  store i32 11, i32* %792, align 4
  br label %817

793:                                              ; preds = %782
  %794 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %795 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %794, i32 0, i32 2
  %796 = load i32, i32* %795, align 4
  %797 = icmp eq i32 %796, 11
  br i1 %797, label %798, label %804

798:                                              ; preds = %793
  %799 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %800 = load i32, i32* @NORMAL_EXEC, align 4
  %801 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %799, i32 %800, i32 1, i32 10)
  %802 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %803 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %802, i32 0, i32 1
  store i32 10, i32* %803, align 4
  br label %816

804:                                              ; preds = %793
  %805 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %806 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %805, i32 0, i32 2
  %807 = load i32, i32* %806, align 4
  %808 = icmp eq i32 %807, 10
  br i1 %808, label %809, label %815

809:                                              ; preds = %804
  %810 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %811 = load i32, i32* @NORMAL_EXEC, align 4
  %812 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %810, i32 %811, i32 1, i32 9)
  %813 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %814 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %813, i32 0, i32 1
  store i32 9, i32* %814, align 4
  br label %815

815:                                              ; preds = %809, %804
  br label %816

816:                                              ; preds = %815, %798
  br label %817

817:                                              ; preds = %816, %787
  br label %818

818:                                              ; preds = %817, %776
  br label %819

819:                                              ; preds = %818, %765
  br label %820

820:                                              ; preds = %819, %754
  br label %821

821:                                              ; preds = %820, %743
  br label %822

822:                                              ; preds = %821, %735
  br label %823

823:                                              ; preds = %822, %734
  br label %824

824:                                              ; preds = %823, %553
  br label %1825

825:                                              ; preds = %285
  %826 = load i32, i32* %8, align 4
  %827 = icmp eq i32 %826, 2
  br i1 %827, label %828, label %1324

828:                                              ; preds = %825
  %829 = load i32, i32* %7, align 4
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %1077

831:                                              ; preds = %828
  %832 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %833 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %832, i32 0, i32 2
  %834 = load i32, i32* %833, align 4
  %835 = icmp eq i32 %834, 1
  br i1 %835, label %836, label %842

836:                                              ; preds = %831
  %837 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %838 = load i32, i32* @NORMAL_EXEC, align 4
  %839 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %837, i32 %838, i32 1, i32 6)
  %840 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %841 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %840, i32 0, i32 1
  store i32 6, i32* %841, align 4
  br label %878

842:                                              ; preds = %831
  %843 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %844 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %843, i32 0, i32 2
  %845 = load i32, i32* %844, align 4
  %846 = icmp eq i32 %845, 2
  br i1 %846, label %847, label %853

847:                                              ; preds = %842
  %848 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %849 = load i32, i32* @NORMAL_EXEC, align 4
  %850 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %848, i32 %849, i32 1, i32 6)
  %851 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %852 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %851, i32 0, i32 1
  store i32 6, i32* %852, align 4
  br label %877

853:                                              ; preds = %842
  %854 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %855 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %854, i32 0, i32 2
  %856 = load i32, i32* %855, align 4
  %857 = icmp eq i32 %856, 3
  br i1 %857, label %858, label %864

858:                                              ; preds = %853
  %859 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %860 = load i32, i32* @NORMAL_EXEC, align 4
  %861 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %859, i32 %860, i32 1, i32 7)
  %862 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %863 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %862, i32 0, i32 1
  store i32 7, i32* %863, align 4
  br label %876

864:                                              ; preds = %853
  %865 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %866 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %865, i32 0, i32 2
  %867 = load i32, i32* %866, align 4
  %868 = icmp eq i32 %867, 4
  br i1 %868, label %869, label %875

869:                                              ; preds = %864
  %870 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %871 = load i32, i32* @NORMAL_EXEC, align 4
  %872 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %870, i32 %871, i32 1, i32 8)
  %873 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %874 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %873, i32 0, i32 1
  store i32 8, i32* %874, align 4
  br label %875

875:                                              ; preds = %869, %864
  br label %876

876:                                              ; preds = %875, %858
  br label %877

877:                                              ; preds = %876, %847
  br label %878

878:                                              ; preds = %877, %836
  %879 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %880 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %879, i32 0, i32 2
  %881 = load i32, i32* %880, align 4
  %882 = icmp eq i32 %881, 9
  br i1 %882, label %883, label %889

883:                                              ; preds = %878
  %884 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %885 = load i32, i32* @NORMAL_EXEC, align 4
  %886 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %884, i32 %885, i32 1, i32 14)
  %887 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %888 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %887, i32 0, i32 1
  store i32 14, i32* %888, align 4
  br label %925

889:                                              ; preds = %878
  %890 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %891 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %890, i32 0, i32 2
  %892 = load i32, i32* %891, align 4
  %893 = icmp eq i32 %892, 10
  br i1 %893, label %894, label %900

894:                                              ; preds = %889
  %895 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %896 = load i32, i32* @NORMAL_EXEC, align 4
  %897 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %895, i32 %896, i32 1, i32 14)
  %898 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %899 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %898, i32 0, i32 1
  store i32 14, i32* %899, align 4
  br label %924

900:                                              ; preds = %889
  %901 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %902 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %901, i32 0, i32 2
  %903 = load i32, i32* %902, align 4
  %904 = icmp eq i32 %903, 11
  br i1 %904, label %905, label %911

905:                                              ; preds = %900
  %906 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %907 = load i32, i32* @NORMAL_EXEC, align 4
  %908 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %906, i32 %907, i32 1, i32 15)
  %909 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %910 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %909, i32 0, i32 1
  store i32 15, i32* %910, align 4
  br label %923

911:                                              ; preds = %900
  %912 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %913 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %912, i32 0, i32 2
  %914 = load i32, i32* %913, align 4
  %915 = icmp eq i32 %914, 12
  br i1 %915, label %916, label %922

916:                                              ; preds = %911
  %917 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %918 = load i32, i32* @NORMAL_EXEC, align 4
  %919 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %917, i32 %918, i32 1, i32 16)
  %920 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %921 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %920, i32 0, i32 1
  store i32 16, i32* %921, align 4
  br label %922

922:                                              ; preds = %916, %911
  br label %923

923:                                              ; preds = %922, %905
  br label %924

924:                                              ; preds = %923, %894
  br label %925

925:                                              ; preds = %924, %883
  %926 = load i32, i32* %10, align 4
  %927 = icmp eq i32 %926, -1
  br i1 %927, label %928, label %1000

928:                                              ; preds = %925
  %929 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %930 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %929, i32 0, i32 2
  %931 = load i32, i32* %930, align 4
  %932 = icmp eq i32 %931, 5
  br i1 %932, label %933, label %939

933:                                              ; preds = %928
  %934 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %935 = load i32, i32* @NORMAL_EXEC, align 4
  %936 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %934, i32 %935, i32 1, i32 6)
  %937 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %938 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %937, i32 0, i32 1
  store i32 6, i32* %938, align 4
  br label %999

939:                                              ; preds = %928
  %940 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %941 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %940, i32 0, i32 2
  %942 = load i32, i32* %941, align 4
  %943 = icmp eq i32 %942, 6
  br i1 %943, label %944, label %950

944:                                              ; preds = %939
  %945 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %946 = load i32, i32* @NORMAL_EXEC, align 4
  %947 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %945, i32 %946, i32 1, i32 7)
  %948 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %949 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %948, i32 0, i32 1
  store i32 7, i32* %949, align 4
  br label %998

950:                                              ; preds = %939
  %951 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %952 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %951, i32 0, i32 2
  %953 = load i32, i32* %952, align 4
  %954 = icmp eq i32 %953, 7
  br i1 %954, label %955, label %961

955:                                              ; preds = %950
  %956 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %957 = load i32, i32* @NORMAL_EXEC, align 4
  %958 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %956, i32 %957, i32 1, i32 8)
  %959 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %960 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %959, i32 0, i32 1
  store i32 8, i32* %960, align 4
  br label %997

961:                                              ; preds = %950
  %962 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %963 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %962, i32 0, i32 2
  %964 = load i32, i32* %963, align 4
  %965 = icmp eq i32 %964, 13
  br i1 %965, label %966, label %972

966:                                              ; preds = %961
  %967 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %968 = load i32, i32* @NORMAL_EXEC, align 4
  %969 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %967, i32 %968, i32 1, i32 14)
  %970 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %971 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %970, i32 0, i32 1
  store i32 14, i32* %971, align 4
  br label %996

972:                                              ; preds = %961
  %973 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %974 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %973, i32 0, i32 2
  %975 = load i32, i32* %974, align 4
  %976 = icmp eq i32 %975, 14
  br i1 %976, label %977, label %983

977:                                              ; preds = %972
  %978 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %979 = load i32, i32* @NORMAL_EXEC, align 4
  %980 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %978, i32 %979, i32 1, i32 15)
  %981 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %982 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %981, i32 0, i32 1
  store i32 15, i32* %982, align 4
  br label %995

983:                                              ; preds = %972
  %984 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %985 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %984, i32 0, i32 2
  %986 = load i32, i32* %985, align 4
  %987 = icmp eq i32 %986, 15
  br i1 %987, label %988, label %994

988:                                              ; preds = %983
  %989 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %990 = load i32, i32* @NORMAL_EXEC, align 4
  %991 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %989, i32 %990, i32 1, i32 16)
  %992 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %993 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %992, i32 0, i32 1
  store i32 16, i32* %993, align 4
  br label %994

994:                                              ; preds = %988, %983
  br label %995

995:                                              ; preds = %994, %977
  br label %996

996:                                              ; preds = %995, %966
  br label %997

997:                                              ; preds = %996, %955
  br label %998

998:                                              ; preds = %997, %944
  br label %999

999:                                              ; preds = %998, %933
  br label %1076

1000:                                             ; preds = %925
  %1001 = load i32, i32* %10, align 4
  %1002 = icmp eq i32 %1001, 1
  br i1 %1002, label %1003, label %1075

1003:                                             ; preds = %1000
  %1004 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1005 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1004, i32 0, i32 2
  %1006 = load i32, i32* %1005, align 4
  %1007 = icmp eq i32 %1006, 8
  br i1 %1007, label %1008, label %1014

1008:                                             ; preds = %1003
  %1009 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1010 = load i32, i32* @NORMAL_EXEC, align 4
  %1011 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1009, i32 %1010, i32 1, i32 7)
  %1012 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1013 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1012, i32 0, i32 1
  store i32 7, i32* %1013, align 4
  br label %1074

1014:                                             ; preds = %1003
  %1015 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1016 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1015, i32 0, i32 2
  %1017 = load i32, i32* %1016, align 4
  %1018 = icmp eq i32 %1017, 7
  br i1 %1018, label %1019, label %1025

1019:                                             ; preds = %1014
  %1020 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1021 = load i32, i32* @NORMAL_EXEC, align 4
  %1022 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1020, i32 %1021, i32 1, i32 6)
  %1023 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1024 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1023, i32 0, i32 1
  store i32 6, i32* %1024, align 4
  br label %1073

1025:                                             ; preds = %1014
  %1026 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1027 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1026, i32 0, i32 2
  %1028 = load i32, i32* %1027, align 4
  %1029 = icmp eq i32 %1028, 6
  br i1 %1029, label %1030, label %1036

1030:                                             ; preds = %1025
  %1031 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1032 = load i32, i32* @NORMAL_EXEC, align 4
  %1033 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1031, i32 %1032, i32 1, i32 6)
  %1034 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1035 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1034, i32 0, i32 1
  store i32 6, i32* %1035, align 4
  br label %1072

1036:                                             ; preds = %1025
  %1037 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1038 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1037, i32 0, i32 2
  %1039 = load i32, i32* %1038, align 4
  %1040 = icmp eq i32 %1039, 16
  br i1 %1040, label %1041, label %1047

1041:                                             ; preds = %1036
  %1042 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1043 = load i32, i32* @NORMAL_EXEC, align 4
  %1044 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1042, i32 %1043, i32 1, i32 15)
  %1045 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1046 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1045, i32 0, i32 1
  store i32 15, i32* %1046, align 4
  br label %1071

1047:                                             ; preds = %1036
  %1048 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1049 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1048, i32 0, i32 2
  %1050 = load i32, i32* %1049, align 4
  %1051 = icmp eq i32 %1050, 15
  br i1 %1051, label %1052, label %1058

1052:                                             ; preds = %1047
  %1053 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1054 = load i32, i32* @NORMAL_EXEC, align 4
  %1055 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1053, i32 %1054, i32 1, i32 14)
  %1056 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1057 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1056, i32 0, i32 1
  store i32 14, i32* %1057, align 4
  br label %1070

1058:                                             ; preds = %1047
  %1059 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1060 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1059, i32 0, i32 2
  %1061 = load i32, i32* %1060, align 4
  %1062 = icmp eq i32 %1061, 14
  br i1 %1062, label %1063, label %1069

1063:                                             ; preds = %1058
  %1064 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1065 = load i32, i32* @NORMAL_EXEC, align 4
  %1066 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1064, i32 %1065, i32 1, i32 14)
  %1067 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1068 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1067, i32 0, i32 1
  store i32 14, i32* %1068, align 4
  br label %1069

1069:                                             ; preds = %1063, %1058
  br label %1070

1070:                                             ; preds = %1069, %1052
  br label %1071

1071:                                             ; preds = %1070, %1041
  br label %1072

1072:                                             ; preds = %1071, %1030
  br label %1073

1073:                                             ; preds = %1072, %1019
  br label %1074

1074:                                             ; preds = %1073, %1008
  br label %1075

1075:                                             ; preds = %1074, %1000
  br label %1076

1076:                                             ; preds = %1075, %999
  br label %1323

1077:                                             ; preds = %828
  %1078 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1079 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1078, i32 0, i32 2
  %1080 = load i32, i32* %1079, align 4
  %1081 = icmp eq i32 %1080, 5
  br i1 %1081, label %1082, label %1088

1082:                                             ; preds = %1077
  %1083 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1084 = load i32, i32* @NORMAL_EXEC, align 4
  %1085 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1083, i32 %1084, i32 1, i32 2)
  %1086 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1087 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1086, i32 0, i32 1
  store i32 2, i32* %1087, align 4
  br label %1124

1088:                                             ; preds = %1077
  %1089 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1090 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1089, i32 0, i32 2
  %1091 = load i32, i32* %1090, align 4
  %1092 = icmp eq i32 %1091, 6
  br i1 %1092, label %1093, label %1099

1093:                                             ; preds = %1088
  %1094 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1095 = load i32, i32* @NORMAL_EXEC, align 4
  %1096 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1094, i32 %1095, i32 1, i32 2)
  %1097 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1098 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1097, i32 0, i32 1
  store i32 2, i32* %1098, align 4
  br label %1123

1099:                                             ; preds = %1088
  %1100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1100, i32 0, i32 2
  %1102 = load i32, i32* %1101, align 4
  %1103 = icmp eq i32 %1102, 7
  br i1 %1103, label %1104, label %1110

1104:                                             ; preds = %1099
  %1105 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1106 = load i32, i32* @NORMAL_EXEC, align 4
  %1107 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1105, i32 %1106, i32 1, i32 3)
  %1108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1108, i32 0, i32 1
  store i32 3, i32* %1109, align 4
  br label %1122

1110:                                             ; preds = %1099
  %1111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1111, i32 0, i32 2
  %1113 = load i32, i32* %1112, align 4
  %1114 = icmp eq i32 %1113, 8
  br i1 %1114, label %1115, label %1121

1115:                                             ; preds = %1110
  %1116 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1117 = load i32, i32* @NORMAL_EXEC, align 4
  %1118 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1116, i32 %1117, i32 1, i32 4)
  %1119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1119, i32 0, i32 1
  store i32 4, i32* %1120, align 4
  br label %1121

1121:                                             ; preds = %1115, %1110
  br label %1122

1122:                                             ; preds = %1121, %1104
  br label %1123

1123:                                             ; preds = %1122, %1093
  br label %1124

1124:                                             ; preds = %1123, %1082
  %1125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1125, i32 0, i32 2
  %1127 = load i32, i32* %1126, align 4
  %1128 = icmp eq i32 %1127, 13
  br i1 %1128, label %1129, label %1135

1129:                                             ; preds = %1124
  %1130 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1131 = load i32, i32* @NORMAL_EXEC, align 4
  %1132 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1130, i32 %1131, i32 1, i32 10)
  %1133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1133, i32 0, i32 1
  store i32 10, i32* %1134, align 4
  br label %1171

1135:                                             ; preds = %1124
  %1136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1136, i32 0, i32 2
  %1138 = load i32, i32* %1137, align 4
  %1139 = icmp eq i32 %1138, 14
  br i1 %1139, label %1140, label %1146

1140:                                             ; preds = %1135
  %1141 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1142 = load i32, i32* @NORMAL_EXEC, align 4
  %1143 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1141, i32 %1142, i32 1, i32 10)
  %1144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1144, i32 0, i32 1
  store i32 10, i32* %1145, align 4
  br label %1170

1146:                                             ; preds = %1135
  %1147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1147, i32 0, i32 2
  %1149 = load i32, i32* %1148, align 4
  %1150 = icmp eq i32 %1149, 15
  br i1 %1150, label %1151, label %1157

1151:                                             ; preds = %1146
  %1152 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1153 = load i32, i32* @NORMAL_EXEC, align 4
  %1154 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1152, i32 %1153, i32 1, i32 11)
  %1155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1155, i32 0, i32 1
  store i32 11, i32* %1156, align 4
  br label %1169

1157:                                             ; preds = %1146
  %1158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1158, i32 0, i32 2
  %1160 = load i32, i32* %1159, align 4
  %1161 = icmp eq i32 %1160, 16
  br i1 %1161, label %1162, label %1168

1162:                                             ; preds = %1157
  %1163 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1164 = load i32, i32* @NORMAL_EXEC, align 4
  %1165 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1163, i32 %1164, i32 1, i32 12)
  %1166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1166, i32 0, i32 1
  store i32 12, i32* %1167, align 4
  br label %1168

1168:                                             ; preds = %1162, %1157
  br label %1169

1169:                                             ; preds = %1168, %1151
  br label %1170

1170:                                             ; preds = %1169, %1140
  br label %1171

1171:                                             ; preds = %1170, %1129
  %1172 = load i32, i32* %10, align 4
  %1173 = icmp eq i32 %1172, -1
  br i1 %1173, label %1174, label %1246

1174:                                             ; preds = %1171
  %1175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1175, i32 0, i32 2
  %1177 = load i32, i32* %1176, align 4
  %1178 = icmp eq i32 %1177, 1
  br i1 %1178, label %1179, label %1185

1179:                                             ; preds = %1174
  %1180 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1181 = load i32, i32* @NORMAL_EXEC, align 4
  %1182 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1180, i32 %1181, i32 1, i32 2)
  %1183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1183, i32 0, i32 1
  store i32 2, i32* %1184, align 4
  br label %1245

1185:                                             ; preds = %1174
  %1186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1186, i32 0, i32 2
  %1188 = load i32, i32* %1187, align 4
  %1189 = icmp eq i32 %1188, 2
  br i1 %1189, label %1190, label %1196

1190:                                             ; preds = %1185
  %1191 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1192 = load i32, i32* @NORMAL_EXEC, align 4
  %1193 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1191, i32 %1192, i32 1, i32 3)
  %1194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1194, i32 0, i32 1
  store i32 3, i32* %1195, align 4
  br label %1244

1196:                                             ; preds = %1185
  %1197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1197, i32 0, i32 2
  %1199 = load i32, i32* %1198, align 4
  %1200 = icmp eq i32 %1199, 3
  br i1 %1200, label %1201, label %1207

1201:                                             ; preds = %1196
  %1202 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1203 = load i32, i32* @NORMAL_EXEC, align 4
  %1204 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1202, i32 %1203, i32 1, i32 4)
  %1205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1205, i32 0, i32 1
  store i32 4, i32* %1206, align 4
  br label %1243

1207:                                             ; preds = %1196
  %1208 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1208, i32 0, i32 2
  %1210 = load i32, i32* %1209, align 4
  %1211 = icmp eq i32 %1210, 9
  br i1 %1211, label %1212, label %1218

1212:                                             ; preds = %1207
  %1213 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1214 = load i32, i32* @NORMAL_EXEC, align 4
  %1215 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1213, i32 %1214, i32 1, i32 10)
  %1216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1216, i32 0, i32 1
  store i32 10, i32* %1217, align 4
  br label %1242

1218:                                             ; preds = %1207
  %1219 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1219, i32 0, i32 2
  %1221 = load i32, i32* %1220, align 4
  %1222 = icmp eq i32 %1221, 10
  br i1 %1222, label %1223, label %1229

1223:                                             ; preds = %1218
  %1224 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1225 = load i32, i32* @NORMAL_EXEC, align 4
  %1226 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1224, i32 %1225, i32 1, i32 11)
  %1227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1227, i32 0, i32 1
  store i32 11, i32* %1228, align 4
  br label %1241

1229:                                             ; preds = %1218
  %1230 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1230, i32 0, i32 2
  %1232 = load i32, i32* %1231, align 4
  %1233 = icmp eq i32 %1232, 11
  br i1 %1233, label %1234, label %1240

1234:                                             ; preds = %1229
  %1235 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1236 = load i32, i32* @NORMAL_EXEC, align 4
  %1237 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1235, i32 %1236, i32 1, i32 12)
  %1238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1238, i32 0, i32 1
  store i32 12, i32* %1239, align 4
  br label %1240

1240:                                             ; preds = %1234, %1229
  br label %1241

1241:                                             ; preds = %1240, %1223
  br label %1242

1242:                                             ; preds = %1241, %1212
  br label %1243

1243:                                             ; preds = %1242, %1201
  br label %1244

1244:                                             ; preds = %1243, %1190
  br label %1245

1245:                                             ; preds = %1244, %1179
  br label %1322

1246:                                             ; preds = %1171
  %1247 = load i32, i32* %10, align 4
  %1248 = icmp eq i32 %1247, 1
  br i1 %1248, label %1249, label %1321

1249:                                             ; preds = %1246
  %1250 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1250, i32 0, i32 2
  %1252 = load i32, i32* %1251, align 4
  %1253 = icmp eq i32 %1252, 4
  br i1 %1253, label %1254, label %1260

1254:                                             ; preds = %1249
  %1255 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1256 = load i32, i32* @NORMAL_EXEC, align 4
  %1257 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1255, i32 %1256, i32 1, i32 3)
  %1258 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1258, i32 0, i32 1
  store i32 3, i32* %1259, align 4
  br label %1320

1260:                                             ; preds = %1249
  %1261 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1261, i32 0, i32 2
  %1263 = load i32, i32* %1262, align 4
  %1264 = icmp eq i32 %1263, 3
  br i1 %1264, label %1265, label %1271

1265:                                             ; preds = %1260
  %1266 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1267 = load i32, i32* @NORMAL_EXEC, align 4
  %1268 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1266, i32 %1267, i32 1, i32 2)
  %1269 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1269, i32 0, i32 1
  store i32 2, i32* %1270, align 4
  br label %1319

1271:                                             ; preds = %1260
  %1272 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1272, i32 0, i32 2
  %1274 = load i32, i32* %1273, align 4
  %1275 = icmp eq i32 %1274, 2
  br i1 %1275, label %1276, label %1282

1276:                                             ; preds = %1271
  %1277 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1278 = load i32, i32* @NORMAL_EXEC, align 4
  %1279 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1277, i32 %1278, i32 1, i32 2)
  %1280 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1280, i32 0, i32 1
  store i32 2, i32* %1281, align 4
  br label %1318

1282:                                             ; preds = %1271
  %1283 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1283, i32 0, i32 2
  %1285 = load i32, i32* %1284, align 4
  %1286 = icmp eq i32 %1285, 12
  br i1 %1286, label %1287, label %1293

1287:                                             ; preds = %1282
  %1288 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1289 = load i32, i32* @NORMAL_EXEC, align 4
  %1290 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1288, i32 %1289, i32 1, i32 11)
  %1291 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1291, i32 0, i32 1
  store i32 11, i32* %1292, align 4
  br label %1317

1293:                                             ; preds = %1282
  %1294 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1294, i32 0, i32 2
  %1296 = load i32, i32* %1295, align 4
  %1297 = icmp eq i32 %1296, 11
  br i1 %1297, label %1298, label %1304

1298:                                             ; preds = %1293
  %1299 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1300 = load i32, i32* @NORMAL_EXEC, align 4
  %1301 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1299, i32 %1300, i32 1, i32 10)
  %1302 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1302, i32 0, i32 1
  store i32 10, i32* %1303, align 4
  br label %1316

1304:                                             ; preds = %1293
  %1305 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1305, i32 0, i32 2
  %1307 = load i32, i32* %1306, align 4
  %1308 = icmp eq i32 %1307, 10
  br i1 %1308, label %1309, label %1315

1309:                                             ; preds = %1304
  %1310 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1311 = load i32, i32* @NORMAL_EXEC, align 4
  %1312 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1310, i32 %1311, i32 1, i32 10)
  %1313 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1313, i32 0, i32 1
  store i32 10, i32* %1314, align 4
  br label %1315

1315:                                             ; preds = %1309, %1304
  br label %1316

1316:                                             ; preds = %1315, %1298
  br label %1317

1317:                                             ; preds = %1316, %1287
  br label %1318

1318:                                             ; preds = %1317, %1276
  br label %1319

1319:                                             ; preds = %1318, %1265
  br label %1320

1320:                                             ; preds = %1319, %1254
  br label %1321

1321:                                             ; preds = %1320, %1246
  br label %1322

1322:                                             ; preds = %1321, %1245
  br label %1323

1323:                                             ; preds = %1322, %1076
  br label %1824

1324:                                             ; preds = %825
  %1325 = load i32, i32* %8, align 4
  %1326 = icmp eq i32 %1325, 3
  br i1 %1326, label %1327, label %1823

1327:                                             ; preds = %1324
  %1328 = load i32, i32* %7, align 4
  %1329 = icmp ne i32 %1328, 0
  br i1 %1329, label %1330, label %1576

1330:                                             ; preds = %1327
  %1331 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1331, i32 0, i32 2
  %1333 = load i32, i32* %1332, align 4
  %1334 = icmp eq i32 %1333, 1
  br i1 %1334, label %1335, label %1341

1335:                                             ; preds = %1330
  %1336 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1337 = load i32, i32* @NORMAL_EXEC, align 4
  %1338 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1336, i32 %1337, i32 1, i32 7)
  %1339 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1339, i32 0, i32 1
  store i32 7, i32* %1340, align 4
  br label %1377

1341:                                             ; preds = %1330
  %1342 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1342, i32 0, i32 2
  %1344 = load i32, i32* %1343, align 4
  %1345 = icmp eq i32 %1344, 2
  br i1 %1345, label %1346, label %1352

1346:                                             ; preds = %1341
  %1347 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1348 = load i32, i32* @NORMAL_EXEC, align 4
  %1349 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1347, i32 %1348, i32 1, i32 7)
  %1350 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1350, i32 0, i32 1
  store i32 7, i32* %1351, align 4
  br label %1376

1352:                                             ; preds = %1341
  %1353 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1353, i32 0, i32 2
  %1355 = load i32, i32* %1354, align 4
  %1356 = icmp eq i32 %1355, 3
  br i1 %1356, label %1357, label %1363

1357:                                             ; preds = %1352
  %1358 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1359 = load i32, i32* @NORMAL_EXEC, align 4
  %1360 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1358, i32 %1359, i32 1, i32 7)
  %1361 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1361, i32 0, i32 1
  store i32 7, i32* %1362, align 4
  br label %1375

1363:                                             ; preds = %1352
  %1364 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1364, i32 0, i32 2
  %1366 = load i32, i32* %1365, align 4
  %1367 = icmp eq i32 %1366, 4
  br i1 %1367, label %1368, label %1374

1368:                                             ; preds = %1363
  %1369 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1370 = load i32, i32* @NORMAL_EXEC, align 4
  %1371 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1369, i32 %1370, i32 1, i32 8)
  %1372 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1372, i32 0, i32 1
  store i32 8, i32* %1373, align 4
  br label %1374

1374:                                             ; preds = %1368, %1363
  br label %1375

1375:                                             ; preds = %1374, %1357
  br label %1376

1376:                                             ; preds = %1375, %1346
  br label %1377

1377:                                             ; preds = %1376, %1335
  %1378 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1378, i32 0, i32 2
  %1380 = load i32, i32* %1379, align 4
  %1381 = icmp eq i32 %1380, 9
  br i1 %1381, label %1382, label %1388

1382:                                             ; preds = %1377
  %1383 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1384 = load i32, i32* @NORMAL_EXEC, align 4
  %1385 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1383, i32 %1384, i32 1, i32 15)
  %1386 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1386, i32 0, i32 1
  store i32 15, i32* %1387, align 4
  br label %1424

1388:                                             ; preds = %1377
  %1389 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1389, i32 0, i32 2
  %1391 = load i32, i32* %1390, align 4
  %1392 = icmp eq i32 %1391, 10
  br i1 %1392, label %1393, label %1399

1393:                                             ; preds = %1388
  %1394 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1395 = load i32, i32* @NORMAL_EXEC, align 4
  %1396 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1394, i32 %1395, i32 1, i32 15)
  %1397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1397, i32 0, i32 1
  store i32 15, i32* %1398, align 4
  br label %1423

1399:                                             ; preds = %1388
  %1400 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1400, i32 0, i32 2
  %1402 = load i32, i32* %1401, align 4
  %1403 = icmp eq i32 %1402, 11
  br i1 %1403, label %1404, label %1410

1404:                                             ; preds = %1399
  %1405 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1406 = load i32, i32* @NORMAL_EXEC, align 4
  %1407 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1405, i32 %1406, i32 1, i32 15)
  %1408 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1408, i32 0, i32 1
  store i32 15, i32* %1409, align 4
  br label %1422

1410:                                             ; preds = %1399
  %1411 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1411, i32 0, i32 2
  %1413 = load i32, i32* %1412, align 4
  %1414 = icmp eq i32 %1413, 12
  br i1 %1414, label %1415, label %1421

1415:                                             ; preds = %1410
  %1416 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1417 = load i32, i32* @NORMAL_EXEC, align 4
  %1418 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1416, i32 %1417, i32 1, i32 16)
  %1419 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1419, i32 0, i32 1
  store i32 16, i32* %1420, align 4
  br label %1421

1421:                                             ; preds = %1415, %1410
  br label %1422

1422:                                             ; preds = %1421, %1404
  br label %1423

1423:                                             ; preds = %1422, %1393
  br label %1424

1424:                                             ; preds = %1423, %1382
  %1425 = load i32, i32* %10, align 4
  %1426 = icmp eq i32 %1425, -1
  br i1 %1426, label %1427, label %1499

1427:                                             ; preds = %1424
  %1428 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1428, i32 0, i32 2
  %1430 = load i32, i32* %1429, align 4
  %1431 = icmp eq i32 %1430, 5
  br i1 %1431, label %1432, label %1438

1432:                                             ; preds = %1427
  %1433 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1434 = load i32, i32* @NORMAL_EXEC, align 4
  %1435 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1433, i32 %1434, i32 1, i32 7)
  %1436 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1436, i32 0, i32 1
  store i32 7, i32* %1437, align 4
  br label %1498

1438:                                             ; preds = %1427
  %1439 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1439, i32 0, i32 2
  %1441 = load i32, i32* %1440, align 4
  %1442 = icmp eq i32 %1441, 6
  br i1 %1442, label %1443, label %1449

1443:                                             ; preds = %1438
  %1444 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1445 = load i32, i32* @NORMAL_EXEC, align 4
  %1446 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1444, i32 %1445, i32 1, i32 7)
  %1447 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1447, i32 0, i32 1
  store i32 7, i32* %1448, align 4
  br label %1497

1449:                                             ; preds = %1438
  %1450 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1450, i32 0, i32 2
  %1452 = load i32, i32* %1451, align 4
  %1453 = icmp eq i32 %1452, 7
  br i1 %1453, label %1454, label %1460

1454:                                             ; preds = %1449
  %1455 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1456 = load i32, i32* @NORMAL_EXEC, align 4
  %1457 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1455, i32 %1456, i32 1, i32 8)
  %1458 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1458, i32 0, i32 1
  store i32 8, i32* %1459, align 4
  br label %1496

1460:                                             ; preds = %1449
  %1461 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1461, i32 0, i32 2
  %1463 = load i32, i32* %1462, align 4
  %1464 = icmp eq i32 %1463, 13
  br i1 %1464, label %1465, label %1471

1465:                                             ; preds = %1460
  %1466 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1467 = load i32, i32* @NORMAL_EXEC, align 4
  %1468 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1466, i32 %1467, i32 1, i32 15)
  %1469 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1469, i32 0, i32 1
  store i32 15, i32* %1470, align 4
  br label %1495

1471:                                             ; preds = %1460
  %1472 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1472, i32 0, i32 2
  %1474 = load i32, i32* %1473, align 4
  %1475 = icmp eq i32 %1474, 14
  br i1 %1475, label %1476, label %1482

1476:                                             ; preds = %1471
  %1477 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1478 = load i32, i32* @NORMAL_EXEC, align 4
  %1479 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1477, i32 %1478, i32 1, i32 15)
  %1480 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1480, i32 0, i32 1
  store i32 15, i32* %1481, align 4
  br label %1494

1482:                                             ; preds = %1471
  %1483 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1483, i32 0, i32 2
  %1485 = load i32, i32* %1484, align 4
  %1486 = icmp eq i32 %1485, 15
  br i1 %1486, label %1487, label %1493

1487:                                             ; preds = %1482
  %1488 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1489 = load i32, i32* @NORMAL_EXEC, align 4
  %1490 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1488, i32 %1489, i32 1, i32 16)
  %1491 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1491, i32 0, i32 1
  store i32 16, i32* %1492, align 4
  br label %1493

1493:                                             ; preds = %1487, %1482
  br label %1494

1494:                                             ; preds = %1493, %1476
  br label %1495

1495:                                             ; preds = %1494, %1465
  br label %1496

1496:                                             ; preds = %1495, %1454
  br label %1497

1497:                                             ; preds = %1496, %1443
  br label %1498

1498:                                             ; preds = %1497, %1432
  br label %1575

1499:                                             ; preds = %1424
  %1500 = load i32, i32* %10, align 4
  %1501 = icmp eq i32 %1500, 1
  br i1 %1501, label %1502, label %1574

1502:                                             ; preds = %1499
  %1503 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1503, i32 0, i32 2
  %1505 = load i32, i32* %1504, align 4
  %1506 = icmp eq i32 %1505, 8
  br i1 %1506, label %1507, label %1513

1507:                                             ; preds = %1502
  %1508 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1509 = load i32, i32* @NORMAL_EXEC, align 4
  %1510 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1508, i32 %1509, i32 1, i32 7)
  %1511 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1511, i32 0, i32 1
  store i32 7, i32* %1512, align 4
  br label %1573

1513:                                             ; preds = %1502
  %1514 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1514, i32 0, i32 2
  %1516 = load i32, i32* %1515, align 4
  %1517 = icmp eq i32 %1516, 7
  br i1 %1517, label %1518, label %1524

1518:                                             ; preds = %1513
  %1519 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1520 = load i32, i32* @NORMAL_EXEC, align 4
  %1521 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1519, i32 %1520, i32 1, i32 7)
  %1522 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1522, i32 0, i32 1
  store i32 7, i32* %1523, align 4
  br label %1572

1524:                                             ; preds = %1513
  %1525 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1525, i32 0, i32 2
  %1527 = load i32, i32* %1526, align 4
  %1528 = icmp eq i32 %1527, 6
  br i1 %1528, label %1529, label %1535

1529:                                             ; preds = %1524
  %1530 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1531 = load i32, i32* @NORMAL_EXEC, align 4
  %1532 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1530, i32 %1531, i32 1, i32 7)
  %1533 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1533, i32 0, i32 1
  store i32 7, i32* %1534, align 4
  br label %1571

1535:                                             ; preds = %1524
  %1536 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1537 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1536, i32 0, i32 2
  %1538 = load i32, i32* %1537, align 4
  %1539 = icmp eq i32 %1538, 16
  br i1 %1539, label %1540, label %1546

1540:                                             ; preds = %1535
  %1541 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1542 = load i32, i32* @NORMAL_EXEC, align 4
  %1543 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1541, i32 %1542, i32 1, i32 15)
  %1544 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1544, i32 0, i32 1
  store i32 15, i32* %1545, align 4
  br label %1570

1546:                                             ; preds = %1535
  %1547 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1547, i32 0, i32 2
  %1549 = load i32, i32* %1548, align 4
  %1550 = icmp eq i32 %1549, 15
  br i1 %1550, label %1551, label %1557

1551:                                             ; preds = %1546
  %1552 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1553 = load i32, i32* @NORMAL_EXEC, align 4
  %1554 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1552, i32 %1553, i32 1, i32 15)
  %1555 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1555, i32 0, i32 1
  store i32 15, i32* %1556, align 4
  br label %1569

1557:                                             ; preds = %1546
  %1558 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1559 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1558, i32 0, i32 2
  %1560 = load i32, i32* %1559, align 4
  %1561 = icmp eq i32 %1560, 14
  br i1 %1561, label %1562, label %1568

1562:                                             ; preds = %1557
  %1563 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1564 = load i32, i32* @NORMAL_EXEC, align 4
  %1565 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1563, i32 %1564, i32 1, i32 15)
  %1566 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1566, i32 0, i32 1
  store i32 15, i32* %1567, align 4
  br label %1568

1568:                                             ; preds = %1562, %1557
  br label %1569

1569:                                             ; preds = %1568, %1551
  br label %1570

1570:                                             ; preds = %1569, %1540
  br label %1571

1571:                                             ; preds = %1570, %1529
  br label %1572

1572:                                             ; preds = %1571, %1518
  br label %1573

1573:                                             ; preds = %1572, %1507
  br label %1574

1574:                                             ; preds = %1573, %1499
  br label %1575

1575:                                             ; preds = %1574, %1498
  br label %1822

1576:                                             ; preds = %1327
  %1577 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1578 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1577, i32 0, i32 2
  %1579 = load i32, i32* %1578, align 4
  %1580 = icmp eq i32 %1579, 5
  br i1 %1580, label %1581, label %1587

1581:                                             ; preds = %1576
  %1582 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1583 = load i32, i32* @NORMAL_EXEC, align 4
  %1584 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1582, i32 %1583, i32 1, i32 3)
  %1585 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1585, i32 0, i32 1
  store i32 3, i32* %1586, align 4
  br label %1623

1587:                                             ; preds = %1576
  %1588 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1589 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1588, i32 0, i32 2
  %1590 = load i32, i32* %1589, align 4
  %1591 = icmp eq i32 %1590, 6
  br i1 %1591, label %1592, label %1598

1592:                                             ; preds = %1587
  %1593 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1594 = load i32, i32* @NORMAL_EXEC, align 4
  %1595 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1593, i32 %1594, i32 1, i32 3)
  %1596 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1597 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1596, i32 0, i32 1
  store i32 3, i32* %1597, align 4
  br label %1622

1598:                                             ; preds = %1587
  %1599 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1599, i32 0, i32 2
  %1601 = load i32, i32* %1600, align 4
  %1602 = icmp eq i32 %1601, 7
  br i1 %1602, label %1603, label %1609

1603:                                             ; preds = %1598
  %1604 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1605 = load i32, i32* @NORMAL_EXEC, align 4
  %1606 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1604, i32 %1605, i32 1, i32 3)
  %1607 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1608 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1607, i32 0, i32 1
  store i32 3, i32* %1608, align 4
  br label %1621

1609:                                             ; preds = %1598
  %1610 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1610, i32 0, i32 2
  %1612 = load i32, i32* %1611, align 4
  %1613 = icmp eq i32 %1612, 8
  br i1 %1613, label %1614, label %1620

1614:                                             ; preds = %1609
  %1615 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1616 = load i32, i32* @NORMAL_EXEC, align 4
  %1617 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1615, i32 %1616, i32 1, i32 4)
  %1618 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1619 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1618, i32 0, i32 1
  store i32 4, i32* %1619, align 4
  br label %1620

1620:                                             ; preds = %1614, %1609
  br label %1621

1621:                                             ; preds = %1620, %1603
  br label %1622

1622:                                             ; preds = %1621, %1592
  br label %1623

1623:                                             ; preds = %1622, %1581
  %1624 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1625 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1624, i32 0, i32 2
  %1626 = load i32, i32* %1625, align 4
  %1627 = icmp eq i32 %1626, 13
  br i1 %1627, label %1628, label %1634

1628:                                             ; preds = %1623
  %1629 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1630 = load i32, i32* @NORMAL_EXEC, align 4
  %1631 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1629, i32 %1630, i32 1, i32 11)
  %1632 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1632, i32 0, i32 1
  store i32 11, i32* %1633, align 4
  br label %1670

1634:                                             ; preds = %1623
  %1635 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1636 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1635, i32 0, i32 2
  %1637 = load i32, i32* %1636, align 4
  %1638 = icmp eq i32 %1637, 14
  br i1 %1638, label %1639, label %1645

1639:                                             ; preds = %1634
  %1640 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1641 = load i32, i32* @NORMAL_EXEC, align 4
  %1642 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1640, i32 %1641, i32 1, i32 11)
  %1643 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1643, i32 0, i32 1
  store i32 11, i32* %1644, align 4
  br label %1669

1645:                                             ; preds = %1634
  %1646 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1647 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1646, i32 0, i32 2
  %1648 = load i32, i32* %1647, align 4
  %1649 = icmp eq i32 %1648, 15
  br i1 %1649, label %1650, label %1656

1650:                                             ; preds = %1645
  %1651 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1652 = load i32, i32* @NORMAL_EXEC, align 4
  %1653 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1651, i32 %1652, i32 1, i32 11)
  %1654 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1655 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1654, i32 0, i32 1
  store i32 11, i32* %1655, align 4
  br label %1668

1656:                                             ; preds = %1645
  %1657 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1658 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1657, i32 0, i32 2
  %1659 = load i32, i32* %1658, align 4
  %1660 = icmp eq i32 %1659, 16
  br i1 %1660, label %1661, label %1667

1661:                                             ; preds = %1656
  %1662 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1663 = load i32, i32* @NORMAL_EXEC, align 4
  %1664 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1662, i32 %1663, i32 1, i32 12)
  %1665 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1665, i32 0, i32 1
  store i32 12, i32* %1666, align 4
  br label %1667

1667:                                             ; preds = %1661, %1656
  br label %1668

1668:                                             ; preds = %1667, %1650
  br label %1669

1669:                                             ; preds = %1668, %1639
  br label %1670

1670:                                             ; preds = %1669, %1628
  %1671 = load i32, i32* %10, align 4
  %1672 = icmp eq i32 %1671, -1
  br i1 %1672, label %1673, label %1745

1673:                                             ; preds = %1670
  %1674 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1675 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1674, i32 0, i32 2
  %1676 = load i32, i32* %1675, align 4
  %1677 = icmp eq i32 %1676, 1
  br i1 %1677, label %1678, label %1684

1678:                                             ; preds = %1673
  %1679 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1680 = load i32, i32* @NORMAL_EXEC, align 4
  %1681 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1679, i32 %1680, i32 1, i32 3)
  %1682 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1683 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1682, i32 0, i32 1
  store i32 3, i32* %1683, align 4
  br label %1744

1684:                                             ; preds = %1673
  %1685 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1685, i32 0, i32 2
  %1687 = load i32, i32* %1686, align 4
  %1688 = icmp eq i32 %1687, 2
  br i1 %1688, label %1689, label %1695

1689:                                             ; preds = %1684
  %1690 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1691 = load i32, i32* @NORMAL_EXEC, align 4
  %1692 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1690, i32 %1691, i32 1, i32 3)
  %1693 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1694 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1693, i32 0, i32 1
  store i32 3, i32* %1694, align 4
  br label %1743

1695:                                             ; preds = %1684
  %1696 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1697 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1696, i32 0, i32 2
  %1698 = load i32, i32* %1697, align 4
  %1699 = icmp eq i32 %1698, 3
  br i1 %1699, label %1700, label %1706

1700:                                             ; preds = %1695
  %1701 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1702 = load i32, i32* @NORMAL_EXEC, align 4
  %1703 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1701, i32 %1702, i32 1, i32 4)
  %1704 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1704, i32 0, i32 1
  store i32 4, i32* %1705, align 4
  br label %1742

1706:                                             ; preds = %1695
  %1707 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1708 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1707, i32 0, i32 2
  %1709 = load i32, i32* %1708, align 4
  %1710 = icmp eq i32 %1709, 9
  br i1 %1710, label %1711, label %1717

1711:                                             ; preds = %1706
  %1712 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1713 = load i32, i32* @NORMAL_EXEC, align 4
  %1714 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1712, i32 %1713, i32 1, i32 11)
  %1715 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1716 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1715, i32 0, i32 1
  store i32 11, i32* %1716, align 4
  br label %1741

1717:                                             ; preds = %1706
  %1718 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1719 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1718, i32 0, i32 2
  %1720 = load i32, i32* %1719, align 4
  %1721 = icmp eq i32 %1720, 10
  br i1 %1721, label %1722, label %1728

1722:                                             ; preds = %1717
  %1723 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1724 = load i32, i32* @NORMAL_EXEC, align 4
  %1725 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1723, i32 %1724, i32 1, i32 11)
  %1726 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1726, i32 0, i32 1
  store i32 11, i32* %1727, align 4
  br label %1740

1728:                                             ; preds = %1717
  %1729 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1730 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1729, i32 0, i32 2
  %1731 = load i32, i32* %1730, align 4
  %1732 = icmp eq i32 %1731, 11
  br i1 %1732, label %1733, label %1739

1733:                                             ; preds = %1728
  %1734 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1735 = load i32, i32* @NORMAL_EXEC, align 4
  %1736 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1734, i32 %1735, i32 1, i32 12)
  %1737 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1738 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1737, i32 0, i32 1
  store i32 12, i32* %1738, align 4
  br label %1739

1739:                                             ; preds = %1733, %1728
  br label %1740

1740:                                             ; preds = %1739, %1722
  br label %1741

1741:                                             ; preds = %1740, %1711
  br label %1742

1742:                                             ; preds = %1741, %1700
  br label %1743

1743:                                             ; preds = %1742, %1689
  br label %1744

1744:                                             ; preds = %1743, %1678
  br label %1821

1745:                                             ; preds = %1670
  %1746 = load i32, i32* %10, align 4
  %1747 = icmp eq i32 %1746, 1
  br i1 %1747, label %1748, label %1820

1748:                                             ; preds = %1745
  %1749 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1750 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1749, i32 0, i32 2
  %1751 = load i32, i32* %1750, align 4
  %1752 = icmp eq i32 %1751, 4
  br i1 %1752, label %1753, label %1759

1753:                                             ; preds = %1748
  %1754 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1755 = load i32, i32* @NORMAL_EXEC, align 4
  %1756 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1754, i32 %1755, i32 1, i32 3)
  %1757 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1758 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1757, i32 0, i32 1
  store i32 3, i32* %1758, align 4
  br label %1819

1759:                                             ; preds = %1748
  %1760 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1761 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1760, i32 0, i32 2
  %1762 = load i32, i32* %1761, align 4
  %1763 = icmp eq i32 %1762, 3
  br i1 %1763, label %1764, label %1770

1764:                                             ; preds = %1759
  %1765 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1766 = load i32, i32* @NORMAL_EXEC, align 4
  %1767 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1765, i32 %1766, i32 1, i32 3)
  %1768 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1769 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1768, i32 0, i32 1
  store i32 3, i32* %1769, align 4
  br label %1818

1770:                                             ; preds = %1759
  %1771 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1772 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1771, i32 0, i32 2
  %1773 = load i32, i32* %1772, align 4
  %1774 = icmp eq i32 %1773, 2
  br i1 %1774, label %1775, label %1781

1775:                                             ; preds = %1770
  %1776 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1777 = load i32, i32* @NORMAL_EXEC, align 4
  %1778 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1776, i32 %1777, i32 1, i32 3)
  %1779 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1780 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1779, i32 0, i32 1
  store i32 3, i32* %1780, align 4
  br label %1817

1781:                                             ; preds = %1770
  %1782 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1783 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1782, i32 0, i32 2
  %1784 = load i32, i32* %1783, align 4
  %1785 = icmp eq i32 %1784, 12
  br i1 %1785, label %1786, label %1792

1786:                                             ; preds = %1781
  %1787 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1788 = load i32, i32* @NORMAL_EXEC, align 4
  %1789 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1787, i32 %1788, i32 1, i32 11)
  %1790 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1791 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1790, i32 0, i32 1
  store i32 11, i32* %1791, align 4
  br label %1816

1792:                                             ; preds = %1781
  %1793 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1794 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1793, i32 0, i32 2
  %1795 = load i32, i32* %1794, align 4
  %1796 = icmp eq i32 %1795, 11
  br i1 %1796, label %1797, label %1803

1797:                                             ; preds = %1792
  %1798 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1799 = load i32, i32* @NORMAL_EXEC, align 4
  %1800 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1798, i32 %1799, i32 1, i32 11)
  %1801 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1802 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1801, i32 0, i32 1
  store i32 11, i32* %1802, align 4
  br label %1815

1803:                                             ; preds = %1792
  %1804 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1805 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1804, i32 0, i32 2
  %1806 = load i32, i32* %1805, align 4
  %1807 = icmp eq i32 %1806, 10
  br i1 %1807, label %1808, label %1814

1808:                                             ; preds = %1803
  %1809 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1810 = load i32, i32* @NORMAL_EXEC, align 4
  %1811 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1809, i32 %1810, i32 1, i32 11)
  %1812 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1813 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1812, i32 0, i32 1
  store i32 11, i32* %1813, align 4
  br label %1814

1814:                                             ; preds = %1808, %1803
  br label %1815

1815:                                             ; preds = %1814, %1797
  br label %1816

1816:                                             ; preds = %1815, %1786
  br label %1817

1817:                                             ; preds = %1816, %1775
  br label %1818

1818:                                             ; preds = %1817, %1764
  br label %1819

1819:                                             ; preds = %1818, %1753
  br label %1820

1820:                                             ; preds = %1819, %1745
  br label %1821

1821:                                             ; preds = %1820, %1744
  br label %1822

1822:                                             ; preds = %1821, %1575
  br label %1823

1823:                                             ; preds = %1822, %1324
  br label %1824

1824:                                             ; preds = %1823, %1323
  br label %1825

1825:                                             ; preds = %1824, %824
  br label %1826

1826:                                             ; preds = %1825, %187
  %1827 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1828 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1827, i32 0, i32 2
  %1829 = load i32, i32* %1828, align 4
  %1830 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1831 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1830, i32 0, i32 1
  %1832 = load i32, i32* %1831, align 4
  %1833 = icmp ne i32 %1829, %1832
  br i1 %1833, label %1834, label %1884

1834:                                             ; preds = %1826
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %1835 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %1836 = load i32, i32* @COMP_BT_COEXIST, align 4
  %1837 = load i32, i32* @DBG_LOUD, align 4
  %1838 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1839 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1838, i32 0, i32 2
  %1840 = load i32, i32* %1839, align 4
  %1841 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1842 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1841, i32 0, i32 1
  %1843 = load i32, i32* %1842, align 4
  %1844 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1835, i32 %1836, i32 %1837, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i32 %1840, i32 %1843)
  %1845 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1846 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %1845, i32 0, i32 0
  %1847 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %1846, align 8
  %1848 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1849 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %1850 = call i32 %1847(%struct.btc_coexist* %1848, i32 %1849, i32* %12)
  %1851 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1852 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %1851, i32 0, i32 0
  %1853 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %1852, align 8
  %1854 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1855 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %1856 = call i32 %1853(%struct.btc_coexist* %1854, i32 %1855, i32* %13)
  %1857 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1858 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %1857, i32 0, i32 0
  %1859 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %1858, align 8
  %1860 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1861 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %1862 = call i32 %1859(%struct.btc_coexist* %1860, i32 %1861, i32* %14)
  %1863 = load i32, i32* %12, align 4
  %1864 = icmp ne i32 %1863, 0
  br i1 %1864, label %1878, label %1865

1865:                                             ; preds = %1834
  %1866 = load i32, i32* %13, align 4
  %1867 = icmp ne i32 %1866, 0
  br i1 %1867, label %1878, label %1868

1868:                                             ; preds = %1865
  %1869 = load i32, i32* %14, align 4
  %1870 = icmp ne i32 %1869, 0
  br i1 %1870, label %1878, label %1871

1871:                                             ; preds = %1868
  %1872 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1873 = load i32, i32* @NORMAL_EXEC, align 4
  %1874 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1875 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1874, i32 0, i32 1
  %1876 = load i32, i32* %1875, align 4
  %1877 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %1872, i32 %1873, i32 1, i32 %1876)
  br label %1883

1878:                                             ; preds = %1868, %1865, %1834
  %1879 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %1880 = load i32, i32* @COMP_BT_COEXIST, align 4
  %1881 = load i32, i32* @DBG_LOUD, align 4
  %1882 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1879, i32 %1880, i32 %1881, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0))
  br label %1883

1883:                                             ; preds = %1878, %1871
  br label %1884

1884:                                             ; preds = %1883, %1826
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
