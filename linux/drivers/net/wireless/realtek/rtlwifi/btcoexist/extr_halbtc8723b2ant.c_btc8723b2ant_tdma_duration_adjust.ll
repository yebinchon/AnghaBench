; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_tdma_duration_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_tdma_duration_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@btc8723b2ant_tdma_duration_adjust.up = internal global i32 0, align 4
@btc8723b2ant_tdma_duration_adjust.dn = internal global i32 0, align 4
@btc8723b2ant_tdma_duration_adjust.m = internal global i32 0, align 4
@btc8723b2ant_tdma_duration_adjust.n = internal global i32 0, align 4
@btc8723b2ant_tdma_duration_adjust.wait_count = internal global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], TdmaDurationAdjust()\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"[BTCoex], retry_count = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"[BTCoex], up=%d, dn=%d, m=%d, n=%d, wait_count=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"[BTCoex], Decrease wifi duration for retry_counter<3!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"[BTCoex], Decrease wifi duration for retry_counter>3!!\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"[BTCoex], max Interval = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"[BTCoex], PsTdma type mismatch!!!, curPsTdma=%d, recordPsTdma=%d\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [73 x i8] c"[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8723b2ant_tdma_duration_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %25, label %188, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
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
  %44 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %42, i32 %43, i32 1, i32 13)
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
  %53 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %51, i32 %52, i32 1, i32 14)
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
  %62 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %60, i32 %61, i32 1, i32 15)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 15, i32* %64, align 4
  br label %71

65:                                               ; preds = %56
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %67 = load i32, i32* @NORMAL_EXEC, align 4
  %68 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %66, i32 %67, i32 1, i32 15)
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
  %80 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %78, i32 %79, i32 1, i32 9)
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
  %89 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %87, i32 %88, i32 1, i32 10)
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
  %98 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %96, i32 %97, i32 1, i32 11)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 11, i32* %100, align 4
  br label %107

101:                                              ; preds = %92
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %103 = load i32, i32* @NORMAL_EXEC, align 4
  %104 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %102, i32 %103, i32 1, i32 11)
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
  %120 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %118, i32 %119, i32 1, i32 5)
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
  %129 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %127, i32 %128, i32 1, i32 6)
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
  %138 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %136, i32 %137, i32 1, i32 7)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 7, i32* %140, align 4
  br label %147

141:                                              ; preds = %132
  %142 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %143 = load i32, i32* @NORMAL_EXEC, align 4
  %144 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %142, i32 %143, i32 1, i32 7)
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
  %156 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %154, i32 %155, i32 1, i32 1)
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
  %165 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %163, i32 %164, i32 1, i32 2)
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
  %174 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %172, i32 %173, i32 1, i32 3)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i32 3, i32* %176, align 4
  br label %183

177:                                              ; preds = %168
  %178 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %179 = load i32, i32* @NORMAL_EXEC, align 4
  %180 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %178, i32 %179, i32 1, i32 3)
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
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  store i32 1, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  store i32 3, i32* @btc8723b2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  br label %1834

188:                                              ; preds = %4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %11, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %194, 1050
  br i1 %195, label %201, label %196

196:                                              ; preds = %188
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %199, 1250
  br i1 %200, label %201, label %204

201:                                              ; preds = %196, %188
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %201, %196
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %206 = load i32, i32* @COMP_BT_COEXIST, align 4
  %207 = load i32, i32* @DBG_LOUD, align 4
  %208 = load i32, i32* %11, align 4
  %209 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %205, i32 %206, i32 %207, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %211 = load i32, i32* @COMP_BT_COEXIST, align 4
  %212 = load i32, i32* @DBG_LOUD, align 4
  %213 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  %214 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %215 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  %216 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.n, align 4
  %217 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  %218 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %213, i32 %214, i32 %215, i32 %216, i32 %217)
  store i32 0, i32* %10, align 4
  %219 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %204
  %224 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  %226 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %228 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  br label %231

231:                                              ; preds = %230, %223
  %232 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  %233 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.n, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  store i32 3, i32* @btc8723b2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  store i32 1, i32* %10, align 4
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %237 = load i32, i32* @COMP_BT_COEXIST, align 4
  %238 = load i32, i32* @DBG_LOUD, align 4
  %239 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %236, i32 %237, i32 %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %240

240:                                              ; preds = %235, %231
  br label %293

241:                                              ; preds = %204
  %242 = load i32, i32* %11, align 4
  %243 = icmp sle i32 %242, 3
  br i1 %243, label %244, label %274

244:                                              ; preds = %241
  %245 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  %247 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %249 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  %250 = icmp sle i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  br label %252

252:                                              ; preds = %251, %244
  %253 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %254 = icmp eq i32 %253, 2
  br i1 %254, label %255, label %273

255:                                              ; preds = %252
  %256 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  %257 = icmp sle i32 %256, 2
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  br label %262

261:                                              ; preds = %255
  store i32 1, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  br label %262

262:                                              ; preds = %261, %258
  %263 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  %264 = icmp sge i32 %263, 20
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  store i32 20, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  br label %266

266:                                              ; preds = %265, %262
  %267 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  %268 = mul nsw i32 3, %267
  store i32 %268, i32* @btc8723b2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  store i32 -1, i32* %10, align 4
  %269 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %270 = load i32, i32* @COMP_BT_COEXIST, align 4
  %271 = load i32, i32* @DBG_LOUD, align 4
  %272 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %269, i32 %270, i32 %271, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %273

273:                                              ; preds = %266, %252
  br label %292

274:                                              ; preds = %241
  %275 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  br label %281

280:                                              ; preds = %274
  store i32 1, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  br label %281

281:                                              ; preds = %280, %277
  %282 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  %283 = icmp sge i32 %282, 20
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  store i32 20, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  br label %285

285:                                              ; preds = %284, %281
  %286 = load i32, i32* @btc8723b2ant_tdma_duration_adjust.m, align 4
  %287 = mul nsw i32 3, %286
  store i32 %287, i32* @btc8723b2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.dn, align 4
  store i32 0, i32* @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  store i32 -1, i32* %10, align 4
  %288 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %289 = load i32, i32* @COMP_BT_COEXIST, align 4
  %290 = load i32, i32* @DBG_LOUD, align 4
  %291 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %288, i32 %289, i32 %290, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %292

292:                                              ; preds = %285, %273
  br label %293

293:                                              ; preds = %292, %240
  %294 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %295 = load i32, i32* @COMP_BT_COEXIST, align 4
  %296 = load i32, i32* @DBG_LOUD, align 4
  %297 = load i32, i32* %8, align 4
  %298 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %294, i32 %295, i32 %296, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %297)
  %299 = load i32, i32* %8, align 4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %301, label %833

301:                                              ; preds = %293
  %302 = load i32, i32* %7, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %562

304:                                              ; preds = %301
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 71
  br i1 %308, label %309, label %315

309:                                              ; preds = %304
  %310 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %311 = load i32, i32* @NORMAL_EXEC, align 4
  %312 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %310, i32 %311, i32 1, i32 5)
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 1
  store i32 5, i32* %314, align 4
  br label %363

315:                                              ; preds = %304
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %326

320:                                              ; preds = %315
  %321 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %322 = load i32, i32* @NORMAL_EXEC, align 4
  %323 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %321, i32 %322, i32 1, i32 5)
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  store i32 5, i32* %325, align 4
  br label %362

326:                                              ; preds = %315
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 2
  br i1 %330, label %331, label %337

331:                                              ; preds = %326
  %332 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %333 = load i32, i32* @NORMAL_EXEC, align 4
  %334 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %332, i32 %333, i32 1, i32 6)
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  store i32 6, i32* %336, align 4
  br label %361

337:                                              ; preds = %326
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 3
  br i1 %341, label %342, label %348

342:                                              ; preds = %337
  %343 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %344 = load i32, i32* @NORMAL_EXEC, align 4
  %345 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %343, i32 %344, i32 1, i32 7)
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 1
  store i32 7, i32* %347, align 4
  br label %360

348:                                              ; preds = %337
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 4
  br i1 %352, label %353, label %359

353:                                              ; preds = %348
  %354 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %355 = load i32, i32* @NORMAL_EXEC, align 4
  %356 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %354, i32 %355, i32 1, i32 8)
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  store i32 8, i32* %358, align 4
  br label %359

359:                                              ; preds = %353, %348
  br label %360

360:                                              ; preds = %359, %342
  br label %361

361:                                              ; preds = %360, %331
  br label %362

362:                                              ; preds = %361, %320
  br label %363

363:                                              ; preds = %362, %309
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 9
  br i1 %367, label %368, label %374

368:                                              ; preds = %363
  %369 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %370 = load i32, i32* @NORMAL_EXEC, align 4
  %371 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %369, i32 %370, i32 1, i32 13)
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 1
  store i32 13, i32* %373, align 4
  br label %410

374:                                              ; preds = %363
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = icmp eq i32 %377, 10
  br i1 %378, label %379, label %385

379:                                              ; preds = %374
  %380 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %381 = load i32, i32* @NORMAL_EXEC, align 4
  %382 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %380, i32 %381, i32 1, i32 14)
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 1
  store i32 14, i32* %384, align 4
  br label %409

385:                                              ; preds = %374
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 11
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %392 = load i32, i32* @NORMAL_EXEC, align 4
  %393 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %391, i32 %392, i32 1, i32 15)
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 1
  store i32 15, i32* %395, align 4
  br label %408

396:                                              ; preds = %385
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = icmp eq i32 %399, 12
  br i1 %400, label %401, label %407

401:                                              ; preds = %396
  %402 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %403 = load i32, i32* @NORMAL_EXEC, align 4
  %404 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %402, i32 %403, i32 1, i32 16)
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 1
  store i32 16, i32* %406, align 4
  br label %407

407:                                              ; preds = %401, %396
  br label %408

408:                                              ; preds = %407, %390
  br label %409

409:                                              ; preds = %408, %379
  br label %410

410:                                              ; preds = %409, %368
  %411 = load i32, i32* %10, align 4
  %412 = icmp eq i32 %411, -1
  br i1 %412, label %413, label %485

