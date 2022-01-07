; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_HaltNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_HaltNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i32, i32)* }

@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"[BTCoex], Halt notify\0A\00", align 1
@BTC_BT_REG_RF = common dso_local global i32 0, align 4
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b2ant_HaltNotify(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %4 = load i32, i32* @INTF_NOTIFY, align 4
  %5 = call i32 @BTC_PRINT(i32 %3, i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call i32 @halbtc8723b2ant_WifiOffHwCfg(%struct.TYPE_7__* %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load i32, i32* @BTC_BT_REG_RF, align 4
  %13 = call i32 %10(%struct.TYPE_7__* %11, i32 %12, i32 60, i32 21)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load i32, i32* @FORCE_EXEC, align 4
  %16 = call i32 @halbtc8723b2ant_IgnoreWlanAct(%struct.TYPE_7__* %14, i32 %15, i32 1)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  %19 = call i32 @EXhalbtc8723b2ant_MediaStatusNotify(%struct.TYPE_7__* %17, i32 %18)
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b2ant_WifiOffHwCfg(%struct.TYPE_7__*) #1

declare dso_local i32 @halbtc8723b2ant_IgnoreWlanAct(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @EXhalbtc8723b2ant_MediaStatusNotify(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
