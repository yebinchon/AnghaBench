; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_MonitorBtCtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_MonitorBtCtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32, i32)* }

@halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk = internal global i32 0, align 4
@pCoexSta = common dso_local global %struct.TYPE_9__* null, align 8
@bMaskLWord = common dso_local global i32 0, align 4
@bMaskHWord = common dso_local global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"[BTCoex], Hi-Pri Rx/Tx: %d/%d, Lo-Pri Rx/Tx: %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @halbtc8723b1ant_MonitorBtCtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_MonitorBtCtr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 65535, i32* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 65535, i32* %18, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 65535, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  store i32 65535, i32* %22, align 4
  br label %111

23:                                               ; preds = %1
  store i32 1904, i32* %3, align 4
  store i32 1908, i32* %4, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 %26(%struct.TYPE_8__* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @bMaskLWord, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @bMaskHWord, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 16
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 %39(%struct.TYPE_8__* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @bMaskLWord, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @bMaskHWord, align 4
  %48 = and i32 %46, %47
  %49 = ashr i32 %48, 16
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 1050
  br i1 %65, label %66, label %76

66:                                               ; preds = %23
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexSta, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %66, %23
  %77 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %78 = load i32, i32* @ALGO_TRACE, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @BTC_PRINT(i32 %77, i32 %78, i8* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = call i32 %88(%struct.TYPE_8__* %89, i32 1902, i32 12)
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %76
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, align 4
  %105 = load i32, i32* @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, align 4
  %106 = icmp sge i32 %105, 3
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = call i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_8__* %108)
  store i32 0, i32* @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, align 4
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %14, %110, %99, %96, %93, %76
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
