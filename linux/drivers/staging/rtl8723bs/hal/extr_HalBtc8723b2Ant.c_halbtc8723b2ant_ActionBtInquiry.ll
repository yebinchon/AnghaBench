; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionBtInquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionBtInquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)* }

@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@FORCE_EXEC = common dso_local global i32 0, align 4
@pCoexDm = common dso_local global %struct.TYPE_15__* null, align 8
@BTC_ANT_WIFI_AT_AUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @halbtc8723b2ant_ActionBtInquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_ActionBtInquiry(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %7 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %6, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %10 = call i32 %7(%struct.TYPE_14__* %8, i32 %9, i32* %4)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %12, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %16 = call i32 %13(%struct.TYPE_14__* %14, i32 %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = load i32, i32* @NORMAL_EXEC, align 4
  %22 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_14__* %20, i32 %21, i32 7)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = load i32, i32* @NORMAL_EXEC, align 4
  %25 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_14__* %23, i32 %24, i32 1, i32 3)
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = load i32, i32* @NORMAL_EXEC, align 4
  %29 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_14__* %27, i32 %28, i32 0)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = load i32, i32* @NORMAL_EXEC, align 4
  %32 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_14__* %30, i32 %31, i32 0, i32 1)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = load i32, i32* @FORCE_EXEC, align 4
  %36 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_14__* %34, i32 %35, i32 6)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = load i32, i32* @NORMAL_EXEC, align 4
  %39 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %37, i32 %38, i32 0)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_14__* %40, i32 0, i32 0, i32 0, i32 0)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_14__* %42, i32 0, i32 0, i32 0, i32 24)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = call i32 %48(%struct.TYPE_14__* %49, i32 2376)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pCoexDm, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = load i32, i32* @BTC_ANT_WIFI_AT_AUX, align 4
  %55 = call i32 @halbtc8723b2ant_SetAntPath(%struct.TYPE_14__* %53, i32 %54, i32 0, i32 0)
  ret void
}

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SetAntPath(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