413:                                              ; preds = %410
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 5
  br i1 %417, label %418, label %424

418:                                              ; preds = %413
  %419 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %420 = load i32, i32* @NORMAL_EXEC, align 4
  %421 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %419, i32 %420, i32 1, i32 6)
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 1
  store i32 6, i32* %423, align 4
  br label %484

424:                                              ; preds = %413
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, 6
  br i1 %428, label %429, label %435

429:                                              ; preds = %424
  %430 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %431 = load i32, i32* @NORMAL_EXEC, align 4
  %432 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %430, i32 %431, i32 1, i32 7)
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 1
  store i32 7, i32* %434, align 4
  br label %483

435:                                              ; preds = %424
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 7
  br i1 %439, label %440, label %446

440:                                              ; preds = %435
  %441 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %442 = load i32, i32* @NORMAL_EXEC, align 4
  %443 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %441, i32 %442, i32 1, i32 8)
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 1
  store i32 8, i32* %445, align 4
  br label %482

446:                                              ; preds = %435
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 4
  %450 = icmp eq i32 %449, 13
  br i1 %450, label %451, label %457

451:                                              ; preds = %446
  %452 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %453 = load i32, i32* @NORMAL_EXEC, align 4
  %454 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %452, i32 %453, i32 1, i32 14)
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 1
  store i32 14, i32* %456, align 4
  br label %481

457:                                              ; preds = %446
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 4
  %461 = icmp eq i32 %460, 14
  br i1 %461, label %462, label %468

462:                                              ; preds = %457
  %463 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %464 = load i32, i32* @NORMAL_EXEC, align 4
  %465 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %463, i32 %464, i32 1, i32 15)
  %466 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 1
  store i32 15, i32* %467, align 4
  br label %480

468:                                              ; preds = %457
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = icmp eq i32 %471, 15
  br i1 %472, label %473, label %479

473:                                              ; preds = %468
  %474 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %475 = load i32, i32* @NORMAL_EXEC, align 4
  %476 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %474, i32 %475, i32 1, i32 16)
  %477 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 1
  store i32 16, i32* %478, align 4
  br label %479

479:                                              ; preds = %473, %468
  br label %480

480:                                              ; preds = %479, %462
  br label %481

481:                                              ; preds = %480, %451
  br label %482

482:                                              ; preds = %481, %440
  br label %483

483:                                              ; preds = %482, %429
  br label %484

484:                                              ; preds = %483, %418
  br label %561

485:                                              ; preds = %410
  %486 = load i32, i32* %10, align 4
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %488, label %560

488:                                              ; preds = %485
  %489 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = icmp eq i32 %491, 8
  br i1 %492, label %493, label %499

493:                                              ; preds = %488
  %494 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %495 = load i32, i32* @NORMAL_EXEC, align 4
  %496 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %494, i32 %495, i32 1, i32 7)
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 1
  store i32 7, i32* %498, align 4
  br label %559

499:                                              ; preds = %488
  %500 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 4
  %503 = icmp eq i32 %502, 7
  br i1 %503, label %504, label %510

504:                                              ; preds = %499
  %505 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %506 = load i32, i32* @NORMAL_EXEC, align 4
  %507 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %505, i32 %506, i32 1, i32 6)
  %508 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %509 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %508, i32 0, i32 1
  store i32 6, i32* %509, align 4
  br label %558

510:                                              ; preds = %499
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 4
  %514 = icmp eq i32 %513, 6
  br i1 %514, label %515, label %521

515:                                              ; preds = %510
  %516 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %517 = load i32, i32* @NORMAL_EXEC, align 4
  %518 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %516, i32 %517, i32 1, i32 5)
  %519 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 1
  store i32 5, i32* %520, align 4
  br label %557

521:                                              ; preds = %510
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 4
  %525 = icmp eq i32 %524, 16
  br i1 %525, label %526, label %532

526:                                              ; preds = %521
  %527 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %528 = load i32, i32* @NORMAL_EXEC, align 4
  %529 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %527, i32 %528, i32 1, i32 15)
  %530 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %531 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %530, i32 0, i32 1
  store i32 15, i32* %531, align 4
  br label %556

532:                                              ; preds = %521
  %533 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 4
  %536 = icmp eq i32 %535, 15
  br i1 %536, label %537, label %543

537:                                              ; preds = %532
  %538 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %539 = load i32, i32* @NORMAL_EXEC, align 4
  %540 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %538, i32 %539, i32 1, i32 14)
  %541 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %542 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %541, i32 0, i32 1
  store i32 14, i32* %542, align 4
  br label %555

543:                                              ; preds = %532
  %544 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 4
  %547 = icmp eq i32 %546, 14
  br i1 %547, label %548, label %554

548:                                              ; preds = %543
  %549 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %550 = load i32, i32* @NORMAL_EXEC, align 4
  %551 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %549, i32 %550, i32 1, i32 13)
  %552 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 1
  store i32 13, i32* %553, align 4
  br label %554

554:                                              ; preds = %548, %543
  br label %555

555:                                              ; preds = %554, %537
  br label %556

556:                                              ; preds = %555, %526
  br label %557

557:                                              ; preds = %556, %515
  br label %558

558:                                              ; preds = %557, %504
  br label %559

559:                                              ; preds = %558, %493
  br label %560

560:                                              ; preds = %559, %485
  br label %561

561:                                              ; preds = %560, %484
  br label %832

562:                                              ; preds = %301
  %563 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %564 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %565, 5
  br i1 %566, label %567, label %573

567:                                              ; preds = %562
  %568 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %569 = load i32, i32* @NORMAL_EXEC, align 4
  %570 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %568, i32 %569, i32 1, i32 71)
  %571 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %572 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %571, i32 0, i32 1
  store i32 71, i32* %572, align 4
  br label %609

573:                                              ; preds = %562
  %574 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %575 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %574, i32 0, i32 2
  %576 = load i32, i32* %575, align 4
  %577 = icmp eq i32 %576, 6
  br i1 %577, label %578, label %584

578:                                              ; preds = %573
  %579 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %580 = load i32, i32* @NORMAL_EXEC, align 4
  %581 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %579, i32 %580, i32 1, i32 2)
  %582 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %583 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %582, i32 0, i32 1
  store i32 2, i32* %583, align 4
  br label %608

584:                                              ; preds = %573
  %585 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 2
  %587 = load i32, i32* %586, align 4
  %588 = icmp eq i32 %587, 7
  br i1 %588, label %589, label %595

589:                                              ; preds = %584
  %590 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %591 = load i32, i32* @NORMAL_EXEC, align 4
  %592 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %590, i32 %591, i32 1, i32 3)
  %593 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %594 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %593, i32 0, i32 1
  store i32 3, i32* %594, align 4
  br label %607

595:                                              ; preds = %584
  %596 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %597 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 4
  %599 = icmp eq i32 %598, 8
  br i1 %599, label %600, label %606

600:                                              ; preds = %595
  %601 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %602 = load i32, i32* @NORMAL_EXEC, align 4
  %603 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %601, i32 %602, i32 1, i32 4)
  %604 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i32 0, i32 1
  store i32 4, i32* %605, align 4
  br label %606

606:                                              ; preds = %600, %595
  br label %607

607:                                              ; preds = %606, %589
  br label %608

608:                                              ; preds = %607, %578
  br label %609

609:                                              ; preds = %608, %567
  %610 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 4
  %613 = icmp eq i32 %612, 13
  br i1 %613, label %614, label %620

614:                                              ; preds = %609
  %615 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %616 = load i32, i32* @NORMAL_EXEC, align 4
  %617 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %615, i32 %616, i32 1, i32 9)
  %618 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %619 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %618, i32 0, i32 1
  store i32 9, i32* %619, align 4
  br label %656

620:                                              ; preds = %609
  %621 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %622 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %621, i32 0, i32 2
  %623 = load i32, i32* %622, align 4
  %624 = icmp eq i32 %623, 14
  br i1 %624, label %625, label %631

625:                                              ; preds = %620
  %626 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %627 = load i32, i32* @NORMAL_EXEC, align 4
  %628 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %626, i32 %627, i32 1, i32 10)
  %629 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %630 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %629, i32 0, i32 1
  store i32 10, i32* %630, align 4
  br label %655

631:                                              ; preds = %620
  %632 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 4
  %635 = icmp eq i32 %634, 15
  br i1 %635, label %636, label %642

636:                                              ; preds = %631
  %637 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %638 = load i32, i32* @NORMAL_EXEC, align 4
  %639 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %637, i32 %638, i32 1, i32 11)
  %640 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %641 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %640, i32 0, i32 1
  store i32 11, i32* %641, align 4
  br label %654

642:                                              ; preds = %631
  %643 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %643, i32 0, i32 2
  %645 = load i32, i32* %644, align 4
  %646 = icmp eq i32 %645, 16
  br i1 %646, label %647, label %653

647:                                              ; preds = %642
  %648 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %649 = load i32, i32* @NORMAL_EXEC, align 4
  %650 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %648, i32 %649, i32 1, i32 12)
  %651 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %652 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %651, i32 0, i32 1
  store i32 12, i32* %652, align 4
  br label %653

653:                                              ; preds = %647, %642
  br label %654

654:                                              ; preds = %653, %636
  br label %655

655:                                              ; preds = %654, %625
  br label %656

656:                                              ; preds = %655, %614
  %657 = load i32, i32* %10, align 4
  %658 = icmp eq i32 %657, -1
  br i1 %658, label %659, label %743

659:                                              ; preds = %656
  %660 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %661 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %660, i32 0, i32 2
  %662 = load i32, i32* %661, align 4
  %663 = icmp eq i32 %662, 71
  br i1 %663, label %664, label %670

664:                                              ; preds = %659
  %665 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %666 = load i32, i32* @NORMAL_EXEC, align 4
  %667 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %665, i32 %666, i32 1, i32 1)
  %668 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %669 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %668, i32 0, i32 1
  store i32 1, i32* %669, align 4
  br label %742

670:                                              ; preds = %659
  %671 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %672 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %671, i32 0, i32 2
  %673 = load i32, i32* %672, align 4
  %674 = icmp eq i32 %673, 1
  br i1 %674, label %675, label %681

