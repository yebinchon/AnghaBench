; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_PowerSaveState.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_PowerSaveState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32, i32*)* }

@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@BTC_SET_ACT_NORMAL_LPS = common dso_local global i32 0, align 4
@pCoexSta = common dso_local global %struct.TYPE_12__* null, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_SET_ACT_ENTER_LPS = common dso_local global i32 0, align 4
@BTC_SET_ACT_LEAVE_LPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32, i32)* @halbtc8723b1ant_PowerSaveState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_PowerSaveState(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %59 [
    i32 128, label %11
    i32 129, label %26
    i32 130, label %48
  ]

11:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %17 = call i32 %14(%struct.TYPE_11__* %15, i32 %16, i32* %9)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = load i32, i32* @BTC_SET_ACT_NORMAL_LPS, align 4
  %23 = call i32 %20(%struct.TYPE_11__* %21, i32 %22, i32* null)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %60

26:                                               ; preds = %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = call i32 @halbtc8723b1ant_PsTdmaCheckForPowerSaveState(%struct.TYPE_11__* %27, i32 1)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = load i32, i32* @NORMAL_EXEC, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @halbtc8723b1ant_LpsRpwm(%struct.TYPE_11__* %29, i32 %30, i32 %31, i32 %32)
  store i32 1, i32* %9, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %39 = call i32 %36(%struct.TYPE_11__* %37, i32 %38, i32* %9)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = load i32, i32* @BTC_SET_ACT_ENTER_LPS, align 4
  %45 = call i32 %42(%struct.TYPE_11__* %43, i32 %44, i32* null)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %60

48:                                               ; preds = %4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = call i32 @halbtc8723b1ant_PsTdmaCheckForPowerSaveState(%struct.TYPE_11__* %49, i32 0)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i32, i32* @BTC_SET_ACT_LEAVE_LPS, align 4
  %56 = call i32 %53(%struct.TYPE_11__* %54, i32 %55, i32* null)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pCoexSta, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %60

59:                                               ; preds = %4
  br label %60

60:                                               ; preds = %59, %48, %26, %11
  ret void
}

declare dso_local i32 @halbtc8723b1ant_PsTdmaCheckForPowerSaveState(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @halbtc8723b1ant_LpsRpwm(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
