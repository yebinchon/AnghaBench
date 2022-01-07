; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_battout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_battout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i32 }

@cm_suspended = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Battery Pulled Out!\0A\00", align 1
@default_event_names = common dso_local global i8** null, align 8
@CM_EVENT_BATT_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Battery Reinserted?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charger_manager*)* @battout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @battout_handler(%struct.charger_manager* %0) #0 {
  %2 = alloca %struct.charger_manager*, align 8
  store %struct.charger_manager* %0, %struct.charger_manager** %2, align 8
  %3 = load i64, i64* @cm_suspended, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %7 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @device_set_wakeup_capable(i32 %8, i32 1)
  br label %10

10:                                               ; preds = %5, %1
  %11 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %12 = call i32 @is_batt_present(%struct.charger_manager* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %16 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_emerg(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %20 = load i8**, i8*** @default_event_names, align 8
  %21 = load i64, i64* @CM_EVENT_BATT_OUT, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @uevent_notify(%struct.charger_manager* %19, i8* %23)
  br label %28

25:                                               ; preds = %10
  %26 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %27 = call i32 @uevent_notify(%struct.charger_manager* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

declare dso_local i32 @is_batt_present(%struct.charger_manager*) #1

declare dso_local i32 @dev_emerg(i32, i8*) #1

declare dso_local i32 @uevent_notify(%struct.charger_manager*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
