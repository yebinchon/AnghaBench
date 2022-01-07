; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_TdmaDurationAdjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_TdmaDurationAdjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32, i32*)* }

@halbtc8723b2ant_TdmaDurationAdjust.up = internal global i32 0, align 4
@halbtc8723b2ant_TdmaDurationAdjust.dn = internal global i32 0, align 4
@halbtc8723b2ant_TdmaDurationAdjust.m = internal global i32 0, align 4
@halbtc8723b2ant_TdmaDurationAdjust.n = internal global i32 0, align 4
@halbtc8723b2ant_TdmaDurationAdjust.WaitCount = internal global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], TdmaDurationAdjust()\0A\00", align 1
@pCoexDm = common dso_local global %struct.TYPE_11__* null, align 8
@ALGO_TRACE_FW_DETAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"[BTCoex], retryCount = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"[BTCoex], up =%d, dn =%d, m =%d, n =%d, WaitCount =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter<3!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter>3!!\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"[BTCoex], max Interval = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"[BTCoex], TxPause = 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"[BTCoex], TxPause = 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"[BTCoex], PsTdma type mismatch!!!, curPsTdma =%d, recordPsTdma =%d\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [73 x i8] c"[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @halbtc8723b2ant_TdmaDurationAdjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %15 = load i32, i32* @ALGO_TRACE_FW, align 4
  %16 = call i32 @BTC_PRINT(i32 %14, i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %118, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %25 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %26 = call i32 @BTC_PRINT(i32 %24, i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 13)
  br label %51

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %49

47:                                               ; preds = %42
  %48 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %35
  br label %72

52:                                               ; preds = %29
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 9)
  br label %71

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %69

67:                                               ; preds = %62
  %68 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %51
  br label %117

73:                                               ; preds = %21
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 5)
  br label %95

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %93

91:                                               ; preds = %86
  %92 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94, %79
  br label %116

96:                                               ; preds = %73
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 1)
  br label %115

101:                                              ; preds = %96
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %114

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %113

111:                                              ; preds = %106
  %112 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %72
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  store i32 1, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  store i32 3, i32* @halbtc8723b2ant_TdmaDurationAdjust.n, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  br label %1277

118:                                              ; preds = %4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pCoexSta, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %123 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @BTC_PRINT(i32 %122, i32 %123, i8* %126)
  %128 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %129 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %130 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  %131 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  %132 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  %133 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.n, align 4
  %134 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @BTC_PRINT(i32 %128, i32 %129, i8* %136)
  store i32 0, i32* %9, align 4
  %138 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %118
  %143 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  %145 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  %147 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  br label %150

150:                                              ; preds = %149, %142
  %151 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  %152 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.n, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  store i32 3, i32* @halbtc8723b2ant_TdmaDurationAdjust.n, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  store i32 1, i32* %9, align 4
  %155 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %156 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %157 = call i32 @BTC_PRINT(i32 %155, i32 %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %150
  br label %209

159:                                              ; preds = %118
  %160 = load i32, i32* %10, align 4
  %161 = icmp sle i32 %160, 3
  br i1 %161, label %162, label %191

162:                                              ; preds = %159
  %163 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  %165 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  %167 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  br label %170

170:                                              ; preds = %169, %162
  %171 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  %175 = icmp sle i32 %174, 2
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  br label %180

179:                                              ; preds = %173
  store i32 1, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  br label %180

180:                                              ; preds = %179, %176
  %181 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  %182 = icmp sge i32 %181, 20
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 20, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  br label %184

184:                                              ; preds = %183, %180
  %185 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  %186 = mul nsw i32 3, %185
  store i32 %186, i32* @halbtc8723b2ant_TdmaDurationAdjust.n, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  store i32 -1, i32* %9, align 4
  %187 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %188 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %189 = call i32 @BTC_PRINT(i32 %187, i32 %188, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %190

190:                                              ; preds = %184, %170
  br label %208

191:                                              ; preds = %159
  %192 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  br label %198

197:                                              ; preds = %191
  store i32 1, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  %200 = icmp sge i32 %199, 20
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 20, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i32, i32* @halbtc8723b2ant_TdmaDurationAdjust.m, align 4
  %204 = mul nsw i32 3, %203
  store i32 %204, i32* @halbtc8723b2ant_TdmaDurationAdjust.n, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.up, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.dn, align 4
  store i32 0, i32* @halbtc8723b2ant_TdmaDurationAdjust.WaitCount, align 4
  store i32 -1, i32* %9, align 4
  %205 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %206 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %207 = call i32 @BTC_PRINT(i32 %205, i32 %206, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  br label %208

208:                                              ; preds = %202, %190
  br label %209

209:                                              ; preds = %208, %158
  %210 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %211 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @BTC_PRINT(i32 %210, i32 %211, i8* %214)
  %216 = load i32, i32* %8, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %584

218:                                              ; preds = %209
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %398

221:                                              ; preds = %218
  %222 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %223 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %224 = call i32 @BTC_PRINT(i32 %222, i32 %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 71
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 5)
  br label %263

231:                                              ; preds = %221
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 5)
  br label %262

238:                                              ; preds = %231
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %261

245:                                              ; preds = %238
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 3
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %260

252:                                              ; preds = %245
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 4
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 8)
  br label %259

259:                                              ; preds = %257, %252
  br label %260

260:                                              ; preds = %259, %250
  br label %261

261:                                              ; preds = %260, %243
  br label %262

262:                                              ; preds = %261, %236
  br label %263

263:                                              ; preds = %262, %229
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 9
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 13)
  br label %294

270:                                              ; preds = %263
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 10
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %293

277:                                              ; preds = %270
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 11
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %292

