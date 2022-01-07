; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_regdomain_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_regdomain_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64, i32, i32 }

@WLCORE_QUIRK_REGDOMAIN_CONF = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlcore_regdomain_config(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WLCORE_QUIRK_REGDOMAIN_CONF, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WLCORE_STATE_ON, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %49

24:                                               ; preds = %11
  %25 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pm_runtime_get_sync(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %49

32:                                               ; preds = %24
  %33 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %34 = call i32 @wlcore_cmd_regdomain_config_locked(%struct.wl1271* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %39 = call i32 @wl12xx_queue_recovery_work(%struct.wl1271* %38)
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_mark_last_busy(i32 %43)
  %45 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_put_autosuspend(i32 %47)
  br label %49

49:                                               ; preds = %40, %37, %31, %23
  %50 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @wlcore_cmd_regdomain_config_locked(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_queue_recovery_work(%struct.wl1271*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
