; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_TdmaDurationAdjustForAcl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_TdmaDurationAdjustForAcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@halbtc8723b1ant_TdmaDurationAdjustForAcl.up = internal global i32 0, align 4
@halbtc8723b1ant_TdmaDurationAdjustForAcl.dn = internal global i32 0, align 4
@halbtc8723b1ant_TdmaDurationAdjustForAcl.m = internal global i32 0, align 4
@halbtc8723b1ant_TdmaDurationAdjustForAcl.n = internal global i32 0, align 4
@halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount = internal global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[BTCoex], TdmaDurationAdjustForAcl()\0A\00", align 1
@BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN = common dso_local global i64 0, align 8
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN = common dso_local global i64 0, align 8
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT = common dso_local global i64 0, align 8
@pCoexDm = common dso_local global %struct.TYPE_4__* null, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@ALGO_TRACE_FW_DETAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter<3!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter>3!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"[BTCoex], ********** TDMA(on, %d) **********\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @halbtc8723b1ant_TdmaDurationAdjustForAcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_TdmaDurationAdjustForAcl(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %9 = load i32, i32* @ALGO_TRACE_FW, align 4
  %10 = call i32 @BTC_PRINT(i32 %8, i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18, %14, %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 9
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @NORMAL_EXEC, align 4
  %45 = call i32 @halbtc8723b1ant_PsTdma(i32 %43, i32 %44, i32 1, i32 9)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 9, i32* %47, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  store i32 1, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  store i32 3, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  br label %48

48:                                               ; preds = %42, %37, %32, %27, %22
  br label %314

49:                                               ; preds = %18
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %58 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %59 = call i32 @BTC_PRINT(i32 %57, i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @NORMAL_EXEC, align 4
  %62 = call i32 @halbtc8723b1ant_PsTdma(i32 %60, i32 %61, i32 1, i32 2)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 2, i32* %64, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  store i32 1, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  store i32 3, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  br label %314

65:                                               ; preds = %49
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pCoexSta, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %6, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pCoexSta, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pCoexSta, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 1050
  br i1 %75, label %81, label %76

76:                                               ; preds = %65
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pCoexSta, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 1250
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %65
  %82 = load i64, i64* %6, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %81, %76
  store i32 0, i32* %5, align 4
  %85 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %92 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %94 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  br label %97

97:                                               ; preds = %96, %89
  %98 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %99 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  store i32 3, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  store i32 1, i32* %5, align 4
  %102 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %103 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %104 = call i32 @BTC_PRINT(i32 %102, i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %97
  br label %156

106:                                              ; preds = %84
  %107 = load i64, i64* %6, align 8
  %108 = icmp sle i64 %107, 3
  br i1 %108, label %109, label %138

109:                                              ; preds = %106
  %110 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %112 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %114 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  br label %117

117:                                              ; preds = %116, %109
  %118 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  %122 = icmp sle i32 %121, 2
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  br label %127

126:                                              ; preds = %120
  store i32 1, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  br label %127

127:                                              ; preds = %126, %123
  %128 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %129 = icmp sge i32 %128, 20
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 20, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %133 = mul nsw i32 3, %132
  store i32 %133, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  store i32 -1, i32* %5, align 4
  %134 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %135 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %136 = call i32 @BTC_PRINT(i32 %134, i32 %135, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %137

137:                                              ; preds = %131, %117
  br label %155

138:                                              ; preds = %106
  %139 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  br label %145

144:                                              ; preds = %138
  store i32 1, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %147 = icmp sge i32 %146, 20
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 20, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  br label %149

149:                                              ; preds = %148, %145
  %150 = load i32, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %151 = mul nsw i32 3, %150
  store i32 %151, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  store i32 0, i32* @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  store i32 -1, i32* %5, align 4
  %152 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %153 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %154 = call i32 @BTC_PRINT(i32 %152, i32 %153, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %155

155:                                              ; preds = %149, %137
  br label %156

156:                                              ; preds = %155, %105
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %216

159:                                              ; preds = %156
  %160 = load i64, i64* %7, align 8
  %161 = call i64 @BT_INFO_8723B_1ANT_A2DP_BASIC_RATE(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %159
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %179

173:                                              ; preds = %168, %163
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @NORMAL_EXEC, align 4
  %176 = call i32 @halbtc8723b1ant_PsTdma(i32 %174, i32 %175, i32 1, i32 9)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i32 9, i32* %178, align 4
  br label %215

179:                                              ; preds = %168, %159
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @NORMAL_EXEC, align 4
  %187 = call i32 @halbtc8723b1ant_PsTdma(i32 %185, i32 %186, i32 1, i32 2)
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  store i32 2, i32* %189, align 4
  br label %214

190:                                              ; preds = %179
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32, i32* %3, align 4
  %197 = load i32, i32* @NORMAL_EXEC, align 4
  %198 = call i32 @halbtc8723b1ant_PsTdma(i32 %196, i32 %197, i32 1, i32 9)
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i32 9, i32* %200, align 4
  br label %213

201:                                              ; preds = %190
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 9
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* %3, align 4
  %208 = load i32, i32* @NORMAL_EXEC, align 4
  %209 = call i32 @halbtc8723b1ant_PsTdma(i32 %207, i32 %208, i32 1, i32 11)
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  store i32 11, i32* %211, align 4
  br label %212

212:                                              ; preds = %206, %201
  br label %213

213:                                              ; preds = %212, %195
  br label %214

214:                                              ; preds = %213, %184
  br label %215

215:                                              ; preds = %214, %173
  br label %286

216:                                              ; preds = %156
  %217 = load i32, i32* %5, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %276

219:                                              ; preds = %216
  %220 = load i64, i64* %7, align 8
  %221 = call i64 @BT_INFO_8723B_1ANT_A2DP_BASIC_RATE(i64 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %219
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %233, label %228

228:                                              ; preds = %223
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %239

233:                                              ; preds = %228, %223
  %234 = load i32, i32* %3, align 4
  %235 = load i32, i32* @NORMAL_EXEC, align 4
  %236 = call i32 @halbtc8723b1ant_PsTdma(i32 %234, i32 %235, i32 1, i32 9)
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  store i32 9, i32* %238, align 4
  br label %275

239:                                              ; preds = %228, %219
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 11
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = load i32, i32* %3, align 4
  %246 = load i32, i32* @NORMAL_EXEC, align 4
  %247 = call i32 @halbtc8723b1ant_PsTdma(i32 %245, i32 %246, i32 1, i32 9)
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  store i32 9, i32* %249, align 4
  br label %274

250:                                              ; preds = %239
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 9
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load i32, i32* %3, align 4
  %257 = load i32, i32* @NORMAL_EXEC, align 4
  %258 = call i32 @halbtc8723b1ant_PsTdma(i32 %256, i32 %257, i32 1, i32 2)
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  store i32 2, i32* %260, align 4
  br label %273

261:                                              ; preds = %250
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load i32, i32* %3, align 4
  %268 = load i32, i32* @NORMAL_EXEC, align 4
  %269 = call i32 @halbtc8723b1ant_PsTdma(i32 %267, i32 %268, i32 1, i32 1)
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %266, %261
  br label %273

273:                                              ; preds = %272, %255
  br label %274

274:                                              ; preds = %273, %244
  br label %275

275:                                              ; preds = %274, %233
  br label %285

276:                                              ; preds = %216
  %277 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %278 = load i32, i32* @ALGO_TRACE_FW_DETAIL, align 4
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = inttoptr i64 %282 to i8*
  %284 = call i32 @BTC_PRINT(i32 %277, i32 %278, i8* %283)
  br label %285

285:                                              ; preds = %276, %275
  br label %286

286:                                              ; preds = %285, %215
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 1
  br i1 %290, label %291, label %313

291:                                              ; preds = %286
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 2
  br i1 %295, label %296, label %313

296:                                              ; preds = %291
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 9
  br i1 %300, label %301, label %313

301:                                              ; preds = %296
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 11
  br i1 %305, label %306, label %313

306:                                              ; preds = %301
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* @NORMAL_EXEC, align 4
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pCoexDm, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @halbtc8723b1ant_PsTdma(i32 %307, i32 %308, i32 1, i32 %311)
  br label %313

313:                                              ; preds = %306, %301, %296, %291, %286
  br label %314

314:                                              ; preds = %48, %313, %54
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_PsTdma(i32, i32, i32, i32) #1

declare dso_local i64 @BT_INFO_8723B_1ANT_A2DP_BASIC_RATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