284:                                              ; preds = %277
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp eq i32 %287, 12
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 16)
  br label %291

291:                                              ; preds = %289, %284
  br label %292

292:                                              ; preds = %291, %282
  br label %293

293:                                              ; preds = %292, %275
  br label %294

294:                                              ; preds = %293, %268
  %295 = load i32, i32* %9, align 4
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %297, label %345

297:                                              ; preds = %294
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 5
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %344

304:                                              ; preds = %297
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 6
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %343

311:                                              ; preds = %304
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 7
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 8)
  br label %342

318:                                              ; preds = %311
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %321, 13
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %341

325:                                              ; preds = %318
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, 14
  br i1 %329, label %330, label %332

330:                                              ; preds = %325
  %331 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %340

332:                                              ; preds = %325
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 15
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 16)
  br label %339

339:                                              ; preds = %337, %332
  br label %340

340:                                              ; preds = %339, %330
  br label %341

341:                                              ; preds = %340, %323
  br label %342

342:                                              ; preds = %341, %316
  br label %343

343:                                              ; preds = %342, %309
  br label %344

344:                                              ; preds = %343, %302
  br label %397

345:                                              ; preds = %294
  %346 = load i32, i32* %9, align 4
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %348, label %396

348:                                              ; preds = %345
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 8
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %395

355:                                              ; preds = %348
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = icmp eq i32 %358, 7
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %394

362:                                              ; preds = %355
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 6
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 5)
  br label %393

369:                                              ; preds = %362
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 16
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %392

376:                                              ; preds = %369
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 15
  br i1 %380, label %381, label %383

381:                                              ; preds = %376
  %382 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %391

383:                                              ; preds = %376
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 14
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 13)
  br label %390

390:                                              ; preds = %388, %383
  br label %391

391:                                              ; preds = %390, %381
  br label %392

392:                                              ; preds = %391, %374
  br label %393

393:                                              ; preds = %392, %367
  br label %394

394:                                              ; preds = %393, %360
  br label %395

395:                                              ; preds = %394, %353
  br label %396

396:                                              ; preds = %395, %345
  br label %397

397:                                              ; preds = %396, %344
  br label %583

398:                                              ; preds = %218
  %399 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %400 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %401 = call i32 @BTC_PRINT(i32 %399, i32 %400, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, 5
  br i1 %405, label %406, label %408

406:                                              ; preds = %398
  %407 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 71)
  br label %432

408:                                              ; preds = %398
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 6
  br i1 %412, label %413, label %415

413:                                              ; preds = %408
  %414 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %431

415:                                              ; preds = %408
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = icmp eq i32 %418, 7
  br i1 %419, label %420, label %422

420:                                              ; preds = %415
  %421 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %430

422:                                              ; preds = %415
  %423 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %424 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = icmp eq i32 %425, 8
  br i1 %426, label %427, label %429

427:                                              ; preds = %422
  %428 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 4)
  br label %429

429:                                              ; preds = %427, %422
  br label %430

430:                                              ; preds = %429, %420
  br label %431

431:                                              ; preds = %430, %413
  br label %432

432:                                              ; preds = %431, %406
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 13
  br i1 %436, label %437, label %439

437:                                              ; preds = %432
  %438 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 9)
  br label %463

439:                                              ; preds = %432
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = icmp eq i32 %442, 14
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %462

446:                                              ; preds = %439
  %447 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = icmp eq i32 %449, 15
  br i1 %450, label %451, label %453

451:                                              ; preds = %446
  %452 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %461

453:                                              ; preds = %446
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %456, 16
  br i1 %457, label %458, label %460

458:                                              ; preds = %453
  %459 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 12)
  br label %460

460:                                              ; preds = %458, %453
  br label %461

461:                                              ; preds = %460, %451
  br label %462

462:                                              ; preds = %461, %444
  br label %463

463:                                              ; preds = %462, %437
  %464 = load i32, i32* %9, align 4
  %465 = icmp eq i32 %464, -1
  br i1 %465, label %466, label %522

466:                                              ; preds = %463
  %467 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = icmp eq i32 %469, 71
  br i1 %470, label %471, label %473

471:                                              ; preds = %466
  %472 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 1)
  br label %521

473:                                              ; preds = %466
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %478, label %480

478:                                              ; preds = %473
  %479 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %520

480:                                              ; preds = %473
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = icmp eq i32 %483, 2
  br i1 %484, label %485, label %487

485:                                              ; preds = %480
  %486 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %519

487:                                              ; preds = %480
  %488 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = icmp eq i32 %490, 3
  br i1 %491, label %492, label %494

492:                                              ; preds = %487
  %493 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 4)
  br label %518

494:                                              ; preds = %487
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = icmp eq i32 %497, 9
  br i1 %498, label %499, label %501

499:                                              ; preds = %494
  %500 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %517

501:                                              ; preds = %494
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %503 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = icmp eq i32 %504, 10
  br i1 %505, label %506, label %508

506:                                              ; preds = %501
  %507 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %516

508:                                              ; preds = %501
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = icmp eq i32 %511, 11
  br i1 %512, label %513, label %515

513:                                              ; preds = %508
  %514 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 12)
  br label %515

515:                                              ; preds = %513, %508
  br label %516

516:                                              ; preds = %515, %506
  br label %517

517:                                              ; preds = %516, %499
  br label %518

518:                                              ; preds = %517, %492
  br label %519

519:                                              ; preds = %518, %485
  br label %520

520:                                              ; preds = %519, %478
  br label %521

521:                                              ; preds = %520, %471
  br label %582

522:                                              ; preds = %463
  %523 = load i32, i32* %9, align 4
  %524 = icmp eq i32 %523, 1
  br i1 %524, label %525, label %581

