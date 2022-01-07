; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_plt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_plt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i64, i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"power down\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"cannot power down because not in PLT state: %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@WL1271_PSM_ILLEGAL = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i32 0, align 4
@PLT_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_plt_stop(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @wl1271_notice(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %6 = call i32 @wlcore_disable_interrupts(%struct.wl1271* %5)
  %7 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %19 = call i32 @wlcore_enable_interrupts(%struct.wl1271* %18)
  %20 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wl1271_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %1
  %27 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = call i32 @wl1271_flush_deferred_work(%struct.wl1271* %30)
  %32 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 9
  %34 = call i32 @cancel_work_sync(i32* %33)
  %35 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 8
  %37 = call i32 @cancel_work_sync(i32* %36)
  %38 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 7
  %40 = call i32 @cancel_delayed_work_sync(i32* %39)
  %41 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = call i32 @wl1271_power_off(%struct.wl1271* %44)
  %46 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @WL1271_PSM_ILLEGAL, align 4
  %49 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %50 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @WLCORE_STATE_OFF, align 4
  %52 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @PLT_OFF, align 4
  %57 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %26, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @wl1271_notice(i8*) #1

declare dso_local i32 @wlcore_disable_interrupts(%struct.wl1271*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wlcore_enable_interrupts(%struct.wl1271*) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl1271_flush_deferred_work(%struct.wl1271*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wl1271_power_off(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
