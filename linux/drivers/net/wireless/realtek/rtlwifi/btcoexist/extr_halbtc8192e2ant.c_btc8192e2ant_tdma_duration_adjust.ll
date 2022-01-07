; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_tdma_duration_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_tdma_duration_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@btc8192e2ant_tdma_duration_adjust.up = internal global i32 0, align 4
@btc8192e2ant_tdma_duration_adjust.dn = internal global i32 0, align 4
@btc8192e2ant_tdma_duration_adjust.m = internal global i32 0, align 4
@btc8192e2ant_tdma_duration_adjust.n = internal global i32 0, align 4
@btc8192e2ant_tdma_duration_adjust.wait_cnt = internal global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], TdmaDurationAdjust()\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"[BTCoex], retry_cnt = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"[BTCoex], up=%d, dn=%d, m=%d, n=%d, wait_cnt=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[BTCoex]Increase wifi duration!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Reduce wifi duration for retry<3\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Decrease wifi duration for retryCounter>3!!\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"[BTCoex], max Interval = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"[BTCoex], PsTdma type mismatch!!!, \00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"curPsTdma=%d, recordPsTdma=%d\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [73 x i8] c"[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8192e2ant_tdma_duration_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %25, label %148, label %26

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
  br i1 %34, label %35, label %91

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %42, i32 %43, i32 1, i32 13)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 13, i32* %46, align 4
  br label %63

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %51, i32 %52, i32 1, i32 14)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 14, i32* %55, align 4
  br label %62

56:                                               ; preds = %47
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %58 = load i32, i32* @NORMAL_EXEC, align 4
  %59 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %57, i32 %58, i32 1, i32 15)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 15, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %41
  br label %90

64:                                               ; preds = %35
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %69 = load i32, i32* @NORMAL_EXEC, align 4
  %70 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %68, i32 %69, i32 1, i32 9)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 9, i32* %72, align 4
  br label %89

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %78 = load i32, i32* @NORMAL_EXEC, align 4
  %79 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %77, i32 %78, i32 1, i32 10)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 10, i32* %81, align 4
  br label %88

82:                                               ; preds = %73
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %84 = load i32, i32* @NORMAL_EXEC, align 4
  %85 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %83, i32 %84, i32 1, i32 11)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 11, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %63
  br label %147

91:                                               ; preds = %26
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %99 = load i32, i32* @NORMAL_EXEC, align 4
  %100 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %98, i32 %99, i32 1, i32 5)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 5, i32* %102, align 4
  br label %119

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %108 = load i32, i32* @NORMAL_EXEC, align 4
  %109 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %107, i32 %108, i32 1, i32 6)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 6, i32* %111, align 4
  br label %118

112:                                              ; preds = %103
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %114 = load i32, i32* @NORMAL_EXEC, align 4
  %115 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %113, i32 %114, i32 1, i32 7)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 7, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %106
  br label %119

119:                                              ; preds = %118, %97
  br label %146

120:                                              ; preds = %91
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %125 = load i32, i32* @NORMAL_EXEC, align 4
  %126 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %124, i32 %125, i32 1, i32 1)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  br label %145

129:                                              ; preds = %120
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %134 = load i32, i32* @NORMAL_EXEC, align 4
  %135 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %133, i32 %134, i32 1, i32 2)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i32 2, i32* %137, align 4
  br label %144

138:                                              ; preds = %129
  %139 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %140 = load i32, i32* @NORMAL_EXEC, align 4
  %141 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %139, i32 %140, i32 1, i32 3)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i32 3, i32* %143, align 4
  br label %144

144:                                              ; preds = %138, %132
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145, %119
  br label %147

147:                                              ; preds = %146, %90
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  store i32 1, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  store i32 3, i32* @btc8192e2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  br label %246

148:                                              ; preds = %4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %11, align 4
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %153 = load i32, i32* @COMP_BT_COEXIST, align 4
  %154 = load i32, i32* @DBG_LOUD, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %158 = load i32, i32* @COMP_BT_COEXIST, align 4
  %159 = load i32, i32* @DBG_LOUD, align 4
  %160 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  %161 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %162 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  %163 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.n, align 4
  %164 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  %165 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %157, i32 %158, i32 %159, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 0, i32* %10, align 4
  %166 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %148
  %171 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  %173 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %175 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %176 = icmp sle i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  br label %178

