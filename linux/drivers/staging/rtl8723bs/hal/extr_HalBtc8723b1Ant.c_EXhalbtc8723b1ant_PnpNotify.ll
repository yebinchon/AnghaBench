; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_PnpNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_PnpNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[BTCoex], Pnp notify\0A\00", align 1
@BTC_WIFI_PNP_SLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", align 1
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_ANT_PATH_BT = common dso_local global i32 0, align 4
@BTC_WIFI_PNP_WAKE_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_PnpNotify(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %6 = load i32, i32* @INTF_NOTIFY, align 4
  %7 = call i32 @BTC_PRINT(i32 %5, i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* @BTC_WIFI_PNP_SLEEP, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %13 = load i32, i32* @INTF_NOTIFY, align 4
  %14 = call i32 @BTC_PRINT(i32 %12, i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %17 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_10__* %15, i32 %16, i32 0, i32 0)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = load i32, i32* @NORMAL_EXEC, align 4
  %20 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__* %18, i32 %19, i32 0, i32 0)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load i32, i32* @NORMAL_EXEC, align 4
  %23 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__* %21, i32 %22, i32 2)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %26 = call i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__* %24, i32 %25, i32 0, i32 1)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %46

29:                                               ; preds = %2
  %30 = load i64, i64* @BTC_WIFI_PNP_WAKE_UP, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %35 = load i32, i32* @INTF_NOTIFY, align 4
  %36 = call i32 @BTC_PRINT(i32 %34, i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @halbtc8723b1ant_InitHwConfig(%struct.TYPE_10__* %39, i32 0, i32 0)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i32 @halbtc8723b1ant_InitCoexDm(%struct.TYPE_10__* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_10__* %43)
  br label %45

45:                                               ; preds = %33, %29
  br label %46

46:                                               ; preds = %45, %11
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_SetAntPath(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_InitHwConfig(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_InitCoexDm(%struct.TYPE_10__*) #1

declare dso_local i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