675:                                              ; preds = %670
  %676 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %677 = load i32, i32* @NORMAL_EXEC, align 4
  %678 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %676, i32 %677, i32 1, i32 2)
  %679 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %680 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %679, i32 0, i32 1
  store i32 2, i32* %680, align 4
  br label %741

681:                                              ; preds = %670
  %682 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %683 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %682, i32 0, i32 2
  %684 = load i32, i32* %683, align 4
  %685 = icmp eq i32 %684, 2
  br i1 %685, label %686, label %692

686:                                              ; preds = %681
  %687 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %688 = load i32, i32* @NORMAL_EXEC, align 4
  %689 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %687, i32 %688, i32 1, i32 3)
  %690 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %691 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %690, i32 0, i32 1
  store i32 3, i32* %691, align 4
  br label %740

692:                                              ; preds = %681
  %693 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %694 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %693, i32 0, i32 2
  %695 = load i32, i32* %694, align 4
  %696 = icmp eq i32 %695, 3
  br i1 %696, label %697, label %703

697:                                              ; preds = %692
  %698 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %699 = load i32, i32* @NORMAL_EXEC, align 4
  %700 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %698, i32 %699, i32 1, i32 4)
  %701 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %702 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %701, i32 0, i32 1
  store i32 4, i32* %702, align 4
  br label %739

703:                                              ; preds = %692
  %704 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %704, i32 0, i32 2
  %706 = load i32, i32* %705, align 4
  %707 = icmp eq i32 %706, 9
  br i1 %707, label %708, label %714

708:                                              ; preds = %703
  %709 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %710 = load i32, i32* @NORMAL_EXEC, align 4
  %711 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %709, i32 %710, i32 1, i32 10)
  %712 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %713 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %712, i32 0, i32 1
  store i32 10, i32* %713, align 4
  br label %738

714:                                              ; preds = %703
  %715 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %716 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %715, i32 0, i32 2
  %717 = load i32, i32* %716, align 4
  %718 = icmp eq i32 %717, 10
  br i1 %718, label %719, label %725

719:                                              ; preds = %714
  %720 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %721 = load i32, i32* @NORMAL_EXEC, align 4
  %722 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %720, i32 %721, i32 1, i32 11)
  %723 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %724 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %723, i32 0, i32 1
  store i32 11, i32* %724, align 4
  br label %737

725:                                              ; preds = %714
  %726 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %726, i32 0, i32 2
  %728 = load i32, i32* %727, align 4
  %729 = icmp eq i32 %728, 11
  br i1 %729, label %730, label %736

730:                                              ; preds = %725
  %731 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %732 = load i32, i32* @NORMAL_EXEC, align 4
  %733 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %731, i32 %732, i32 1, i32 12)
  %734 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %735 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %734, i32 0, i32 1
  store i32 12, i32* %735, align 4
  br label %736

736:                                              ; preds = %730, %725
  br label %737

737:                                              ; preds = %736, %719
  br label %738

738:                                              ; preds = %737, %708
  br label %739

739:                                              ; preds = %738, %697
  br label %740

740:                                              ; preds = %739, %686
  br label %741

741:                                              ; preds = %740, %675
  br label %742

742:                                              ; preds = %741, %664
  br label %831

743:                                              ; preds = %656
  %744 = load i32, i32* %10, align 4
  %745 = icmp eq i32 %744, 1
  br i1 %745, label %746, label %830

746:                                              ; preds = %743
  %747 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %748 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %747, i32 0, i32 2
  %749 = load i32, i32* %748, align 4
  %750 = icmp eq i32 %749, 4
  br i1 %750, label %751, label %757

751:                                              ; preds = %746
  %752 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %753 = load i32, i32* @NORMAL_EXEC, align 4
  %754 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %752, i32 %753, i32 1, i32 3)
  %755 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %756 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %755, i32 0, i32 1
  store i32 3, i32* %756, align 4
  br label %829

757:                                              ; preds = %746
  %758 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %759 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %758, i32 0, i32 2
  %760 = load i32, i32* %759, align 4
  %761 = icmp eq i32 %760, 3
  br i1 %761, label %762, label %768

762:                                              ; preds = %757
  %763 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %764 = load i32, i32* @NORMAL_EXEC, align 4
  %765 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %763, i32 %764, i32 1, i32 2)
  %766 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %767 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %766, i32 0, i32 1
  store i32 2, i32* %767, align 4
  br label %828

768:                                              ; preds = %757
  %769 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %770 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %769, i32 0, i32 2
  %771 = load i32, i32* %770, align 4
  %772 = icmp eq i32 %771, 2
  br i1 %772, label %773, label %779

773:                                              ; preds = %768
  %774 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %775 = load i32, i32* @NORMAL_EXEC, align 4
  %776 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %774, i32 %775, i32 1, i32 1)
  %777 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %778 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %777, i32 0, i32 1
  store i32 1, i32* %778, align 4
  br label %827

779:                                              ; preds = %768
  %780 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %781 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %780, i32 0, i32 2
  %782 = load i32, i32* %781, align 4
  %783 = icmp eq i32 %782, 1
  br i1 %783, label %784, label %790

784:                                              ; preds = %779
  %785 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %786 = load i32, i32* @NORMAL_EXEC, align 4
  %787 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %785, i32 %786, i32 1, i32 71)
  %788 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %789 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %788, i32 0, i32 1
  store i32 71, i32* %789, align 4
  br label %826

790:                                              ; preds = %779
  %791 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %792 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %791, i32 0, i32 2
  %793 = load i32, i32* %792, align 4
  %794 = icmp eq i32 %793, 12
  br i1 %794, label %795, label %801

795:                                              ; preds = %790
  %796 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %797 = load i32, i32* @NORMAL_EXEC, align 4
  %798 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %796, i32 %797, i32 1, i32 11)
  %799 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %800 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %799, i32 0, i32 1
  store i32 11, i32* %800, align 4
  br label %825

801:                                              ; preds = %790
  %802 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %803 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %802, i32 0, i32 2
  %804 = load i32, i32* %803, align 4
  %805 = icmp eq i32 %804, 11
  br i1 %805, label %806, label %812

806:                                              ; preds = %801
  %807 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %808 = load i32, i32* @NORMAL_EXEC, align 4
  %809 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %807, i32 %808, i32 1, i32 10)
  %810 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %811 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %810, i32 0, i32 1
  store i32 10, i32* %811, align 4
  br label %824

812:                                              ; preds = %801
  %813 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %814 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %813, i32 0, i32 2
  %815 = load i32, i32* %814, align 4
  %816 = icmp eq i32 %815, 10
  br i1 %816, label %817, label %823

817:                                              ; preds = %812
  %818 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %819 = load i32, i32* @NORMAL_EXEC, align 4
  %820 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %818, i32 %819, i32 1, i32 9)
  %821 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %822 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %821, i32 0, i32 1
  store i32 9, i32* %822, align 4
  br label %823

823:                                              ; preds = %817, %812
  br label %824

824:                                              ; preds = %823, %806
  br label %825

825:                                              ; preds = %824, %795
  br label %826

826:                                              ; preds = %825, %784
  br label %827

827:                                              ; preds = %826, %773
  br label %828

828:                                              ; preds = %827, %762
  br label %829

829:                                              ; preds = %828, %751
  br label %830

830:                                              ; preds = %829, %743
  br label %831

831:                                              ; preds = %830, %742
  br label %832

832:                                              ; preds = %831, %561
  br label %1833

833:                                              ; preds = %293
  %834 = load i32, i32* %8, align 4
  %835 = icmp eq i32 %834, 2
  br i1 %835, label %836, label %1332

836:                                              ; preds = %833
  %837 = load i32, i32* %7, align 4
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %1085

839:                                              ; preds = %836
  %840 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %841 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %840, i32 0, i32 2
  %842 = load i32, i32* %841, align 4
  %843 = icmp eq i32 %842, 1
  br i1 %843, label %844, label %850

844:                                              ; preds = %839
  %845 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %846 = load i32, i32* @NORMAL_EXEC, align 4
  %847 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %845, i32 %846, i32 1, i32 6)
  %848 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %849 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %848, i32 0, i32 1
  store i32 6, i32* %849, align 4
  br label %886

850:                                              ; preds = %839
  %851 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %852 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %851, i32 0, i32 2
  %853 = load i32, i32* %852, align 4
  %854 = icmp eq i32 %853, 2
  br i1 %854, label %855, label %861

855:                                              ; preds = %850
  %856 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %857 = load i32, i32* @NORMAL_EXEC, align 4
  %858 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %856, i32 %857, i32 1, i32 6)
  %859 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %860 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %859, i32 0, i32 1
  store i32 6, i32* %860, align 4
  br label %885

861:                                              ; preds = %850
  %862 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %863 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %862, i32 0, i32 2
  %864 = load i32, i32* %863, align 4
  %865 = icmp eq i32 %864, 3
  br i1 %865, label %866, label %872

866:                                              ; preds = %861
  %867 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %868 = load i32, i32* @NORMAL_EXEC, align 4
  %869 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %867, i32 %868, i32 1, i32 7)
  %870 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %871 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %870, i32 0, i32 1
  store i32 7, i32* %871, align 4
  br label %884

872:                                              ; preds = %861
  %873 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %874 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %873, i32 0, i32 2
  %875 = load i32, i32* %874, align 4
  %876 = icmp eq i32 %875, 4
  br i1 %876, label %877, label %883

877:                                              ; preds = %872
  %878 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %879 = load i32, i32* @NORMAL_EXEC, align 4
  %880 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %878, i32 %879, i32 1, i32 8)
  %881 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %882 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %881, i32 0, i32 1
  store i32 8, i32* %882, align 4
  br label %883

883:                                              ; preds = %877, %872
  br label %884

884:                                              ; preds = %883, %866
  br label %885

885:                                              ; preds = %884, %855
  br label %886

886:                                              ; preds = %885, %844
  %887 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %888 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %887, i32 0, i32 2
  %889 = load i32, i32* %888, align 4
  %890 = icmp eq i32 %889, 9
  br i1 %890, label %891, label %897

