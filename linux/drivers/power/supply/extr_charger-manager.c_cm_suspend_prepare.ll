; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_suspend_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_suspend_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.charger_manager = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@cm_suspended = common dso_local global i32 0, align 4
@cm_timer_set = common dso_local global i64 0, align 8
@setup_polling = common dso_local global i32 0, align 4
@cm_monitor_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @cm_suspend_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_suspend_prepare(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.charger_manager*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.charger_manager* @dev_get_drvdata(%struct.device* %5)
  store %struct.charger_manager* %6, %struct.charger_manager** %4, align 8
  %7 = call i64 (...) @cm_need_to_awake()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @cm_suspended, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 1, i32* @cm_suspended, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = call i64 (...) @cm_setup_timer()
  store i64 %17, i64* @cm_timer_set, align 8
  %18 = load i64, i64* @cm_timer_set, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = call i32 @cancel_work_sync(i32* @setup_polling)
  %22 = call i32 @cancel_delayed_work_sync(i32* @cm_monitor_work)
  %23 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %24 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %23, i32 0, i32 0
  %25 = call i32 @cancel_delayed_work(i32* %24)
  br label %26

26:                                               ; preds = %20, %16
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.charger_manager* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @cm_need_to_awake(...) #1

declare dso_local i64 @cm_setup_timer(...) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