525:                                              ; preds = %522
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = icmp eq i32 %528, 4
  br i1 %529, label %530, label %532

530:                                              ; preds = %525
  %531 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %580

532:                                              ; preds = %525
  %533 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %534 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = icmp eq i32 %535, 3
  br i1 %536, label %537, label %539

537:                                              ; preds = %532
  %538 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %579

539:                                              ; preds = %532
  %540 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 4
  %543 = icmp eq i32 %542, 2
  br i1 %543, label %544, label %546

544:                                              ; preds = %539
  %545 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 1)
  br label %578

546:                                              ; preds = %539
  %547 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %548 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 1
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 71)
  br label %577

553:                                              ; preds = %546
  %554 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %555 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = icmp eq i32 %556, 12
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %576

560:                                              ; preds = %553
  %561 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %562 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = icmp eq i32 %563, 11
  br i1 %564, label %565, label %567

565:                                              ; preds = %560
  %566 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %575

567:                                              ; preds = %560
  %568 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %569 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = icmp eq i32 %570, 10
  br i1 %571, label %572, label %574

572:                                              ; preds = %567
  %573 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 9)
  br label %574

574:                                              ; preds = %572, %567
  br label %575

575:                                              ; preds = %574, %565
  br label %576

576:                                              ; preds = %575, %558
  br label %577

577:                                              ; preds = %576, %551
  br label %578

578:                                              ; preds = %577, %544
  br label %579

579:                                              ; preds = %578, %537
  br label %580

580:                                              ; preds = %579, %530
  br label %581

581:                                              ; preds = %580, %522
  br label %582

582:                                              ; preds = %581, %521
  br label %583

583:                                              ; preds = %582, %397
  br label %1276

584:                                              ; preds = %209
  %585 = load i32, i32* %8, align 4
  %586 = icmp eq i32 %585, 2
  br i1 %586, label %587, label %929

587:                                              ; preds = %584
  %588 = load i32, i32* %7, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %759

590:                                              ; preds = %587
  %591 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %592 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %593 = call i32 @BTC_PRINT(i32 %591, i32 %592, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %594 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = icmp eq i32 %596, 1
  br i1 %597, label %598, label %600

598:                                              ; preds = %590
  %599 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %624

600:                                              ; preds = %590
  %601 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %602 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = icmp eq i32 %603, 2
  br i1 %604, label %605, label %607

605:                                              ; preds = %600
  %606 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %623

607:                                              ; preds = %600
  %608 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %609 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 4
  %611 = icmp eq i32 %610, 3
  br i1 %611, label %612, label %614

612:                                              ; preds = %607
  %613 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %622

614:                                              ; preds = %607
  %615 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %616 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  %618 = icmp eq i32 %617, 4
  br i1 %618, label %619, label %621

619:                                              ; preds = %614
  %620 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 8)
  br label %621

621:                                              ; preds = %619, %614
  br label %622

622:                                              ; preds = %621, %612
  br label %623

623:                                              ; preds = %622, %605
  br label %624

624:                                              ; preds = %623, %598
  %625 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %626 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 4
  %628 = icmp eq i32 %627, 9
  br i1 %628, label %629, label %631

629:                                              ; preds = %624
  %630 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %655

631:                                              ; preds = %624
  %632 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %633 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = icmp eq i32 %634, 10
  br i1 %635, label %636, label %638

636:                                              ; preds = %631
  %637 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %654

638:                                              ; preds = %631
  %639 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %640 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = icmp eq i32 %641, 11
  br i1 %642, label %643, label %645

643:                                              ; preds = %638
  %644 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %653

645:                                              ; preds = %638
  %646 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %647 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = icmp eq i32 %648, 12
  br i1 %649, label %650, label %652

650:                                              ; preds = %645
  %651 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 16)
  br label %652

652:                                              ; preds = %650, %645
  br label %653

653:                                              ; preds = %652, %643
  br label %654

654:                                              ; preds = %653, %636
  br label %655

655:                                              ; preds = %654, %629
  %656 = load i32, i32* %9, align 4
  %657 = icmp eq i32 %656, -1
  br i1 %657, label %658, label %706

658:                                              ; preds = %655
  %659 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %660 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = icmp eq i32 %661, 5
  br i1 %662, label %663, label %665

663:                                              ; preds = %658
  %664 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %705

665:                                              ; preds = %658
  %666 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %667 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %666, i32 0, i32 1
  %668 = load i32, i32* %667, align 4
  %669 = icmp eq i32 %668, 6
  br i1 %669, label %670, label %672

670:                                              ; preds = %665
  %671 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %704

672:                                              ; preds = %665
  %673 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %674 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = icmp eq i32 %675, 7
  br i1 %676, label %677, label %679

677:                                              ; preds = %672
  %678 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 8)
  br label %703

679:                                              ; preds = %672
  %680 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %681 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 4
  %683 = icmp eq i32 %682, 13
  br i1 %683, label %684, label %686

684:                                              ; preds = %679
  %685 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %702

686:                                              ; preds = %679
  %687 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %688 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 4
  %690 = icmp eq i32 %689, 14
  br i1 %690, label %691, label %693

691:                                              ; preds = %686
  %692 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %701

693:                                              ; preds = %686
  %694 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %695 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = icmp eq i32 %696, 15
  br i1 %697, label %698, label %700

698:                                              ; preds = %693
  %699 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 16)
  br label %700

700:                                              ; preds = %698, %693
  br label %701

701:                                              ; preds = %700, %691
  br label %702

702:                                              ; preds = %701, %684
  br label %703

703:                                              ; preds = %702, %677
  br label %704