891:                                              ; preds = %886
  %892 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %893 = load i32, i32* @NORMAL_EXEC, align 4
  %894 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %892, i32 %893, i32 1, i32 14)
  %895 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %896 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %895, i32 0, i32 1
  store i32 14, i32* %896, align 4
  br label %933

897:                                              ; preds = %886
  %898 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %899 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %898, i32 0, i32 2
  %900 = load i32, i32* %899, align 4
  %901 = icmp eq i32 %900, 10
  br i1 %901, label %902, label %908

902:                                              ; preds = %897
  %903 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %904 = load i32, i32* @NORMAL_EXEC, align 4
  %905 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %903, i32 %904, i32 1, i32 14)
  %906 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %907 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %906, i32 0, i32 1
  store i32 14, i32* %907, align 4
  br label %932

908:                                              ; preds = %897
  %909 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %910 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %909, i32 0, i32 2
  %911 = load i32, i32* %910, align 4
  %912 = icmp eq i32 %911, 11
  br i1 %912, label %913, label %919

913:                                              ; preds = %908
  %914 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %915 = load i32, i32* @NORMAL_EXEC, align 4
  %916 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %914, i32 %915, i32 1, i32 15)
  %917 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %918 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %917, i32 0, i32 1
  store i32 15, i32* %918, align 4
  br label %931

919:                                              ; preds = %908
  %920 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %921 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %920, i32 0, i32 2
  %922 = load i32, i32* %921, align 4
  %923 = icmp eq i32 %922, 12
  br i1 %923, label %924, label %930

924:                                              ; preds = %919
  %925 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %926 = load i32, i32* @NORMAL_EXEC, align 4
  %927 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %925, i32 %926, i32 1, i32 16)
  %928 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %929 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %928, i32 0, i32 1
  store i32 16, i32* %929, align 4
  br label %930

930:                                              ; preds = %924, %919
  br label %931

931:                                              ; preds = %930, %913
  br label %932

932:                                              ; preds = %931, %902
  br label %933

933:                                              ; preds = %932, %891
  %934 = load i32, i32* %10, align 4
  %935 = icmp eq i32 %934, -1
  br i1 %935, label %936, label %1008

936:                                              ; preds = %933
  %937 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %938 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %937, i32 0, i32 2
  %939 = load i32, i32* %938, align 4
  %940 = icmp eq i32 %939, 5
  br i1 %940, label %941, label %947

941:                                              ; preds = %936
  %942 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %943 = load i32, i32* @NORMAL_EXEC, align 4
  %944 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %942, i32 %943, i32 1, i32 6)
  %945 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %946 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %945, i32 0, i32 1
  store i32 6, i32* %946, align 4
  br label %1007

947:                                              ; preds = %936
  %948 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %949 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %948, i32 0, i32 2
  %950 = load i32, i32* %949, align 4
  %951 = icmp eq i32 %950, 6
  br i1 %951, label %952, label %958

952:                                              ; preds = %947
  %953 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %954 = load i32, i32* @NORMAL_EXEC, align 4
  %955 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %953, i32 %954, i32 1, i32 7)
  %956 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %957 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %956, i32 0, i32 1
  store i32 7, i32* %957, align 4
  br label %1006

958:                                              ; preds = %947
  %959 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %960 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %959, i32 0, i32 2
  %961 = load i32, i32* %960, align 4
  %962 = icmp eq i32 %961, 7
  br i1 %962, label %963, label %969

963:                                              ; preds = %958
  %964 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %965 = load i32, i32* @NORMAL_EXEC, align 4
  %966 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %964, i32 %965, i32 1, i32 8)
  %967 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %968 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %967, i32 0, i32 1
  store i32 8, i32* %968, align 4
  br label %1005

969:                                              ; preds = %958
  %970 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %971 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %970, i32 0, i32 2
  %972 = load i32, i32* %971, align 4
  %973 = icmp eq i32 %972, 13
  br i1 %973, label %974, label %980

974:                                              ; preds = %969
  %975 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %976 = load i32, i32* @NORMAL_EXEC, align 4
  %977 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %975, i32 %976, i32 1, i32 14)
  %978 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %979 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %978, i32 0, i32 1
  store i32 14, i32* %979, align 4
  br label %1004

980:                                              ; preds = %969
  %981 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %982 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %981, i32 0, i32 2
  %983 = load i32, i32* %982, align 4
  %984 = icmp eq i32 %983, 14
  br i1 %984, label %985, label %991

985:                                              ; preds = %980
  %986 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %987 = load i32, i32* @NORMAL_EXEC, align 4
  %988 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %986, i32 %987, i32 1, i32 15)
  %989 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %990 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %989, i32 0, i32 1
  store i32 15, i32* %990, align 4
  br label %1003

991:                                              ; preds = %980
  %992 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %993 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %992, i32 0, i32 2
  %994 = load i32, i32* %993, align 4
  %995 = icmp eq i32 %994, 15
  br i1 %995, label %996, label %1002

996:                                              ; preds = %991
  %997 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %998 = load i32, i32* @NORMAL_EXEC, align 4
  %999 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %997, i32 %998, i32 1, i32 16)
  %1000 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1001 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1000, i32 0, i32 1
  store i32 16, i32* %1001, align 4
  br label %1002

1002:                                             ; preds = %996, %991
  br label %1003

1003:                                             ; preds = %1002, %985
  br label %1004

1004:                                             ; preds = %1003, %974
  br label %1005

1005:                                             ; preds = %1004, %963
  br label %1006

1006:                                             ; preds = %1005, %952
  br label %1007

1007:                                             ; preds = %1006, %941
  br label %1084

1008:                                             ; preds = %933
  %1009 = load i32, i32* %10, align 4
  %1010 = icmp eq i32 %1009, 1
  br i1 %1010, label %1011, label %1083

1011:                                             ; preds = %1008
  %1012 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1013 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1012, i32 0, i32 2
  %1014 = load i32, i32* %1013, align 4
  %1015 = icmp eq i32 %1014, 8
  br i1 %1015, label %1016, label %1022

1016:                                             ; preds = %1011
  %1017 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1018 = load i32, i32* @NORMAL_EXEC, align 4
  %1019 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1017, i32 %1018, i32 1, i32 7)
  %1020 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1021 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1020, i32 0, i32 1
  store i32 7, i32* %1021, align 4
  br label %1082

1022:                                             ; preds = %1011
  %1023 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1024 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1023, i32 0, i32 2
  %1025 = load i32, i32* %1024, align 4
  %1026 = icmp eq i32 %1025, 7
  br i1 %1026, label %1027, label %1033

1027:                                             ; preds = %1022
  %1028 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1029 = load i32, i32* @NORMAL_EXEC, align 4
  %1030 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1028, i32 %1029, i32 1, i32 6)
  %1031 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1032 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1031, i32 0, i32 1
  store i32 6, i32* %1032, align 4
  br label %1081

1033:                                             ; preds = %1022
  %1034 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1035 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1034, i32 0, i32 2
  %1036 = load i32, i32* %1035, align 4
  %1037 = icmp eq i32 %1036, 6
  br i1 %1037, label %1038, label %1044

1038:                                             ; preds = %1033
  %1039 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1040 = load i32, i32* @NORMAL_EXEC, align 4
  %1041 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1039, i32 %1040, i32 1, i32 6)
  %1042 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1043 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1042, i32 0, i32 1
  store i32 6, i32* %1043, align 4
  br label %1080

1044:                                             ; preds = %1033
  %1045 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1046 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1045, i32 0, i32 2
  %1047 = load i32, i32* %1046, align 4
  %1048 = icmp eq i32 %1047, 16
  br i1 %1048, label %1049, label %1055

1049:                                             ; preds = %1044
  %1050 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1051 = load i32, i32* @NORMAL_EXEC, align 4
  %1052 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1050, i32 %1051, i32 1, i32 15)
  %1053 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1054 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1053, i32 0, i32 1
  store i32 15, i32* %1054, align 4
  br label %1079

1055:                                             ; preds = %1044
  %1056 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1057 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1056, i32 0, i32 2
  %1058 = load i32, i32* %1057, align 4
  %1059 = icmp eq i32 %1058, 15
  br i1 %1059, label %1060, label %1066

1060:                                             ; preds = %1055
  %1061 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1062 = load i32, i32* @NORMAL_EXEC, align 4
  %1063 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1061, i32 %1062, i32 1, i32 14)
  %1064 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1065 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1064, i32 0, i32 1
  store i32 14, i32* %1065, align 4
  br label %1078

1066:                                             ; preds = %1055
  %1067 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1068 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1067, i32 0, i32 2
  %1069 = load i32, i32* %1068, align 4
  %1070 = icmp eq i32 %1069, 14
  br i1 %1070, label %1071, label %1077

1071:                                             ; preds = %1066
  %1072 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1073 = load i32, i32* @NORMAL_EXEC, align 4
  %1074 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1072, i32 %1073, i32 1, i32 14)
  %1075 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1076 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1075, i32 0, i32 1
  store i32 14, i32* %1076, align 4
  br label %1077

1077:                                             ; preds = %1071, %1066
  br label %1078

1078:                                             ; preds = %1077, %1060
  br label %1079

1079:                                             ; preds = %1078, %1049
  br label %1080

1080:                                             ; preds = %1079, %1038
  br label %1081

1081:                                             ; preds = %1080, %1027
  br label %1082

1082:                                             ; preds = %1081, %1016
  br label %1083

1083:                                             ; preds = %1082, %1008
  br label %1084

1084:                                             ; preds = %1083, %1007
  br label %1331

1085:                                             ; preds = %836
  %1086 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1087 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1086, i32 0, i32 2
  %1088 = load i32, i32* %1087, align 4
  %1089 = icmp eq i32 %1088, 5
  br i1 %1089, label %1090, label %1096

1090:                                             ; preds = %1085
  %1091 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1092 = load i32, i32* @NORMAL_EXEC, align 4
  %1093 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1091, i32 %1092, i32 1, i32 2)
  %1094 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1095 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1094, i32 0, i32 1
  store i32 2, i32* %1095, align 4
  br label %1132

