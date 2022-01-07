; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_SetAgcTable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_SetAgcTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 (%struct.TYPE_30__*, i32, i32*)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)* }

@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_SW_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[BTCoex], BB Agc Table On!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"[BTCoex], BB Agc Table Off!\0A\00", align 1
@BTC_RF_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"[BTCoex], Agc Table On!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"[BTCoex], Agc Table Off!\0A\00", align 1
@BTC_SET_U1_RSSI_ADJ_VAL_FOR_AGC_TABLE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, i32)* @halbtc8723b2ant_SetAgcTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_SetAgcTable(%struct.TYPE_30__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %10 = load i32, i32* @ALGO_TRACE_SW_EXEC, align 4
  %11 = call i32 @BTC_PRINT(i32 %9, i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 2
  %14 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %13, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = call i32 %14(%struct.TYPE_30__* %15, i32 3192, i32 1847197697)
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 2
  %19 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %18, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %21 = call i32 %19(%struct.TYPE_30__* %20, i32 3192, i32 1830486017)
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 2
  %24 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %23, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %26 = call i32 %24(%struct.TYPE_30__* %25, i32 3192, i32 1813774337)
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 2
  %29 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %31 = call i32 %29(%struct.TYPE_30__* %30, i32 3192, i32 1797062657)
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %33, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %36 = call i32 %34(%struct.TYPE_30__* %35, i32 3192, i32 1780350977)
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 2
  %39 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %38, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %41 = call i32 %39(%struct.TYPE_30__* %40, i32 3192, i32 1763639297)
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 2
  %44 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %46 = call i32 %44(%struct.TYPE_30__* %45, i32 3192, i32 1746927617)
  br label %86

47:                                               ; preds = %2
  %48 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %49 = load i32, i32* @ALGO_TRACE_SW_EXEC, align 4
  %50 = call i32 @BTC_PRINT(i32 %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 2
  %53 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %52, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %55 = call i32 %53(%struct.TYPE_30__* %54, i32 3192, i32 -1441136639)
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %57, align 8
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %60 = call i32 %58(%struct.TYPE_30__* %59, i32 3192, i32 -1457848319)
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 2
  %63 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %62, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %65 = call i32 %63(%struct.TYPE_30__* %64, i32 3192, i32 -1474559999)
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 2
  %68 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %67, align 8
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %70 = call i32 %68(%struct.TYPE_30__* %69, i32 3192, i32 -1491271679)
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 2
  %73 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %72, align 8
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %75 = call i32 %73(%struct.TYPE_30__* %74, i32 3192, i32 -1507983359)
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 2
  %78 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %77, align 8
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %80 = call i32 %78(%struct.TYPE_30__* %79, i32 3192, i32 -1524695039)
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 2
  %83 = load i32 (%struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32)** %82, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %85 = call i32 %83(%struct.TYPE_30__* %84, i32 3192, i32 -1541406719)
  br label %86

86:                                               ; preds = %47, %8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %91 = load i32, i32* @BTC_RF_A, align 4
  %92 = call i32 %89(%struct.TYPE_30__* %90, i32 %91, i32 239, i32 1048575, i32 8192)
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %86
  %96 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %97 = load i32, i32* @ALGO_TRACE_SW_EXEC, align 4
  %98 = call i32 @BTC_PRINT(i32 %96, i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 1
  %101 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %100, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %103 = load i32, i32* @BTC_RF_A, align 4
  %104 = call i32 %101(%struct.TYPE_30__* %102, i32 %103, i32 59, i32 1048575, i32 233471)
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %106, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %109 = load i32, i32* @BTC_RF_A, align 4
  %110 = call i32 %107(%struct.TYPE_30__* %108, i32 %109, i32 59, i32 1048575, i32 233470)
  br label %127

111:                                              ; preds = %86
  %112 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %113 = load i32, i32* @ALGO_TRACE_SW_EXEC, align 4
  %114 = call i32 @BTC_PRINT(i32 %112, i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %116, align 8
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %119 = load i32, i32* @BTC_RF_A, align 4
  %120 = call i32 %117(%struct.TYPE_30__* %118, i32 %119, i32 59, i32 1048575, i32 229571)
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %122, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %125 = load i32, i32* @BTC_RF_A, align 4
  %126 = call i32 %123(%struct.TYPE_30__* %124, i32 %125, i32 59, i32 1048575, i32 167142)
  br label %127

127:                                              ; preds = %111, %95
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 1
  %130 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %129, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %132 = load i32, i32* @BTC_RF_A, align 4
  %133 = call i32 %130(%struct.TYPE_30__* %131, i32 %132, i32 239, i32 1048575, i32 0)
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  %136 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %135, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %138 = load i32, i32* @BTC_RF_A, align 4
  %139 = call i32 %136(%struct.TYPE_30__* %137, i32 %138, i32 237, i32 1048575, i32 1)
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %127
  %143 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %144 = load i32, i32* @ALGO_TRACE_SW_EXEC, align 4
  %145 = call i32 @BTC_PRINT(i32 %143, i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %147, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %150 = load i32, i32* @BTC_RF_A, align 4
  %151 = call i32 %148(%struct.TYPE_30__* %149, i32 %150, i32 64, i32 1048575, i32 233471)
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %153, align 8
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %156 = load i32, i32* @BTC_RF_A, align 4
  %157 = call i32 %154(%struct.TYPE_30__* %155, i32 %156, i32 64, i32 1048575, i32 233470)
  br label %174

158:                                              ; preds = %127
  %159 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %160 = load i32, i32* @ALGO_TRACE_SW_EXEC, align 4
  %161 = call i32 @BTC_PRINT(i32 %159, i32 %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 1
  %164 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %163, align 8
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %166 = load i32, i32* @BTC_RF_A, align 4
  %167 = call i32 %164(%struct.TYPE_30__* %165, i32 %166, i32 64, i32 1048575, i32 229571)
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 1
  %170 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %169, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %172 = load i32, i32* @BTC_RF_A, align 4
  %173 = call i32 %170(%struct.TYPE_30__* %171, i32 %172, i32 64, i32 1048575, i32 167142)
  br label %174

174:                                              ; preds = %158, %142
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 1
  %177 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32)** %176, align 8
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %179 = load i32, i32* @BTC_RF_A, align 4
  %180 = call i32 %177(%struct.TYPE_30__* %178, i32 %179, i32 237, i32 1048575, i32 0)
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  store i32 8, i32* %5, align 4
  br label %184

184:                                              ; preds = %183, %174
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 0
  %187 = load i32 (%struct.TYPE_30__*, i32, i32*)*, i32 (%struct.TYPE_30__*, i32, i32*)** %186, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %189 = load i32, i32* @BTC_SET_U1_RSSI_ADJ_VAL_FOR_AGC_TABLE_ON, align 4
  %190 = call i32 %187(%struct.TYPE_30__* %188, i32 %189, i32* %5)
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