704:                                              ; preds = %703, %670
  br label %705

705:                                              ; preds = %704, %663
  br label %758

706:                                              ; preds = %655
  %707 = load i32, i32* %9, align 4
  %708 = icmp eq i32 %707, 1
  br i1 %708, label %709, label %757

709:                                              ; preds = %706
  %710 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %711 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = icmp eq i32 %712, 8
  br i1 %713, label %714, label %716

714:                                              ; preds = %709
  %715 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %756

716:                                              ; preds = %709
  %717 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %718 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 4
  %720 = icmp eq i32 %719, 7
  br i1 %720, label %721, label %723

721:                                              ; preds = %716
  %722 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %755

723:                                              ; preds = %716
  %724 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %725 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %724, i32 0, i32 1
  %726 = load i32, i32* %725, align 4
  %727 = icmp eq i32 %726, 6
  br i1 %727, label %728, label %730

728:                                              ; preds = %723
  %729 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 6)
  br label %754

730:                                              ; preds = %723
  %731 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %732 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 4
  %734 = icmp eq i32 %733, 16
  br i1 %734, label %735, label %737

735:                                              ; preds = %730
  %736 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %753

737:                                              ; preds = %730
  %738 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %739 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %738, i32 0, i32 1
  %740 = load i32, i32* %739, align 4
  %741 = icmp eq i32 %740, 15
  br i1 %741, label %742, label %744

742:                                              ; preds = %737
  %743 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %752

744:                                              ; preds = %737
  %745 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %746 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %745, i32 0, i32 1
  %747 = load i32, i32* %746, align 4
  %748 = icmp eq i32 %747, 14
  br i1 %748, label %749, label %751

749:                                              ; preds = %744
  %750 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 14)
  br label %751

751:                                              ; preds = %749, %744
  br label %752

752:                                              ; preds = %751, %742
  br label %753

753:                                              ; preds = %752, %735
  br label %754

754:                                              ; preds = %753, %728
  br label %755

755:                                              ; preds = %754, %721
  br label %756

756:                                              ; preds = %755, %714
  br label %757

757:                                              ; preds = %756, %706
  br label %758

758:                                              ; preds = %757, %705
  br label %928

759:                                              ; preds = %587
  %760 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %761 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %762 = call i32 @BTC_PRINT(i32 %760, i32 %761, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %763 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %764 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %763, i32 0, i32 1
  %765 = load i32, i32* %764, align 4
  %766 = icmp eq i32 %765, 5
  br i1 %766, label %767, label %769

767:                                              ; preds = %759
  %768 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %793

769:                                              ; preds = %759
  %770 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %771 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %770, i32 0, i32 1
  %772 = load i32, i32* %771, align 4
  %773 = icmp eq i32 %772, 6
  br i1 %773, label %774, label %776

774:                                              ; preds = %769
  %775 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %792

776:                                              ; preds = %769
  %777 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %778 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %777, i32 0, i32 1
  %779 = load i32, i32* %778, align 4
  %780 = icmp eq i32 %779, 7
  br i1 %780, label %781, label %783

781:                                              ; preds = %776
  %782 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %791

783:                                              ; preds = %776
  %784 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %785 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %784, i32 0, i32 1
  %786 = load i32, i32* %785, align 4
  %787 = icmp eq i32 %786, 8
  br i1 %787, label %788, label %790

788:                                              ; preds = %783
  %789 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 4)
  br label %790

790:                                              ; preds = %788, %783
  br label %791

791:                                              ; preds = %790, %781
  br label %792

792:                                              ; preds = %791, %774
  br label %793

793:                                              ; preds = %792, %767
  %794 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %795 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %794, i32 0, i32 1
  %796 = load i32, i32* %795, align 4
  %797 = icmp eq i32 %796, 13
  br i1 %797, label %798, label %800

798:                                              ; preds = %793
  %799 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %824

800:                                              ; preds = %793
  %801 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %802 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %801, i32 0, i32 1
  %803 = load i32, i32* %802, align 4
  %804 = icmp eq i32 %803, 14
  br i1 %804, label %805, label %807

805:                                              ; preds = %800
  %806 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %823

807:                                              ; preds = %800
  %808 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %809 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %808, i32 0, i32 1
  %810 = load i32, i32* %809, align 4
  %811 = icmp eq i32 %810, 15
  br i1 %811, label %812, label %814

812:                                              ; preds = %807
  %813 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %822

814:                                              ; preds = %807
  %815 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %816 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %815, i32 0, i32 1
  %817 = load i32, i32* %816, align 4
  %818 = icmp eq i32 %817, 16
  br i1 %818, label %819, label %821

819:                                              ; preds = %814
  %820 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 12)
  br label %821

821:                                              ; preds = %819, %814
  br label %822

822:                                              ; preds = %821, %812
  br label %823

823:                                              ; preds = %822, %805
  br label %824

824:                                              ; preds = %823, %798
  %825 = load i32, i32* %9, align 4
  %826 = icmp eq i32 %825, -1
  br i1 %826, label %827, label %875

827:                                              ; preds = %824
  %828 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %829 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %828, i32 0, i32 1
  %830 = load i32, i32* %829, align 4
  %831 = icmp eq i32 %830, 1
  br i1 %831, label %832, label %834

832:                                              ; preds = %827
  %833 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %874

834:                                              ; preds = %827
  %835 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %836 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %835, i32 0, i32 1
  %837 = load i32, i32* %836, align 4
  %838 = icmp eq i32 %837, 2
  br i1 %838, label %839, label %841

839:                                              ; preds = %834
  %840 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %873

841:                                              ; preds = %834
  %842 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %843 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %842, i32 0, i32 1
  %844 = load i32, i32* %843, align 4
  %845 = icmp eq i32 %844, 3
  br i1 %845, label %846, label %848