1096:                                             ; preds = %1085
  %1097 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1098 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1097, i32 0, i32 2
  %1099 = load i32, i32* %1098, align 4
  %1100 = icmp eq i32 %1099, 6
  br i1 %1100, label %1101, label %1107

1101:                                             ; preds = %1096
  %1102 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1103 = load i32, i32* @NORMAL_EXEC, align 4
  %1104 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1102, i32 %1103, i32 1, i32 2)
  %1105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1105, i32 0, i32 1
  store i32 2, i32* %1106, align 4
  br label %1131

1107:                                             ; preds = %1096
  %1108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1108, i32 0, i32 2
  %1110 = load i32, i32* %1109, align 4
  %1111 = icmp eq i32 %1110, 7
  br i1 %1111, label %1112, label %1118

1112:                                             ; preds = %1107
  %1113 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1114 = load i32, i32* @NORMAL_EXEC, align 4
  %1115 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1113, i32 %1114, i32 1, i32 3)
  %1116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1116, i32 0, i32 1
  store i32 3, i32* %1117, align 4
  br label %1130

1118:                                             ; preds = %1107
  %1119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1119, i32 0, i32 2
  %1121 = load i32, i32* %1120, align 4
  %1122 = icmp eq i32 %1121, 8
  br i1 %1122, label %1123, label %1129

1123:                                             ; preds = %1118
  %1124 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1125 = load i32, i32* @NORMAL_EXEC, align 4
  %1126 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1124, i32 %1125, i32 1, i32 4)
  %1127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1127, i32 0, i32 1
  store i32 4, i32* %1128, align 4
  br label %1129

1129:                                             ; preds = %1123, %1118
  br label %1130

1130:                                             ; preds = %1129, %1112
  br label %1131

1131:                                             ; preds = %1130, %1101
  br label %1132

1132:                                             ; preds = %1131, %1090
  %1133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1133, i32 0, i32 2
  %1135 = load i32, i32* %1134, align 4
  %1136 = icmp eq i32 %1135, 13
  br i1 %1136, label %1137, label %1143

1137:                                             ; preds = %1132
  %1138 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1139 = load i32, i32* @NORMAL_EXEC, align 4
  %1140 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1138, i32 %1139, i32 1, i32 10)
  %1141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1141, i32 0, i32 1
  store i32 10, i32* %1142, align 4
  br label %1179

1143:                                             ; preds = %1132
  %1144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1144, i32 0, i32 2
  %1146 = load i32, i32* %1145, align 4
  %1147 = icmp eq i32 %1146, 14
  br i1 %1147, label %1148, label %1154

1148:                                             ; preds = %1143
  %1149 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1150 = load i32, i32* @NORMAL_EXEC, align 4
  %1151 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1149, i32 %1150, i32 1, i32 10)
  %1152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1152, i32 0, i32 1
  store i32 10, i32* %1153, align 4
  br label %1178

1154:                                             ; preds = %1143
  %1155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1155, i32 0, i32 2
  %1157 = load i32, i32* %1156, align 4
  %1158 = icmp eq i32 %1157, 15
  br i1 %1158, label %1159, label %1165

1159:                                             ; preds = %1154
  %1160 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1161 = load i32, i32* @NORMAL_EXEC, align 4
  %1162 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1160, i32 %1161, i32 1, i32 11)
  %1163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1163, i32 0, i32 1
  store i32 11, i32* %1164, align 4
  br label %1177

1165:                                             ; preds = %1154
  %1166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1166, i32 0, i32 2
  %1168 = load i32, i32* %1167, align 4
  %1169 = icmp eq i32 %1168, 16
  br i1 %1169, label %1170, label %1176

1170:                                             ; preds = %1165
  %1171 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1172 = load i32, i32* @NORMAL_EXEC, align 4
  %1173 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1171, i32 %1172, i32 1, i32 12)
  %1174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1174, i32 0, i32 1
  store i32 12, i32* %1175, align 4
  br label %1176

1176:                                             ; preds = %1170, %1165
  br label %1177

1177:                                             ; preds = %1176, %1159
  br label %1178

1178:                                             ; preds = %1177, %1148
  br label %1179

1179:                                             ; preds = %1178, %1137
  %1180 = load i32, i32* %10, align 4
  %1181 = icmp eq i32 %1180, -1
  br i1 %1181, label %1182, label %1254

1182:                                             ; preds = %1179
  %1183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1183, i32 0, i32 2
  %1185 = load i32, i32* %1184, align 4
  %1186 = icmp eq i32 %1185, 1
  br i1 %1186, label %1187, label %1193

1187:                                             ; preds = %1182
  %1188 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1189 = load i32, i32* @NORMAL_EXEC, align 4
  %1190 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1188, i32 %1189, i32 1, i32 2)
  %1191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1191, i32 0, i32 1
  store i32 2, i32* %1192, align 4
  br label %1253

1193:                                             ; preds = %1182
  %1194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1194, i32 0, i32 2
  %1196 = load i32, i32* %1195, align 4
  %1197 = icmp eq i32 %1196, 2
  br i1 %1197, label %1198, label %1204

1198:                                             ; preds = %1193
  %1199 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1200 = load i32, i32* @NORMAL_EXEC, align 4
  %1201 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1199, i32 %1200, i32 1, i32 3)
  %1202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1202, i32 0, i32 1
  store i32 3, i32* %1203, align 4
  br label %1252

1204:                                             ; preds = %1193
  %1205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1205, i32 0, i32 2
  %1207 = load i32, i32* %1206, align 4
  %1208 = icmp eq i32 %1207, 3
  br i1 %1208, label %1209, label %1215

1209:                                             ; preds = %1204
  %1210 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1211 = load i32, i32* @NORMAL_EXEC, align 4
  %1212 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1210, i32 %1211, i32 1, i32 4)
  %1213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1213, i32 0, i32 1
  store i32 4, i32* %1214, align 4
  br label %1251

1215:                                             ; preds = %1204
  %1216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1216, i32 0, i32 2
  %1218 = load i32, i32* %1217, align 4
  %1219 = icmp eq i32 %1218, 9
  br i1 %1219, label %1220, label %1226

1220:                                             ; preds = %1215
  %1221 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1222 = load i32, i32* @NORMAL_EXEC, align 4
  %1223 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1221, i32 %1222, i32 1, i32 10)
  %1224 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1224, i32 0, i32 1
  store i32 10, i32* %1225, align 4
  br label %1250

1226:                                             ; preds = %1215
  %1227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1227, i32 0, i32 2
  %1229 = load i32, i32* %1228, align 4
  %1230 = icmp eq i32 %1229, 10
  br i1 %1230, label %1231, label %1237

1231:                                             ; preds = %1226
  %1232 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1233 = load i32, i32* @NORMAL_EXEC, align 4
  %1234 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1232, i32 %1233, i32 1, i32 11)
  %1235 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1235, i32 0, i32 1
  store i32 11, i32* %1236, align 4
  br label %1249

1237:                                             ; preds = %1226
  %1238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1238, i32 0, i32 2
  %1240 = load i32, i32* %1239, align 4
  %1241 = icmp eq i32 %1240, 11
  br i1 %1241, label %1242, label %1248

1242:                                             ; preds = %1237
  %1243 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1244 = load i32, i32* @NORMAL_EXEC, align 4
  %1245 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1243, i32 %1244, i32 1, i32 12)
  %1246 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1246, i32 0, i32 1
  store i32 12, i32* %1247, align 4
  br label %1248

1248:                                             ; preds = %1242, %1237
  br label %1249

1249:                                             ; preds = %1248, %1231
  br label %1250

1250:                                             ; preds = %1249, %1220
  br label %1251

1251:                                             ; preds = %1250, %1209
  br label %1252

1252:                                             ; preds = %1251, %1198
  br label %1253

1253:                                             ; preds = %1252, %1187
  br label %1330

1254:                                             ; preds = %1179
  %1255 = load i32, i32* %10, align 4
  %1256 = icmp eq i32 %1255, 1
  br i1 %1256, label %1257, label %1329

1257:                                             ; preds = %1254
  %1258 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1258, i32 0, i32 2
  %1260 = load i32, i32* %1259, align 4
  %1261 = icmp eq i32 %1260, 4
  br i1 %1261, label %1262, label %1268

1262:                                             ; preds = %1257
  %1263 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1264 = load i32, i32* @NORMAL_EXEC, align 4
  %1265 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1263, i32 %1264, i32 1, i32 3)
  %1266 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1266, i32 0, i32 1
  store i32 3, i32* %1267, align 4
  br label %1328

1268:                                             ; preds = %1257
  %1269 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1269, i32 0, i32 2
  %1271 = load i32, i32* %1270, align 4
  %1272 = icmp eq i32 %1271, 3
  br i1 %1272, label %1273, label %1279

1273:                                             ; preds = %1268
  %1274 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1275 = load i32, i32* @NORMAL_EXEC, align 4
  %1276 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1274, i32 %1275, i32 1, i32 2)
  %1277 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1277, i32 0, i32 1
  store i32 2, i32* %1278, align 4
  br label %1327

1279:                                             ; preds = %1268
  %1280 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1280, i32 0, i32 2
  %1282 = load i32, i32* %1281, align 4
  %1283 = icmp eq i32 %1282, 2
  br i1 %1283, label %1284, label %1290

1284:                                             ; preds = %1279
  %1285 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1286 = load i32, i32* @NORMAL_EXEC, align 4
  %1287 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1285, i32 %1286, i32 1, i32 2)
  %1288 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1288, i32 0, i32 1
  store i32 2, i32* %1289, align 4
  br label %1326

1290:                                             ; preds = %1279
  %1291 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1291, i32 0, i32 2
  %1293 = load i32, i32* %1292, align 4
  %1294 = icmp eq i32 %1293, 12
  br i1 %1294, label %1295, label %1301

1295:                                             ; preds = %1290
  %1296 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1297 = load i32, i32* @NORMAL_EXEC, align 4
  %1298 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1296, i32 %1297, i32 1, i32 11)
  %1299 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1299, i32 0, i32 1
  store i32 11, i32* %1300, align 4
  br label %1325

