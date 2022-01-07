; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_set_frag_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_set_frag_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }

@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"wl1271_op_set_frag_threshold failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @wl1271_op_set_frag_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_set_frag_threshold(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  store %struct.wl1271* %9, %struct.wl1271** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WLCORE_STATE_ON, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pm_runtime_get_sync(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pm_runtime_put_noidle(i32 %34)
  br label %54

36:                                               ; preds = %24
  %37 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @wl1271_acx_frag_threshold(%struct.wl1271* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @wl1271_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_mark_last_busy(i32 %48)
  %50 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pm_runtime_put_autosuspend(i32 %52)
  br label %54

54:                                               ; preds = %45, %31, %21
  %55 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl1271_acx_frag_threshold(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
