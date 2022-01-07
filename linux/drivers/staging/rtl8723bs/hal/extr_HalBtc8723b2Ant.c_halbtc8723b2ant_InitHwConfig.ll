; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_InitHwConfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_InitHwConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)* }

@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], 2Ant Init HW Config!!\0A\00", align 1
@BTC_RF_A = common dso_local global i32 0, align 4
@pCoexDm = common dso_local global %struct.TYPE_13__* null, align 8
@BTC_ANT_WIFI_AT_MAIN = common dso_local global i32 0, align 4
@FORCE_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @halbtc8723b2ant_InitHwConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_InitHwConfig(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %7 = load i32, i32* @INTF_INIT, align 4
  %8 = call i32 @BTC_PRINT(i32 %6, i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = load i32, i32* @BTC_RF_A, align 4
  %14 = call i32 %11(%struct.TYPE_12__* %12, i32 %13, i32 30, i32 1048575)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pCoexDm, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = call i32 %19(%struct.TYPE_12__* %20, i32 1936)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 192
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 5
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 %28(%struct.TYPE_12__* %29, i32 1936, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = load i32, i32* @BTC_ANT_WIFI_AT_MAIN, align 4
  %34 = call i32 @halbtc8723b2ant_SetAntPath(%struct.TYPE_12__* %32, i32 %33, i32 1, i32 0)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load i32, i32* @FORCE_EXEC, align 4
  %37 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_12__* %35, i32 %36, i32 0)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call i32 %40(%struct.TYPE_12__* %41, i32 1902, i32 12)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = call i32 %45(%struct.TYPE_12__* %46, i32 1912, i32 3)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = call i32 %50(%struct.TYPE_12__* %51, i32 64, i32 32, i32 1)
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b2ant_SetAntPath(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