1301:                                             ; preds = %1290
  %1302 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1302, i32 0, i32 2
  %1304 = load i32, i32* %1303, align 4
  %1305 = icmp eq i32 %1304, 11
  br i1 %1305, label %1306, label %1312

1306:                                             ; preds = %1301
  %1307 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1308 = load i32, i32* @NORMAL_EXEC, align 4
  %1309 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1307, i32 %1308, i32 1, i32 10)
  %1310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1310, i32 0, i32 1
  store i32 10, i32* %1311, align 4
  br label %1324

1312:                                             ; preds = %1301
  %1313 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1313, i32 0, i32 2
  %1315 = load i32, i32* %1314, align 4
  %1316 = icmp eq i32 %1315, 10
  br i1 %1316, label %1317, label %1323

1317:                                             ; preds = %1312
  %1318 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1319 = load i32, i32* @NORMAL_EXEC, align 4
  %1320 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1318, i32 %1319, i32 1, i32 10)
  %1321 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1321, i32 0, i32 1
  store i32 10, i32* %1322, align 4
  br label %1323

1323:                                             ; preds = %1317, %1312
  br label %1324

1324:                                             ; preds = %1323, %1306
  br label %1325

1325:                                             ; preds = %1324, %1295
  br label %1326

1326:                                             ; preds = %1325, %1284
  br label %1327

1327:                                             ; preds = %1326, %1273
  br label %1328

1328:                                             ; preds = %1327, %1262
  br label %1329

1329:                                             ; preds = %1328, %1254
  br label %1330

1330:                                             ; preds = %1329, %1253
  br label %1331

1331:                                             ; preds = %1330, %1084
  br label %1832

1332:                                             ; preds = %833
  %1333 = load i32, i32* %8, align 4
  %1334 = icmp eq i32 %1333, 3
  br i1 %1334, label %1335, label %1831

1335:                                             ; preds = %1332
  %1336 = load i32, i32* %7, align 4
  %1337 = icmp ne i32 %1336, 0
  br i1 %1337, label %1338, label %1584

1338:                                             ; preds = %1335
  %1339 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1339, i32 0, i32 2
  %1341 = load i32, i32* %1340, align 4
  %1342 = icmp eq i32 %1341, 1
  br i1 %1342, label %1343, label %1349

1343:                                             ; preds = %1338
  %1344 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1345 = load i32, i32* @NORMAL_EXEC, align 4
  %1346 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1344, i32 %1345, i32 1, i32 7)
  %1347 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1347, i32 0, i32 1
  store i32 7, i32* %1348, align 4
  br label %1385

1349:                                             ; preds = %1338
  %1350 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1350, i32 0, i32 2
  %1352 = load i32, i32* %1351, align 4
  %1353 = icmp eq i32 %1352, 2
  br i1 %1353, label %1354, label %1360

1354:                                             ; preds = %1349
  %1355 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1356 = load i32, i32* @NORMAL_EXEC, align 4
  %1357 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1355, i32 %1356, i32 1, i32 7)
  %1358 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1358, i32 0, i32 1
  store i32 7, i32* %1359, align 4
  br label %1384

1360:                                             ; preds = %1349
  %1361 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1361, i32 0, i32 2
  %1363 = load i32, i32* %1362, align 4
  %1364 = icmp eq i32 %1363, 3
  br i1 %1364, label %1365, label %1371

1365:                                             ; preds = %1360
  %1366 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1367 = load i32, i32* @NORMAL_EXEC, align 4
  %1368 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1366, i32 %1367, i32 1, i32 7)
  %1369 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1369, i32 0, i32 1
  store i32 7, i32* %1370, align 4
  br label %1383

1371:                                             ; preds = %1360
  %1372 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1372, i32 0, i32 2
  %1374 = load i32, i32* %1373, align 4
  %1375 = icmp eq i32 %1374, 4
  br i1 %1375, label %1376, label %1382

1376:                                             ; preds = %1371
  %1377 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1378 = load i32, i32* @NORMAL_EXEC, align 4
  %1379 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1377, i32 %1378, i32 1, i32 8)
  %1380 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1380, i32 0, i32 1
  store i32 8, i32* %1381, align 4
  br label %1382

1382:                                             ; preds = %1376, %1371
  br label %1383

1383:                                             ; preds = %1382, %1365
  br label %1384

1384:                                             ; preds = %1383, %1354
  br label %1385

1385:                                             ; preds = %1384, %1343
  %1386 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1386, i32 0, i32 2
  %1388 = load i32, i32* %1387, align 4
  %1389 = icmp eq i32 %1388, 9
  br i1 %1389, label %1390, label %1396

1390:                                             ; preds = %1385
  %1391 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1392 = load i32, i32* @NORMAL_EXEC, align 4
  %1393 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1391, i32 %1392, i32 1, i32 15)
  %1394 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1394, i32 0, i32 1
  store i32 15, i32* %1395, align 4
  br label %1432

1396:                                             ; preds = %1385
  %1397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1397, i32 0, i32 2
  %1399 = load i32, i32* %1398, align 4
  %1400 = icmp eq i32 %1399, 10
  br i1 %1400, label %1401, label %1407

1401:                                             ; preds = %1396
  %1402 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1403 = load i32, i32* @NORMAL_EXEC, align 4
  %1404 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1402, i32 %1403, i32 1, i32 15)
  %1405 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1405, i32 0, i32 1
  store i32 15, i32* %1406, align 4
  br label %1431

1407:                                             ; preds = %1396
  %1408 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1408, i32 0, i32 2
  %1410 = load i32, i32* %1409, align 4
  %1411 = icmp eq i32 %1410, 11
  br i1 %1411, label %1412, label %1418

1412:                                             ; preds = %1407
  %1413 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1414 = load i32, i32* @NORMAL_EXEC, align 4
  %1415 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1413, i32 %1414, i32 1, i32 15)
  %1416 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1416, i32 0, i32 1
  store i32 15, i32* %1417, align 4
  br label %1430

1418:                                             ; preds = %1407
  %1419 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1419, i32 0, i32 2
  %1421 = load i32, i32* %1420, align 4
  %1422 = icmp eq i32 %1421, 12
  br i1 %1422, label %1423, label %1429

1423:                                             ; preds = %1418
  %1424 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1425 = load i32, i32* @NORMAL_EXEC, align 4
  %1426 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1424, i32 %1425, i32 1, i32 16)
  %1427 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1427, i32 0, i32 1
  store i32 16, i32* %1428, align 4
  br label %1429

1429:                                             ; preds = %1423, %1418
  br label %1430

1430:                                             ; preds = %1429, %1412
  br label %1431

1431:                                             ; preds = %1430, %1401
  br label %1432

1432:                                             ; preds = %1431, %1390
  %1433 = load i32, i32* %10, align 4
  %1434 = icmp eq i32 %1433, -1
  br i1 %1434, label %1435, label %1507

1435:                                             ; preds = %1432
  %1436 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1436, i32 0, i32 2
  %1438 = load i32, i32* %1437, align 4
  %1439 = icmp eq i32 %1438, 5
  br i1 %1439, label %1440, label %1446

1440:                                             ; preds = %1435
  %1441 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1442 = load i32, i32* @NORMAL_EXEC, align 4
  %1443 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1441, i32 %1442, i32 1, i32 7)
  %1444 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1444, i32 0, i32 1
  store i32 7, i32* %1445, align 4
  br label %1506

1446:                                             ; preds = %1435
  %1447 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1447, i32 0, i32 2
  %1449 = load i32, i32* %1448, align 4
  %1450 = icmp eq i32 %1449, 6
  br i1 %1450, label %1451, label %1457

1451:                                             ; preds = %1446
  %1452 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1453 = load i32, i32* @NORMAL_EXEC, align 4
  %1454 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1452, i32 %1453, i32 1, i32 7)
  %1455 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1455, i32 0, i32 1
  store i32 7, i32* %1456, align 4
  br label %1505

1457:                                             ; preds = %1446
  %1458 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1458, i32 0, i32 2
  %1460 = load i32, i32* %1459, align 4
  %1461 = icmp eq i32 %1460, 7
  br i1 %1461, label %1462, label %1468

1462:                                             ; preds = %1457
  %1463 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1464 = load i32, i32* @NORMAL_EXEC, align 4
  %1465 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1463, i32 %1464, i32 1, i32 8)
  %1466 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1466, i32 0, i32 1
  store i32 8, i32* %1467, align 4
  br label %1504

1468:                                             ; preds = %1457
  %1469 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1469, i32 0, i32 2
  %1471 = load i32, i32* %1470, align 4
  %1472 = icmp eq i32 %1471, 13
  br i1 %1472, label %1473, label %1479

1473:                                             ; preds = %1468
  %1474 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1475 = load i32, i32* @NORMAL_EXEC, align 4
  %1476 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1474, i32 %1475, i32 1, i32 15)
  %1477 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1477, i32 0, i32 1
  store i32 15, i32* %1478, align 4
  br label %1503

1479:                                             ; preds = %1468
  %1480 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1480, i32 0, i32 2
  %1482 = load i32, i32* %1481, align 4
  %1483 = icmp eq i32 %1482, 14
  br i1 %1483, label %1484, label %1490

1484:                                             ; preds = %1479
  %1485 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1486 = load i32, i32* @NORMAL_EXEC, align 4
  %1487 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1485, i32 %1486, i32 1, i32 15)
  %1488 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1488, i32 0, i32 1
  store i32 15, i32* %1489, align 4
  br label %1502

1490:                                             ; preds = %1479
  %1491 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1491, i32 0, i32 2
  %1493 = load i32, i32* %1492, align 4
  %1494 = icmp eq i32 %1493, 15
  br i1 %1494, label %1495, label %1501

1495:                                             ; preds = %1490
  %1496 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1497 = load i32, i32* @NORMAL_EXEC, align 4
  %1498 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1496, i32 %1497, i32 1, i32 16)
  %1499 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1499, i32 0, i32 1
  store i32 16, i32* %1500, align 4
  br label %1501

