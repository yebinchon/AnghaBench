; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_PnpNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_PnpNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[BTCoex], Pnp notify\0A\00", align 1
@BTC_WIFI_PNP_SLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", align 1
@BTC_WIFI_PNP_WAKE_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b2ant_PnpNotify(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %6 = load i32, i32* @INTF_NOTIFY, align 4
  %7 = call i32 @BTC_PRINT(i32 %5, i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* @BTC_WIFI_PNP_SLEEP, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %13 = load i32, i32* @INTF_NOTIFY, align 4
  %14 = call i32 @BTC_PRINT(i32 %12, i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %30

15:                                               ; preds = %2
  %16 = load i64, i64* @BTC_WIFI_PNP_WAKE_UP, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %21 = load i32, i32* @INTF_NOTIFY, align 4
  %22 = call i32 @BTC_PRINT(i32 %20, i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @halbtc8723b2ant_InitHwConfig(i32 %23, i32 0)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @halbtc8723b2ant_InitCoexDm(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @halbtc8723b2ant_QueryBtInfo(i32 %27)
  br label %29

29:                                               ; preds = %19, %15
  br label %30

30:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b2ant_InitHwConfig(i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_InitCoexDm(i32) #1

declare dso_local i32 @halbtc8723b2ant_QueryBtInfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