178:                                              ; preds = %177, %170
  %179 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  %180 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.n, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  store i32 3, i32* @btc8192e2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  store i32 1, i32* %10, align 4
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %184 = load i32, i32* @COMP_BT_COEXIST, align 4
  %185 = load i32, i32* @DBG_LOUD, align 4
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %187

187:                                              ; preds = %182, %178
  br label %240

188:                                              ; preds = %148
  %189 = load i32, i32* %11, align 4
  %190 = icmp sle i32 %189, 3
  br i1 %190, label %191, label %221

191:                                              ; preds = %188
  %192 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  %194 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %196 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  %197 = icmp sle i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  br label %199

199:                                              ; preds = %198, %191
  %200 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %220

202:                                              ; preds = %199
  %203 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  %204 = icmp sle i32 %203, 2
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  br label %209

208:                                              ; preds = %202
  store i32 1, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  %211 = icmp sge i32 %210, 20
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 20, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  br label %213

213:                                              ; preds = %212, %209
  %214 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  %215 = mul nsw i32 3, %214
  store i32 %215, i32* @btc8192e2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  store i32 -1, i32* %10, align 4
  %216 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %217 = load i32, i32* @COMP_BT_COEXIST, align 4
  %218 = load i32, i32* @DBG_LOUD, align 4
  %219 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %216, i32 %217, i32 %218, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %220

220:                                              ; preds = %213, %199
  br label %239

221:                                              ; preds = %188
  %222 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  br label %228

227:                                              ; preds = %221
  store i32 1, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  br label %228

228:                                              ; preds = %227, %224
  %229 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  %230 = icmp sge i32 %229, 20
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 20, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  br label %232

232:                                              ; preds = %231, %228
  %233 = load i32, i32* @btc8192e2ant_tdma_duration_adjust.m, align 4
  %234 = mul nsw i32 3, %233
  store i32 %234, i32* @btc8192e2ant_tdma_duration_adjust.n, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.up, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.dn, align 4
  store i32 0, i32* @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  store i32 -1, i32* %10, align 4
  %235 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %236 = load i32, i32* @COMP_BT_COEXIST, align 4
  %237 = load i32, i32* @DBG_LOUD, align 4
  %238 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %235, i32 %236, i32 %237, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %239

239:                                              ; preds = %232, %220
  br label %240

240:                                              ; preds = %239, %187
  %241 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %242 = load i32, i32* @COMP_BT_COEXIST, align 4
  %243 = load i32, i32* @DBG_LOUD, align 4
  %244 = load i32, i32* %8, align 4
  %245 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %241, i32 %242, i32 %243, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %240, %147
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %249, %252
  br i1 %253, label %254, label %308

254:                                              ; preds = %246
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %256 = load i32, i32* @COMP_BT_COEXIST, align 4
  %257 = load i32, i32* @DBG_LOUD, align 4
  %258 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %255, i32 %256, i32 %257, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %259 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %260 = load i32, i32* @COMP_BT_COEXIST, align 4
  %261 = load i32, i32* @DBG_LOUD, align 4
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %259, i32 %260, i32 %261, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %264, i32 %267)
  %269 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %270 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %269, i32 0, i32 0
  %271 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %270, align 8
  %272 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %273 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %274 = call i32 %271(%struct.btc_coexist* %272, i32 %273, i32* %12)
  %275 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %276 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %275, i32 0, i32 0
  %277 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %276, align 8
  %278 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %279 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %280 = call i32 %277(%struct.btc_coexist* %278, i32 %279, i32* %13)
  %281 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %282 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %281, i32 0, i32 0
  %283 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %282, align 8
  %284 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %285 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %286 = call i32 %283(%struct.btc_coexist* %284, i32 %285, i32* %14)
  %287 = load i32, i32* %12, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %302, label %289

289:                                              ; preds = %254
  %290 = load i32, i32* %13, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %302, label %295

295:                                              ; preds = %292
  %296 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %297 = load i32, i32* @NORMAL_EXEC, align 4
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %296, i32 %297, i32 1, i32 %300)
  br label %307

302:                                              ; preds = %292, %289, %254
  %303 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %304 = load i32, i32* @COMP_BT_COEXIST, align 4
  %305 = load i32, i32* @DBG_LOUD, align 4
  %306 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %303, i32 %304, i32 %305, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0))
  br label %307

307:                                              ; preds = %302, %295
  br label %308

308:                                              ; preds = %307, %246
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