1501:                                             ; preds = %1495, %1490
  br label %1502

1502:                                             ; preds = %1501, %1484
  br label %1503

1503:                                             ; preds = %1502, %1473
  br label %1504

1504:                                             ; preds = %1503, %1462
  br label %1505

1505:                                             ; preds = %1504, %1451
  br label %1506

1506:                                             ; preds = %1505, %1440
  br label %1583

1507:                                             ; preds = %1432
  %1508 = load i32, i32* %10, align 4
  %1509 = icmp eq i32 %1508, 1
  br i1 %1509, label %1510, label %1582

1510:                                             ; preds = %1507
  %1511 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1511, i32 0, i32 2
  %1513 = load i32, i32* %1512, align 4
  %1514 = icmp eq i32 %1513, 8
  br i1 %1514, label %1515, label %1521

1515:                                             ; preds = %1510
  %1516 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1517 = load i32, i32* @NORMAL_EXEC, align 4
  %1518 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1516, i32 %1517, i32 1, i32 7)
  %1519 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1519, i32 0, i32 1
  store i32 7, i32* %1520, align 4
  br label %1581

1521:                                             ; preds = %1510
  %1522 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1522, i32 0, i32 2
  %1524 = load i32, i32* %1523, align 4
  %1525 = icmp eq i32 %1524, 7
  br i1 %1525, label %1526, label %1532

1526:                                             ; preds = %1521
  %1527 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1528 = load i32, i32* @NORMAL_EXEC, align 4
  %1529 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1527, i32 %1528, i32 1, i32 7)
  %1530 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1531 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1530, i32 0, i32 1
  store i32 7, i32* %1531, align 4
  br label %1580

1532:                                             ; preds = %1521
  %1533 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1533, i32 0, i32 2
  %1535 = load i32, i32* %1534, align 4
  %1536 = icmp eq i32 %1535, 6
  br i1 %1536, label %1537, label %1543

1537:                                             ; preds = %1532
  %1538 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1539 = load i32, i32* @NORMAL_EXEC, align 4
  %1540 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1538, i32 %1539, i32 1, i32 7)
  %1541 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1542 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1541, i32 0, i32 1
  store i32 7, i32* %1542, align 4
  br label %1579

1543:                                             ; preds = %1532
  %1544 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1544, i32 0, i32 2
  %1546 = load i32, i32* %1545, align 4
  %1547 = icmp eq i32 %1546, 16
  br i1 %1547, label %1548, label %1554

1548:                                             ; preds = %1543
  %1549 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1550 = load i32, i32* @NORMAL_EXEC, align 4
  %1551 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1549, i32 %1550, i32 1, i32 15)
  %1552 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1552, i32 0, i32 1
  store i32 15, i32* %1553, align 4
  br label %1578

1554:                                             ; preds = %1543
  %1555 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1555, i32 0, i32 2
  %1557 = load i32, i32* %1556, align 4
  %1558 = icmp eq i32 %1557, 15
  br i1 %1558, label %1559, label %1565

1559:                                             ; preds = %1554
  %1560 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1561 = load i32, i32* @NORMAL_EXEC, align 4
  %1562 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1560, i32 %1561, i32 1, i32 15)
  %1563 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1564 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1563, i32 0, i32 1
  store i32 15, i32* %1564, align 4
  br label %1577

1565:                                             ; preds = %1554
  %1566 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1566, i32 0, i32 2
  %1568 = load i32, i32* %1567, align 4
  %1569 = icmp eq i32 %1568, 14
  br i1 %1569, label %1570, label %1576

1570:                                             ; preds = %1565
  %1571 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1572 = load i32, i32* @NORMAL_EXEC, align 4
  %1573 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1571, i32 %1572, i32 1, i32 15)
  %1574 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1575 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1574, i32 0, i32 1
  store i32 15, i32* %1575, align 4
  br label %1576

1576:                                             ; preds = %1570, %1565
  br label %1577

1577:                                             ; preds = %1576, %1559
  br label %1578

1578:                                             ; preds = %1577, %1548
  br label %1579

1579:                                             ; preds = %1578, %1537
  br label %1580

1580:                                             ; preds = %1579, %1526
  br label %1581

1581:                                             ; preds = %1580, %1515
  br label %1582

1582:                                             ; preds = %1581, %1507
  br label %1583

1583:                                             ; preds = %1582, %1506
  br label %1830

1584:                                             ; preds = %1335
  %1585 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1585, i32 0, i32 2
  %1587 = load i32, i32* %1586, align 4
  %1588 = icmp eq i32 %1587, 5
  br i1 %1588, label %1589, label %1595

1589:                                             ; preds = %1584
  %1590 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1591 = load i32, i32* @NORMAL_EXEC, align 4
  %1592 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1590, i32 %1591, i32 1, i32 3)
  %1593 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1594 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1593, i32 0, i32 1
  store i32 3, i32* %1594, align 4
  br label %1631

1595:                                             ; preds = %1584
  %1596 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1597 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1596, i32 0, i32 2
  %1598 = load i32, i32* %1597, align 4
  %1599 = icmp eq i32 %1598, 6
  br i1 %1599, label %1600, label %1606

1600:                                             ; preds = %1595
  %1601 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1602 = load i32, i32* @NORMAL_EXEC, align 4
  %1603 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1601, i32 %1602, i32 1, i32 3)
  %1604 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1604, i32 0, i32 1
  store i32 3, i32* %1605, align 4
  br label %1630

1606:                                             ; preds = %1595
  %1607 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1608 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1607, i32 0, i32 2
  %1609 = load i32, i32* %1608, align 4
  %1610 = icmp eq i32 %1609, 7
  br i1 %1610, label %1611, label %1617

1611:                                             ; preds = %1606
  %1612 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1613 = load i32, i32* @NORMAL_EXEC, align 4
  %1614 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1612, i32 %1613, i32 1, i32 3)
  %1615 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1616 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1615, i32 0, i32 1
  store i32 3, i32* %1616, align 4
  br label %1629

1617:                                             ; preds = %1606
  %1618 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1619 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1618, i32 0, i32 2
  %1620 = load i32, i32* %1619, align 4
  %1621 = icmp eq i32 %1620, 8
  br i1 %1621, label %1622, label %1628

1622:                                             ; preds = %1617
  %1623 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1624 = load i32, i32* @NORMAL_EXEC, align 4
  %1625 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1623, i32 %1624, i32 1, i32 4)
  %1626 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1627 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1626, i32 0, i32 1
  store i32 4, i32* %1627, align 4
  br label %1628

1628:                                             ; preds = %1622, %1617
  br label %1629

1629:                                             ; preds = %1628, %1611
  br label %1630

1630:                                             ; preds = %1629, %1600
  br label %1631

1631:                                             ; preds = %1630, %1589
  %1632 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1632, i32 0, i32 2
  %1634 = load i32, i32* %1633, align 4
  %1635 = icmp eq i32 %1634, 13
  br i1 %1635, label %1636, label %1642

1636:                                             ; preds = %1631
  %1637 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1638 = load i32, i32* @NORMAL_EXEC, align 4
  %1639 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1637, i32 %1638, i32 1, i32 11)
  %1640 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1641 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1640, i32 0, i32 1
  store i32 11, i32* %1641, align 4
  br label %1678

1642:                                             ; preds = %1631
  %1643 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1643, i32 0, i32 2
  %1645 = load i32, i32* %1644, align 4
  %1646 = icmp eq i32 %1645, 14
  br i1 %1646, label %1647, label %1653

1647:                                             ; preds = %1642
  %1648 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1649 = load i32, i32* @NORMAL_EXEC, align 4
  %1650 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1648, i32 %1649, i32 1, i32 11)
  %1651 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1652 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1651, i32 0, i32 1
  store i32 11, i32* %1652, align 4
  br label %1677

1653:                                             ; preds = %1642
  %1654 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1655 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1654, i32 0, i32 2
  %1656 = load i32, i32* %1655, align 4
  %1657 = icmp eq i32 %1656, 15
  br i1 %1657, label %1658, label %1664

1658:                                             ; preds = %1653
  %1659 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1660 = load i32, i32* @NORMAL_EXEC, align 4
  %1661 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1659, i32 %1660, i32 1, i32 11)
  %1662 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1663 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1662, i32 0, i32 1
  store i32 11, i32* %1663, align 4
  br label %1676

1664:                                             ; preds = %1653
  %1665 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1665, i32 0, i32 2
  %1667 = load i32, i32* %1666, align 4
  %1668 = icmp eq i32 %1667, 16
  br i1 %1668, label %1669, label %1675

1669:                                             ; preds = %1664
  %1670 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1671 = load i32, i32* @NORMAL_EXEC, align 4
  %1672 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1670, i32 %1671, i32 1, i32 12)
  %1673 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1674 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1673, i32 0, i32 1
  store i32 12, i32* %1674, align 4
  br label %1675

1675:                                             ; preds = %1669, %1664
  br label %1676

1676:                                             ; preds = %1675, %1658
  br label %1677

1677:                                             ; preds = %1676, %1647
  br label %1678

1678:                                             ; preds = %1677, %1636
  %1679 = load i32, i32* %10, align 4
  %1680 = icmp eq i32 %1679, -1
  br i1 %1680, label %1681, label %1753

1681:                                             ; preds = %1678
  %1682 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1683 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1682, i32 0, i32 2
  %1684 = load i32, i32* %1683, align 4
  %1685 = icmp eq i32 %1684, 1
  br i1 %1685, label %1686, label %1692

1686:                                             ; preds = %1681
  %1687 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1688 = load i32, i32* @NORMAL_EXEC, align 4
  %1689 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1687, i32 %1688, i32 1, i32 3)
  %1690 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1691 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1690, i32 0, i32 1
  store i32 3, i32* %1691, align 4
  br label %1752

1692:                                             ; preds = %1681
  %1693 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1694 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1693, i32 0, i32 2
  %1695 = load i32, i32* %1694, align 4
  %1696 = icmp eq i32 %1695, 2
  br i1 %1696, label %1697, label %1703

