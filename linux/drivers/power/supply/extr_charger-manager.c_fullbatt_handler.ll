; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_fullbatt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_fullbatt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i64, i32, i32, %struct.charger_desc* }
%struct.charger_desc = type { i32, i32 }

@cm_suspended = common dso_local global i64 0, align 8
@cm_wq = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"EVENT_HANDLE: Battery Fully Charged\0A\00", align 1
@default_event_names = common dso_local global i32* null, align 8
@CM_EVENT_BATT_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charger_manager*)* @fullbatt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fullbatt_handler(%struct.charger_manager* %0) #0 {
  %2 = alloca %struct.charger_manager*, align 8
  %3 = alloca %struct.charger_desc*, align 8
  store %struct.charger_manager* %0, %struct.charger_manager** %2, align 8
  %4 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %5 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %4, i32 0, i32 3
  %6 = load %struct.charger_desc*, %struct.charger_desc** %5, align 8
  store %struct.charger_desc* %6, %struct.charger_desc** %3, align 8
  %7 = load %struct.charger_desc*, %struct.charger_desc** %3, align 8
  %8 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.charger_desc*, %struct.charger_desc** %3, align 8
  %13 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %50

17:                                               ; preds = %11
  %18 = load i64, i64* @cm_suspended, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %22 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_set_wakeup_capable(i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* @cm_wq, align 4
  %27 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %28 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %27, i32 0, i32 2
  %29 = load %struct.charger_desc*, %struct.charger_desc** %3, align 8
  %30 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = call i32 @mod_delayed_work(i32 %26, i32* %28, i64 %32)
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.charger_desc*, %struct.charger_desc** %3, align 8
  %36 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @msecs_to_jiffies(i32 %37)
  %39 = add nsw i64 %34, %38
  %40 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %41 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %43 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %48 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %47, i32 0, i32 0
  store i64 1, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %25
  br label %50

50:                                               ; preds = %49, %16
  %51 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %52 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_info(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %56 = load i32*, i32** @default_event_names, align 8
  %57 = load i64, i64* @CM_EVENT_BATT_FULL, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @uevent_notify(%struct.charger_manager* %55, i32 %59)
  ret void
}

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @uevent_notify(%struct.charger_manager*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