846:                                              ; preds = %841
  %847 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 4)
  br label %872

848:                                              ; preds = %841
  %849 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %850 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %849, i32 0, i32 1
  %851 = load i32, i32* %850, align 4
  %852 = icmp eq i32 %851, 9
  br i1 %852, label %853, label %855

853:                                              ; preds = %848
  %854 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %871

855:                                              ; preds = %848
  %856 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %857 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %856, i32 0, i32 1
  %858 = load i32, i32* %857, align 4
  %859 = icmp eq i32 %858, 10
  br i1 %859, label %860, label %862

860:                                              ; preds = %855
  %861 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %870

862:                                              ; preds = %855
  %863 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %864 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %863, i32 0, i32 1
  %865 = load i32, i32* %864, align 4
  %866 = icmp eq i32 %865, 11
  br i1 %866, label %867, label %869

867:                                              ; preds = %862
  %868 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 12)
  br label %869

869:                                              ; preds = %867, %862
  br label %870

870:                                              ; preds = %869, %860
  br label %871

871:                                              ; preds = %870, %853
  br label %872

872:                                              ; preds = %871, %846
  br label %873

873:                                              ; preds = %872, %839
  br label %874

874:                                              ; preds = %873, %832
  br label %927

875:                                              ; preds = %824
  %876 = load i32, i32* %9, align 4
  %877 = icmp eq i32 %876, 1
  br i1 %877, label %878, label %926

878:                                              ; preds = %875
  %879 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %880 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %879, i32 0, i32 1
  %881 = load i32, i32* %880, align 4
  %882 = icmp eq i32 %881, 4
  br i1 %882, label %883, label %885

883:                                              ; preds = %878
  %884 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %925

885:                                              ; preds = %878
  %886 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %887 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %886, i32 0, i32 1
  %888 = load i32, i32* %887, align 4
  %889 = icmp eq i32 %888, 3
  br i1 %889, label %890, label %892

890:                                              ; preds = %885
  %891 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %924

892:                                              ; preds = %885
  %893 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %894 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %893, i32 0, i32 1
  %895 = load i32, i32* %894, align 4
  %896 = icmp eq i32 %895, 2
  br i1 %896, label %897, label %899

897:                                              ; preds = %892
  %898 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 2)
  br label %923

899:                                              ; preds = %892
  %900 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %901 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %900, i32 0, i32 1
  %902 = load i32, i32* %901, align 4
  %903 = icmp eq i32 %902, 12
  br i1 %903, label %904, label %906

904:                                              ; preds = %899
  %905 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %922

906:                                              ; preds = %899
  %907 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %908 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %907, i32 0, i32 1
  %909 = load i32, i32* %908, align 4
  %910 = icmp eq i32 %909, 11
  br i1 %910, label %911, label %913

911:                                              ; preds = %906
  %912 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %921

913:                                              ; preds = %906
  %914 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %915 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %914, i32 0, i32 1
  %916 = load i32, i32* %915, align 4
  %917 = icmp eq i32 %916, 10
  br i1 %917, label %918, label %920

918:                                              ; preds = %913
  %919 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 10)
  br label %920

920:                                              ; preds = %918, %913
  br label %921

921:                                              ; preds = %920, %911
  br label %922

922:                                              ; preds = %921, %904
  br label %923

923:                                              ; preds = %922, %897
  br label %924

924:                                              ; preds = %923, %890
  br label %925

925:                                              ; preds = %924, %883
  br label %926

926:                                              ; preds = %925, %875
  br label %927

927:                                              ; preds = %926, %874
  br label %928

928:                                              ; preds = %927, %758
  br label %1275

929:                                              ; preds = %584
  %930 = load i32, i32* %8, align 4
  %931 = icmp eq i32 %930, 3
  br i1 %931, label %932, label %1274

932:                                              ; preds = %929
  %933 = load i32, i32* %7, align 4
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %935, label %1104

935:                                              ; preds = %932
  %936 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %937 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %938 = call i32 @BTC_PRINT(i32 %936, i32 %937, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %939 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %940 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %939, i32 0, i32 1
  %941 = load i32, i32* %940, align 4
  %942 = icmp eq i32 %941, 1
  br i1 %942, label %943, label %945

943:                                              ; preds = %935
  %944 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %969

945:                                              ; preds = %935
  %946 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %947 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %946, i32 0, i32 1
  %948 = load i32, i32* %947, align 4
  %949 = icmp eq i32 %948, 2
  br i1 %949, label %950, label %952

950:                                              ; preds = %945
  %951 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %968

952:                                              ; preds = %945
  %953 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %954 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %953, i32 0, i32 1
  %955 = load i32, i32* %954, align 4
  %956 = icmp eq i32 %955, 3
  br i1 %956, label %957, label %959

957:                                              ; preds = %952
  %958 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %967

959:                                              ; preds = %952
  %960 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %961 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %960, i32 0, i32 1
  %962 = load i32, i32* %961, align 4
  %963 = icmp eq i32 %962, 4
  br i1 %963, label %964, label %966

964:                                              ; preds = %959
  %965 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 8)
  br label %966

966:                                              ; preds = %964, %959
  br label %967

967:                                              ; preds = %966, %957
  br label %968

968:                                              ; preds = %967, %950
  br label %969

969:                                              ; preds = %968, %943
  %970 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %971 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %970, i32 0, i32 1
  %972 = load i32, i32* %971, align 4
  %973 = icmp eq i32 %972, 9
  br i1 %973, label %974, label %976

974:                                              ; preds = %969
  %975 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %1000