1697:                                             ; preds = %1692
  %1698 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1699 = load i32, i32* @NORMAL_EXEC, align 4
  %1700 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1698, i32 %1699, i32 1, i32 3)
  %1701 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1702 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1701, i32 0, i32 1
  store i32 3, i32* %1702, align 4
  br label %1751

1703:                                             ; preds = %1692
  %1704 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1704, i32 0, i32 2
  %1706 = load i32, i32* %1705, align 4
  %1707 = icmp eq i32 %1706, 3
  br i1 %1707, label %1708, label %1714

1708:                                             ; preds = %1703
  %1709 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1710 = load i32, i32* @NORMAL_EXEC, align 4
  %1711 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1709, i32 %1710, i32 1, i32 4)
  %1712 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1713 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1712, i32 0, i32 1
  store i32 4, i32* %1713, align 4
  br label %1750

1714:                                             ; preds = %1703
  %1715 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1716 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1715, i32 0, i32 2
  %1717 = load i32, i32* %1716, align 4
  %1718 = icmp eq i32 %1717, 9
  br i1 %1718, label %1719, label %1725

1719:                                             ; preds = %1714
  %1720 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1721 = load i32, i32* @NORMAL_EXEC, align 4
  %1722 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1720, i32 %1721, i32 1, i32 11)
  %1723 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1724 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1723, i32 0, i32 1
  store i32 11, i32* %1724, align 4
  br label %1749

1725:                                             ; preds = %1714
  %1726 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1726, i32 0, i32 2
  %1728 = load i32, i32* %1727, align 4
  %1729 = icmp eq i32 %1728, 10
  br i1 %1729, label %1730, label %1736

1730:                                             ; preds = %1725
  %1731 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1732 = load i32, i32* @NORMAL_EXEC, align 4
  %1733 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1731, i32 %1732, i32 1, i32 11)
  %1734 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1735 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1734, i32 0, i32 1
  store i32 11, i32* %1735, align 4
  br label %1748

1736:                                             ; preds = %1725
  %1737 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1738 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1737, i32 0, i32 2
  %1739 = load i32, i32* %1738, align 4
  %1740 = icmp eq i32 %1739, 11
  br i1 %1740, label %1741, label %1747

1741:                                             ; preds = %1736
  %1742 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1743 = load i32, i32* @NORMAL_EXEC, align 4
  %1744 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1742, i32 %1743, i32 1, i32 12)
  %1745 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1746 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1745, i32 0, i32 1
  store i32 12, i32* %1746, align 4
  br label %1747

1747:                                             ; preds = %1741, %1736
  br label %1748

1748:                                             ; preds = %1747, %1730
  br label %1749

1749:                                             ; preds = %1748, %1719
  br label %1750

1750:                                             ; preds = %1749, %1708
  br label %1751

1751:                                             ; preds = %1750, %1697
  br label %1752

1752:                                             ; preds = %1751, %1686
  br label %1829

1753:                                             ; preds = %1678
  %1754 = load i32, i32* %10, align 4
  %1755 = icmp eq i32 %1754, 1
  br i1 %1755, label %1756, label %1828

1756:                                             ; preds = %1753
  %1757 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1758 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1757, i32 0, i32 2
  %1759 = load i32, i32* %1758, align 4
  %1760 = icmp eq i32 %1759, 4
  br i1 %1760, label %1761, label %1767

1761:                                             ; preds = %1756
  %1762 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1763 = load i32, i32* @NORMAL_EXEC, align 4
  %1764 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1762, i32 %1763, i32 1, i32 3)
  %1765 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1766 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1765, i32 0, i32 1
  store i32 3, i32* %1766, align 4
  br label %1827

1767:                                             ; preds = %1756
  %1768 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1769 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1768, i32 0, i32 2
  %1770 = load i32, i32* %1769, align 4
  %1771 = icmp eq i32 %1770, 3
  br i1 %1771, label %1772, label %1778

1772:                                             ; preds = %1767
  %1773 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1774 = load i32, i32* @NORMAL_EXEC, align 4
  %1775 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1773, i32 %1774, i32 1, i32 3)
  %1776 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1777 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1776, i32 0, i32 1
  store i32 3, i32* %1777, align 4
  br label %1826

1778:                                             ; preds = %1767
  %1779 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1780 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1779, i32 0, i32 2
  %1781 = load i32, i32* %1780, align 4
  %1782 = icmp eq i32 %1781, 2
  br i1 %1782, label %1783, label %1789

1783:                                             ; preds = %1778
  %1784 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1785 = load i32, i32* @NORMAL_EXEC, align 4
  %1786 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1784, i32 %1785, i32 1, i32 3)
  %1787 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1788 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1787, i32 0, i32 1
  store i32 3, i32* %1788, align 4
  br label %1825

1789:                                             ; preds = %1778
  %1790 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1791 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1790, i32 0, i32 2
  %1792 = load i32, i32* %1791, align 4
  %1793 = icmp eq i32 %1792, 12
  br i1 %1793, label %1794, label %1800

1794:                                             ; preds = %1789
  %1795 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1796 = load i32, i32* @NORMAL_EXEC, align 4
  %1797 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1795, i32 %1796, i32 1, i32 11)
  %1798 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1799 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1798, i32 0, i32 1
  store i32 11, i32* %1799, align 4
  br label %1824

1800:                                             ; preds = %1789
  %1801 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1802 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1801, i32 0, i32 2
  %1803 = load i32, i32* %1802, align 4
  %1804 = icmp eq i32 %1803, 11
  br i1 %1804, label %1805, label %1811

1805:                                             ; preds = %1800
  %1806 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1807 = load i32, i32* @NORMAL_EXEC, align 4
  %1808 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1806, i32 %1807, i32 1, i32 11)
  %1809 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1810 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1809, i32 0, i32 1
  store i32 11, i32* %1810, align 4
  br label %1823

1811:                                             ; preds = %1800
  %1812 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1813 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1812, i32 0, i32 2
  %1814 = load i32, i32* %1813, align 4
  %1815 = icmp eq i32 %1814, 10
  br i1 %1815, label %1816, label %1822

1816:                                             ; preds = %1811
  %1817 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1818 = load i32, i32* @NORMAL_EXEC, align 4
  %1819 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1817, i32 %1818, i32 1, i32 11)
  %1820 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1821 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1820, i32 0, i32 1
  store i32 11, i32* %1821, align 4
  br label %1822

1822:                                             ; preds = %1816, %1811
  br label %1823

1823:                                             ; preds = %1822, %1805
  br label %1824

1824:                                             ; preds = %1823, %1794
  br label %1825

1825:                                             ; preds = %1824, %1783
  br label %1826

1826:                                             ; preds = %1825, %1772
  br label %1827

1827:                                             ; preds = %1826, %1761
  br label %1828

1828:                                             ; preds = %1827, %1753
  br label %1829

1829:                                             ; preds = %1828, %1752
  br label %1830

1830:                                             ; preds = %1829, %1583
  br label %1831

1831:                                             ; preds = %1830, %1332
  br label %1832

1832:                                             ; preds = %1831, %1331
  br label %1833

1833:                                             ; preds = %1832, %832
  br label %1834

1834:                                             ; preds = %1833, %187
  %1835 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %1836 = load i32, i32* @COMP_BT_COEXIST, align 4
  %1837 = load i32, i32* @DBG_LOUD, align 4
  %1838 = load i32, i32* %8, align 4
  %1839 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1835, i32 %1836, i32 %1837, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %1838)
  %1840 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1841 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1840, i32 0, i32 2
  %1842 = load i32, i32* %1841, align 4
  %1843 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1844 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1843, i32 0, i32 1
  %1845 = load i32, i32* %1844, align 4
  %1846 = icmp ne i32 %1842, %1845
  br i1 %1846, label %1847, label %1897

1847:                                             ; preds = %1834
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %1848 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %1849 = load i32, i32* @COMP_BT_COEXIST, align 4
  %1850 = load i32, i32* @DBG_LOUD, align 4
  %1851 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1852 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1851, i32 0, i32 2
  %1853 = load i32, i32* %1852, align 4
  %1854 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1855 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1854, i32 0, i32 1
  %1856 = load i32, i32* %1855, align 4
  %1857 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1848, i32 %1849, i32 %1850, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %1853, i32 %1856)
  %1858 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1859 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %1858, i32 0, i32 0
  %1860 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %1859, align 8
  %1861 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1862 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %1863 = call i32 %1860(%struct.btc_coexist* %1861, i32 %1862, i32* %12)
  %1864 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1865 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %1864, i32 0, i32 0
  %1866 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %1865, align 8
  %1867 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1868 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %1869 = call i32 %1866(%struct.btc_coexist* %1867, i32 %1868, i32* %13)
  %1870 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1871 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %1870, i32 0, i32 0
  %1872 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %1871, align 8
  %1873 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1874 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %1875 = call i32 %1872(%struct.btc_coexist* %1873, i32 %1874, i32* %14)
  %1876 = load i32, i32* %12, align 4
  %1877 = icmp ne i32 %1876, 0
  br i1 %1877, label %1891, label %1878

1878:                                             ; preds = %1847
  %1879 = load i32, i32* %13, align 4
  %1880 = icmp ne i32 %1879, 0
  br i1 %1880, label %1891, label %1881

1881:                                             ; preds = %1878
  %1882 = load i32, i32* %14, align 4
  %1883 = icmp ne i32 %1882, 0
  br i1 %1883, label %1891, label %1884

1884:                                             ; preds = %1881
  %1885 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %1886 = load i32, i32* @NORMAL_EXEC, align 4
  %1887 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %1888 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1887, i32 0, i32 1
  %1889 = load i32, i32* %1888, align 4
  %1890 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %1885, i32 %1886, i32 1, i32 %1889)
  br label %1896

1891:                                             ; preds = %1881, %1878, %1847
  %1892 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %1893 = load i32, i32* @COMP_BT_COEXIST, align 4
  %1894 = load i32, i32* @DBG_LOUD, align 4
  %1895 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1892, i32 %1893, i32 %1894, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0))
  br label %1896

1896:                                             ; preds = %1891, %1884
  br label %1897

1897:                                             ; preds = %1896, %1834
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
