; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_MonitorBtCtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_MonitorBtCtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32, i32)* }

@bMaskLWord = common dso_local global i32 0, align 4
@bMaskHWord = common dso_local global i32 0, align 4
@pCoexSta = common dso_local global %struct.TYPE_8__* null, align 8
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_BT_MONITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"[BTCoex], High Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"[BTCoex], Low Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @halbtc8723b2ant_MonitorBtCtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_MonitorBtCtr(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1904, i32* %3, align 4
  store i32 1908, i32* %4, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 %12(%struct.TYPE_7__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @bMaskLWord, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @bMaskHWord, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %25(%struct.TYPE_7__* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @bMaskLWord, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @bMaskHWord, align 4
  %34 = and i32 %32, %33
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCoexSta, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCoexSta, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCoexSta, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCoexSta, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %49 = load i32, i32* @ALGO_BT_MONITOR, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @BTC_PRINT(i32 %48, i32 %49, i8* %56)
  %58 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %59 = load i32, i32* @ALGO_BT_MONITOR, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @BTC_PRINT(i32 %58, i32 %59, i8* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = call i32 %70(%struct.TYPE_7__* %71, i32 1902, i32 12)
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
