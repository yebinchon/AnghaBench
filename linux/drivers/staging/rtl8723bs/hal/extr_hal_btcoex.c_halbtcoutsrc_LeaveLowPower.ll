; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_LeaveLowPower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_LeaveLowPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.adapter* }
%struct.adapter = type { i32 }

@_FAIL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BTCOEX_ALIVE = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i64 0, align 8
@LPS_RPWM_WAIT_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @halbtcoutsrc_LeaveLowPower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtcoutsrc_LeaveLowPower(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %3, align 8
  %11 = load i64, i64* @_FAIL, align 8
  store i64 %11, i64* %4, align 8
  store i64 30, i64* %7, align 8
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load i32, i32* @BTCOEX_ALIVE, align 4
  %16 = call i64 @rtw_register_task_alive(%struct.adapter* %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @_SUCCESS, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %33

21:                                               ; preds = %13
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %22, %23
  %25 = call i64 @jiffies_to_msecs(i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %33

30:                                               ; preds = %21
  %31 = call i32 @msleep(i32 1)
  br label %32

32:                                               ; preds = %30
  br i1 true, label %13, label %33

33:                                               ; preds = %32, %29, %20
  ret void
}

declare dso_local i64 @rtw_register_task_alive(%struct.adapter*, i32) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
