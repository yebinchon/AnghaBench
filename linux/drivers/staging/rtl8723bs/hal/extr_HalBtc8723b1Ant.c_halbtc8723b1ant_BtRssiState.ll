; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_BtRssiState.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_BtRssiState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@pCoexSta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_BT_RSSI_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[BTCoex], BT Rssi state switch to High\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[BTCoex], BT Rssi state stay at Low\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT Rssi state switch to Low\0A\00", align 1
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"[BTCoex], BT Rssi state stay at High\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[BTCoex], BT Rssi thresh error!!\0A\00", align 1
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"[BTCoex], BT Rssi state switch to Medium\0A\00", align 1
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"[BTCoex], BT Rssi state stay at Medium\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @halbtc8723b1ant_BtRssiState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc8723b1ant_BtRssiState(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %67

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %25, %18
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %41 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %42 = call i32 @BTC_PRINT(i32 %40, i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %49

43:                                               ; preds = %32
  %44 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %47 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %48 = call i32 @BTC_PRINT(i32 %46, i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %38
  br label %66

50:                                               ; preds = %25
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %58 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %59 = call i32 @BTC_PRINT(i32 %57, i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %63 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %64 = call i32 @BTC_PRINT(i32 %62, i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65, %49
  br label %176

67:                                               ; preds = %3
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %175

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %76 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %77 = call i32 @BTC_PRINT(i32 %75, i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  br label %181

81:                                               ; preds = %70
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT, align 4
  %99 = add nsw i32 %97, %98
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %105 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %106 = call i32 @BTC_PRINT(i32 %104, i32 %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %113

107:                                              ; preds = %95
  %108 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %111 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %112 = call i32 @BTC_PRINT(i32 %110, i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %107, %101
  br label %174

114:                                              ; preds = %88
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %157

128:                                              ; preds = %121, %114
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp sge i32 %129, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %137 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %138 = call i32 @BTC_PRINT(i32 %136, i32 %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %156

139:                                              ; preds = %128
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %147 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %148 = call i32 @BTC_PRINT(i32 %146, i32 %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %155

149:                                              ; preds = %139
  %150 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %153 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %154 = call i32 @BTC_PRINT(i32 %152, i32 %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %155

155:                                              ; preds = %149, %143
  br label %156

156:                                              ; preds = %155, %134
  br label %173

157:                                              ; preds = %121
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %165 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %166 = call i32 @BTC_PRINT(i32 %164, i32 %165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %172

167:                                              ; preds = %157
  %168 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %170 = load i32, i32* @ALGO_BT_RSSI_STATE, align 4
  %171 = call i32 @BTC_PRINT(i32 %169, i32 %170, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %172

172:                                              ; preds = %167, %161
  br label %173

173:                                              ; preds = %172, %156
  br label %174

174:                                              ; preds = %173, %113
  br label %175

175:                                              ; preds = %174, %67
  br label %176

176:                                              ; preds = %175, %66
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pCoexSta, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %74
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
