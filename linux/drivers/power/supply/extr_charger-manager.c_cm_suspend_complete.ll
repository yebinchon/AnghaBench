; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_suspend_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_suspend_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.charger_manager = type { i32, i32, i64 }

@cm_suspended = common dso_local global i32 0, align 4
@cm_timer_set = common dso_local global i32 0, align 4
@cm_timer = common dso_local global i32 0, align 4
@cm_suspend_duration_ms = common dso_local global i64 0, align 8
@setup_polling = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CM_JIFFIES_SMALL = common dso_local global i64 0, align 8
@cm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @cm_suspend_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_suspend_complete(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.charger_manager* @dev_get_drvdata(%struct.device* %7)
  store %struct.charger_manager* %8, %struct.charger_manager** %3, align 8
  %9 = load i32, i32* @cm_suspended, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* @cm_suspended, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* @cm_timer_set, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* @cm_timer, align 4
  %17 = call i32 @alarm_cancel(i32 %16)
  store i32 0, i32* @cm_timer_set, align 4
  %18 = load i32, i32* @cm_timer, align 4
  %19 = call i32 @alarm_expires_remaining(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ktime_to_ms(i32 %20)
  %22 = load i64, i64* @cm_suspend_duration_ms, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* @cm_suspend_duration_ms, align 8
  %24 = call i32 @schedule_work(i32* @setup_polling)
  br label %25

25:                                               ; preds = %15, %12
  %26 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %27 = call i32 @_cm_monitor(%struct.charger_manager* %26)
  %28 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %29 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* @CM_JIFFIES_SMALL, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %38 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @time_after_eq(i64 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %45 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @jiffies_to_msecs(i64 %48)
  store i64 %49, i64* %5, align 8
  br label %51

50:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @cm_suspend_duration_ms, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* @cm_suspend_duration_ms, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %5, align 8
  br label %60

59:                                               ; preds = %51
  store i64 0, i64* %5, align 8
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* @cm_wq, align 4
  %62 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %63 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %62, i32 0, i32 1
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @msecs_to_jiffies(i64 %64)
  %66 = call i32 @queue_delayed_work(i32 %61, i32* %63, i32 %65)
  br label %67

67:                                               ; preds = %60, %25
  %68 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %69 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_set_wakeup_capable(i32 %70, i32 0)
  ret void
}

declare dso_local %struct.charger_manager* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @alarm_cancel(i32) #1

declare dso_local i32 @alarm_expires_remaining(i32) #1

declare dso_local i64 @ktime_to_ms(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @_cm_monitor(%struct.charger_manager*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
