; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_roc_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_roc_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"roc complete\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wlcore_roc_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_roc_completed(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %4 = load i32, i32* @DEBUG_MAC80211, align 4
  %5 = call i32 @wl1271_debug(i32 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WLCORE_STATE_ON, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_runtime_put_noidle(i32 %30)
  br label %43

32:                                               ; preds = %20
  %33 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %34 = call i32 @__wlcore_roc_completed(%struct.wl1271* %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_mark_last_busy(i32 %37)
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pm_runtime_put_autosuspend(i32 %41)
  br label %43

43:                                               ; preds = %32, %27, %17
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @__wlcore_roc_completed(%struct.wl1271*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