976:                                              ; preds = %969
  %977 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %978 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %977, i32 0, i32 1
  %979 = load i32, i32* %978, align 4
  %980 = icmp eq i32 %979, 10
  br i1 %980, label %981, label %983

981:                                              ; preds = %976
  %982 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %999

983:                                              ; preds = %976
  %984 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %985 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %984, i32 0, i32 1
  %986 = load i32, i32* %985, align 4
  %987 = icmp eq i32 %986, 11
  br i1 %987, label %988, label %990

988:                                              ; preds = %983
  %989 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %998

990:                                              ; preds = %983
  %991 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %992 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %991, i32 0, i32 1
  %993 = load i32, i32* %992, align 4
  %994 = icmp eq i32 %993, 12
  br i1 %994, label %995, label %997

995:                                              ; preds = %990
  %996 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 16)
  br label %997

997:                                              ; preds = %995, %990
  br label %998

998:                                              ; preds = %997, %988
  br label %999

999:                                              ; preds = %998, %981
  br label %1000

1000:                                             ; preds = %999, %974
  %1001 = load i32, i32* %9, align 4
  %1002 = icmp eq i32 %1001, -1
  br i1 %1002, label %1003, label %1051

1003:                                             ; preds = %1000
  %1004 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1005 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1004, i32 0, i32 1
  %1006 = load i32, i32* %1005, align 4
  %1007 = icmp eq i32 %1006, 5
  br i1 %1007, label %1008, label %1010

1008:                                             ; preds = %1003
  %1009 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %1050

1010:                                             ; preds = %1003
  %1011 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1012 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1011, i32 0, i32 1
  %1013 = load i32, i32* %1012, align 4
  %1014 = icmp eq i32 %1013, 6
  br i1 %1014, label %1015, label %1017

1015:                                             ; preds = %1010
  %1016 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %1049

1017:                                             ; preds = %1010
  %1018 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1019 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1018, i32 0, i32 1
  %1020 = load i32, i32* %1019, align 4
  %1021 = icmp eq i32 %1020, 7
  br i1 %1021, label %1022, label %1024

1022:                                             ; preds = %1017
  %1023 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 8)
  br label %1048

1024:                                             ; preds = %1017
  %1025 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1026 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1025, i32 0, i32 1
  %1027 = load i32, i32* %1026, align 4
  %1028 = icmp eq i32 %1027, 13
  br i1 %1028, label %1029, label %1031

1029:                                             ; preds = %1024
  %1030 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %1047

1031:                                             ; preds = %1024
  %1032 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1033 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1032, i32 0, i32 1
  %1034 = load i32, i32* %1033, align 4
  %1035 = icmp eq i32 %1034, 14
  br i1 %1035, label %1036, label %1038

1036:                                             ; preds = %1031
  %1037 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %1046

1038:                                             ; preds = %1031
  %1039 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1040 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1039, i32 0, i32 1
  %1041 = load i32, i32* %1040, align 4
  %1042 = icmp eq i32 %1041, 15
  br i1 %1042, label %1043, label %1045

1043:                                             ; preds = %1038
  %1044 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 16)
  br label %1045

1045:                                             ; preds = %1043, %1038
  br label %1046

1046:                                             ; preds = %1045, %1036
  br label %1047

1047:                                             ; preds = %1046, %1029
  br label %1048

1048:                                             ; preds = %1047, %1022
  br label %1049

1049:                                             ; preds = %1048, %1015
  br label %1050

1050:                                             ; preds = %1049, %1008
  br label %1103

1051:                                             ; preds = %1000
  %1052 = load i32, i32* %9, align 4
  %1053 = icmp eq i32 %1052, 1
  br i1 %1053, label %1054, label %1102

1054:                                             ; preds = %1051
  %1055 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1056 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1055, i32 0, i32 1
  %1057 = load i32, i32* %1056, align 4
  %1058 = icmp eq i32 %1057, 8
  br i1 %1058, label %1059, label %1061

1059:                                             ; preds = %1054
  %1060 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %1101

1061:                                             ; preds = %1054
  %1062 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1063 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1062, i32 0, i32 1
  %1064 = load i32, i32* %1063, align 4
  %1065 = icmp eq i32 %1064, 7
  br i1 %1065, label %1066, label %1068

1066:                                             ; preds = %1061
  %1067 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %1100

1068:                                             ; preds = %1061
  %1069 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1070 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1069, i32 0, i32 1
  %1071 = load i32, i32* %1070, align 4
  %1072 = icmp eq i32 %1071, 6
  br i1 %1072, label %1073, label %1075

1073:                                             ; preds = %1068
  %1074 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 7)
  br label %1099

1075:                                             ; preds = %1068
  %1076 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1077 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1076, i32 0, i32 1
  %1078 = load i32, i32* %1077, align 4
  %1079 = icmp eq i32 %1078, 16
  br i1 %1079, label %1080, label %1082

1080:                                             ; preds = %1075
  %1081 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %1098

1082:                                             ; preds = %1075
  %1083 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1084 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1083, i32 0, i32 1
  %1085 = load i32, i32* %1084, align 4
  %1086 = icmp eq i32 %1085, 15
  br i1 %1086, label %1087, label %1089

1087:                                             ; preds = %1082
  %1088 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %1097

1089:                                             ; preds = %1082
  %1090 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1091 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1090, i32 0, i32 1
  %1092 = load i32, i32* %1091, align 4
  %1093 = icmp eq i32 %1092, 14
  br i1 %1093, label %1094, label %1096

1094:                                             ; preds = %1089
  %1095 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 15)
  br label %1096

1096:                                             ; preds = %1094, %1089
  br label %1097

1097:                                             ; preds = %1096, %1087
  br label %1098

