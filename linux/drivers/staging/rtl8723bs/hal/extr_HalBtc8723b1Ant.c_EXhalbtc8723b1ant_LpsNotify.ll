; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_LpsNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_LpsNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@BTC_LPS_ENABLE = common dso_local global i64 0, align 8
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[BTCoex], LPS ENABLE notify\0A\00", align 1
@pCoexSta = common dso_local global %struct.TYPE_5__* null, align 8
@BTC_LPS_DISABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"[BTCoex], LPS DISABLE notify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_LpsNotify(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  br label %36

15:                                               ; preds = %9
  %16 = load i64, i64* @BTC_LPS_ENABLE, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %21 = load i32, i32* @INTF_NOTIFY, align 4
  %22 = call i32 @BTC_PRINT(i32 %20, i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pCoexSta, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load i64, i64* @BTC_LPS_DISABLE, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %31 = load i32, i32* @INTF_NOTIFY, align 4
  %32 = call i32 @BTC_PRINT(i32 %30, i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pCoexSta, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %14, %35, %19
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
