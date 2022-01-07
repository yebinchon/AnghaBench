; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_WifiRssiState.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_WifiRssiState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i64*)* }

@pCoexSta = common dso_local global %struct.TYPE_6__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_WIFI_RSSI_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[BTCoex], wifi RSSI state switch to High\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[BTCoex], wifi RSSI state stay at Low\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[BTCoex], wifi RSSI state switch to Low\0A\00", align 1
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"[BTCoex], wifi RSSI state stay at High\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"[BTCoex], wifi RSSI thresh error!!\0A\00", align 1
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"[BTCoex], wifi RSSI state switch to Medium\0A\00", align 1
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"[BTCoex], wifi RSSI state stay at Medium\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64, i64, i64)* @halbtc8723b2ant_WifiRssiState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_5__*, i32, i64*)*, i32 (%struct.TYPE_5__*, i32, i64*)** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %25 = call i32 %22(%struct.TYPE_5__* %23, i32 %24, i64* %12)
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 2
  br i1 %27, label %28, label %79

28:                                               ; preds = %5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %37, %28
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT, align 8
  %50 = add i64 %48, %49
  %51 = icmp uge i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %53, i64* %13, align 8
  %54 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %55 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %56 = call i32 @BTC_PRINT(i32 %54, i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %62

57:                                               ; preds = %46
  %58 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  store i64 %58, i64* %13, align 8
  %59 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %60 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %61 = call i32 @BTC_PRINT(i32 %59, i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %52
  br label %78

63:                                               ; preds = %37
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  store i64 %68, i64* %13, align 8
  %69 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %70 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %71 = call i32 @BTC_PRINT(i32 %69, i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %77

72:                                               ; preds = %63
  %73 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  store i64 %73, i64* %13, align 8
  %74 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %75 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %76 = call i32 @BTC_PRINT(i32 %74, i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %62
  br label %194

79:                                               ; preds = %5
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %82, label %193

82:                                               ; preds = %79
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %88 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %89 = call i32 @BTC_PRINT(i32 %87, i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %6, align 8
  br label %202

96:                                               ; preds = %82
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %114, label %105

105:                                              ; preds = %96
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %105, %96
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT, align 8
  %118 = add i64 %116, %117
  %119 = icmp uge i64 %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  store i64 %121, i64* %13, align 8
  %122 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %123 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %124 = call i32 @BTC_PRINT(i32 %122, i32 %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %130

125:                                              ; preds = %114
  %126 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  store i64 %126, i64* %13, align 8
  %127 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %128 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %129 = call i32 @BTC_PRINT(i32 %127, i32 %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %120
  br label %192

131:                                              ; preds = %105
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %149, label %140

140:                                              ; preds = %131
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %8, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %140, %131
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT, align 8
  %153 = add i64 %151, %152
  %154 = icmp uge i64 %150, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %156, i64* %13, align 8
  %157 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %158 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %159 = call i32 @BTC_PRINT(i32 %157, i32 %158, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %175

160:                                              ; preds = %149
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  store i64 %165, i64* %13, align 8
  %166 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %167 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %168 = call i32 @BTC_PRINT(i32 %166, i32 %167, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %174

169:                                              ; preds = %160
  %170 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  store i64 %170, i64* %13, align 8
  %171 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %172 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %173 = call i32 @BTC_PRINT(i32 %171, i32 %172, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %174

174:                                              ; preds = %169, %164
  br label %175

175:                                              ; preds = %174, %155
  br label %191

176:                                              ; preds = %140
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %11, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  store i64 %181, i64* %13, align 8
  %182 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %183 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %184 = call i32 @BTC_PRINT(i32 %182, i32 %183, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %190

185:                                              ; preds = %176
  %186 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  store i64 %186, i64* %13, align 8
  %187 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %188 = load i32, i32* @ALGO_WIFI_RSSI_STATE, align 4
  %189 = call i32 @BTC_PRINT(i32 %187, i32 %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %185, %180
  br label %191

191:                                              ; preds = %190, %175
  br label %192

192:                                              ; preds = %191, %130
  br label %193

193:                                              ; preds = %192, %79
  br label %194

194:                                              ; preds = %193, %78
  %195 = load i64, i64* %13, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexSta, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* %8, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  store i64 %195, i64* %200, align 8
  %201 = load i64, i64* %13, align 8
  store i64 %201, i64* %6, align 8
  br label %202

202:                                              ; preds = %194, %86
  %203 = load i64, i64* %6, align 8
  ret i64 %203
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