1098:                                             ; preds = %1097, %1080
  br label %1099

1099:                                             ; preds = %1098, %1073
  br label %1100

1100:                                             ; preds = %1099, %1066
  br label %1101

1101:                                             ; preds = %1100, %1059
  br label %1102

1102:                                             ; preds = %1101, %1051
  br label %1103

1103:                                             ; preds = %1102, %1050
  br label %1273

1104:                                             ; preds = %932
  %1105 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %1106 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %1107 = call i32 @BTC_PRINT(i32 %1105, i32 %1106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %1108 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1108, i32 0, i32 1
  %1110 = load i32, i32* %1109, align 4
  %1111 = icmp eq i32 %1110, 5
  br i1 %1111, label %1112, label %1114

1112:                                             ; preds = %1104
  %1113 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1138

1114:                                             ; preds = %1104
  %1115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1115, i32 0, i32 1
  %1117 = load i32, i32* %1116, align 4
  %1118 = icmp eq i32 %1117, 6
  br i1 %1118, label %1119, label %1121

1119:                                             ; preds = %1114
  %1120 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1137

1121:                                             ; preds = %1114
  %1122 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1122, i32 0, i32 1
  %1124 = load i32, i32* %1123, align 4
  %1125 = icmp eq i32 %1124, 7
  br i1 %1125, label %1126, label %1128

1126:                                             ; preds = %1121
  %1127 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1136

1128:                                             ; preds = %1121
  %1129 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1129, i32 0, i32 1
  %1131 = load i32, i32* %1130, align 4
  %1132 = icmp eq i32 %1131, 8
  br i1 %1132, label %1133, label %1135

1133:                                             ; preds = %1128
  %1134 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 4)
  br label %1135

1135:                                             ; preds = %1133, %1128
  br label %1136

1136:                                             ; preds = %1135, %1126
  br label %1137

1137:                                             ; preds = %1136, %1119
  br label %1138

1138:                                             ; preds = %1137, %1112
  %1139 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1139, i32 0, i32 1
  %1141 = load i32, i32* %1140, align 4
  %1142 = icmp eq i32 %1141, 13
  br i1 %1142, label %1143, label %1145

1143:                                             ; preds = %1138
  %1144 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1169

1145:                                             ; preds = %1138
  %1146 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1146, i32 0, i32 1
  %1148 = load i32, i32* %1147, align 4
  %1149 = icmp eq i32 %1148, 14
  br i1 %1149, label %1150, label %1152

1150:                                             ; preds = %1145
  %1151 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1168

1152:                                             ; preds = %1145
  %1153 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1153, i32 0, i32 1
  %1155 = load i32, i32* %1154, align 4
  %1156 = icmp eq i32 %1155, 15
  br i1 %1156, label %1157, label %1159

1157:                                             ; preds = %1152
  %1158 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1167

1159:                                             ; preds = %1152
  %1160 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1160, i32 0, i32 1
  %1162 = load i32, i32* %1161, align 4
  %1163 = icmp eq i32 %1162, 16
  br i1 %1163, label %1164, label %1166

1164:                                             ; preds = %1159
  %1165 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 12)
  br label %1166

1166:                                             ; preds = %1164, %1159
  br label %1167

1167:                                             ; preds = %1166, %1157
  br label %1168

1168:                                             ; preds = %1167, %1150
  br label %1169

1169:                                             ; preds = %1168, %1143
  %1170 = load i32, i32* %9, align 4
  %1171 = icmp eq i32 %1170, -1
  br i1 %1171, label %1172, label %1220

1172:                                             ; preds = %1169
  %1173 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1173, i32 0, i32 1
  %1175 = load i32, i32* %1174, align 4
  %1176 = icmp eq i32 %1175, 1
  br i1 %1176, label %1177, label %1179

1177:                                             ; preds = %1172
  %1178 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1219

1179:                                             ; preds = %1172
  %1180 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1180, i32 0, i32 1
  %1182 = load i32, i32* %1181, align 4
  %1183 = icmp eq i32 %1182, 2
  br i1 %1183, label %1184, label %1186

1184:                                             ; preds = %1179
  %1185 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1218

1186:                                             ; preds = %1179
  %1187 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1187, i32 0, i32 1
  %1189 = load i32, i32* %1188, align 4
  %1190 = icmp eq i32 %1189, 3
  br i1 %1190, label %1191, label %1193

1191:                                             ; preds = %1186
  %1192 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 4)
  br label %1217

1193:                                             ; preds = %1186
  %1194 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1194, i32 0, i32 1
  %1196 = load i32, i32* %1195, align 4
  %1197 = icmp eq i32 %1196, 9
  br i1 %1197, label %1198, label %1200

1198:                                             ; preds = %1193
  %1199 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1216

1200:                                             ; preds = %1193
  %1201 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1201, i32 0, i32 1
  %1203 = load i32, i32* %1202, align 4
  %1204 = icmp eq i32 %1203, 10
  br i1 %1204, label %1205, label %1207

1205:                                             ; preds = %1200
  %1206 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1215

1207:                                             ; preds = %1200
  %1208 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1208, i32 0, i32 1
  %1210 = load i32, i32* %1209, align 4
  %1211 = icmp eq i32 %1210, 11
  br i1 %1211, label %1212, label %1214

1212:                                             ; preds = %1207
  %1213 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 12)
  br label %1214

1214:                                             ; preds = %1212, %1207
  br label %1215

1215:                                             ; preds = %1214, %1205
  br label %1216

1216:                                             ; preds = %1215, %1198
  br label %1217

1217:                                             ; preds = %1216, %1191
  br label %1218

1218:                                             ; preds = %1217, %1184
  br label %1219

1219:                                             ; preds = %1218, %1177
  br label %1272

1220:                                             ; preds = %1169
  %1221 = load i32, i32* %9, align 4
  %1222 = icmp eq i32 %1221, 1
  br i1 %1222, label %1223, label %1271

1223:                                             ; preds = %1220
  %1224 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1224, i32 0, i32 1
  %1226 = load i32, i32* %1225, align 4
  %1227 = icmp eq i32 %1226, 4
  br i1 %1227, label %1228, label %1230

1228:                                             ; preds = %1223
  %1229 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1270

1230:                                             ; preds = %1223
  %1231 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1231, i32 0, i32 1
  %1233 = load i32, i32* %1232, align 4
  %1234 = icmp eq i32 %1233, 3
  br i1 %1234, label %1235, label %1237

1235:                                             ; preds = %1230
  %1236 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1269

1237:                                             ; preds = %1230
  %1238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1238, i32 0, i32 1
  %1240 = load i32, i32* %1239, align 4
  %1241 = icmp eq i32 %1240, 2
  br i1 %1241, label %1242, label %1244

1242:                                             ; preds = %1237
  %1243 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 3)
  br label %1268

1244:                                             ; preds = %1237
  %1245 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1245, i32 0, i32 1
  %1247 = load i32, i32* %1246, align 4
  %1248 = icmp eq i32 %1247, 12
  br i1 %1248, label %1249, label %1251

1249:                                             ; preds = %1244
  %1250 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1267

1251:                                             ; preds = %1244
  %1252 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1252, i32 0, i32 1
  %1254 = load i32, i32* %1253, align 4
  %1255 = icmp eq i32 %1254, 11
  br i1 %1255, label %1256, label %1258

1256:                                             ; preds = %1251
  %1257 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1266

1258:                                             ; preds = %1251
  %1259 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1259, i32 0, i32 1
  %1261 = load i32, i32* %1260, align 4
  %1262 = icmp eq i32 %1261, 10
  br i1 %1262, label %1263, label %1265

1263:                                             ; preds = %1258
  %1264 = call i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32 11)
  br label %1265

1265:                                             ; preds = %1263, %1258
  br label %1266

1266:                                             ; preds = %1265, %1256
  br label %1267

1267:                                             ; preds = %1266, %1249
  br label %1268

1268:                                             ; preds = %1267, %1242
  br label %1269

1269:                                             ; preds = %1268, %1235
  br label %1270

1270:                                             ; preds = %1269, %1228
  br label %1271

1271:                                             ; preds = %1270, %1220
  br label %1272

1272:                                             ; preds = %1271, %1219
  br label %1273

1273:                                             ; preds = %1272, %1103
  br label %1274

1274:                                             ; preds = %1273, %929
  br label %1275

1275:                                             ; preds = %1274, %928
  br label %1276

1276:                                             ; preds = %1275, %583
  br label %1277

1277:                                             ; preds = %1276, %117
  %1278 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1278, i32 0, i32 1
  %1280 = load i32, i32* %1279, align 4
  %1281 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1281, i32 0, i32 2
  %1283 = load i32, i32* %1282, align 4
  %1284 = icmp ne i32 %1280, %1283
  br i1 %1284, label %1285, label %1335

1285:                                             ; preds = %1277
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %1286 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %1287 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %1288 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1288, i32 0, i32 1
  %1290 = load i32, i32* %1289, align 4
  %1291 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1291, i32 0, i32 2
  %1293 = load i32, i32* %1292, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = inttoptr i64 %1294 to i8*
  %1296 = call i32 @BTC_PRINT(i32 %1286, i32 %1287, i8* %1295)
  %1297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %1298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1297, i32 0, i32 0
  %1299 = load i32 (%struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32*)** %1298, align 8
  %1300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %1301 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %1302 = call i32 %1299(%struct.TYPE_9__* %1300, i32 %1301, i32* %11)
  %1303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %1304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1303, i32 0, i32 0
  %1305 = load i32 (%struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32*)** %1304, align 8
  %1306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %1307 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %1308 = call i32 %1305(%struct.TYPE_9__* %1306, i32 %1307, i32* %12)
  %1309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %1310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1309, i32 0, i32 0
  %1311 = load i32 (%struct.TYPE_9__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32, i32*)** %1310, align 8
  %1312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %1313 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %1314 = call i32 %1311(%struct.TYPE_9__* %1312, i32 %1313, i32* %13)
  %1315 = load i32, i32* %11, align 4
  %1316 = icmp ne i32 %1315, 0
  br i1 %1316, label %1330, label %1317

1317:                                             ; preds = %1285
  %1318 = load i32, i32* %12, align 4
  %1319 = icmp ne i32 %1318, 0
  br i1 %1319, label %1330, label %1320

1320:                                             ; preds = %1317
  %1321 = load i32, i32* %13, align 4
  %1322 = icmp ne i32 %1321, 0
  br i1 %1322, label %1330, label %1323

1323:                                             ; preds = %1320
  %1324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %1325 = load i32, i32* @NORMAL_EXEC, align 4
  %1326 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pCoexDm, align 8
  %1327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1326, i32 0, i32 2
  %1328 = load i32, i32* %1327, align 4
  %1329 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_9__* %1324, i32 %1325, i32 1, i32 %1328)
  br label %1334

1330:                                             ; preds = %1320, %1317, %1285
  %1331 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %1332 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %1333 = call i32 @BTC_PRINT(i32 %1331, i32 %1332, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  br label %1334

1334:                                             ; preds = %1330, %1323
  br label %1335

1335:                                             ; preds = %1334, %1277
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(i32) #1

declare dso_local i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
