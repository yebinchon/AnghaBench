; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_watchdog_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_watchdog_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_charger = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ab8500_charger = type { i32 }

@POWER_SUPPLY_TYPE_MAINS = common dso_local global i64 0, align 8
@POWER_SUPPLY_TYPE_USB = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@AB8500_CHARGER = common dso_local global i32 0, align 4
@AB8500_CHARG_WD_CTRL = common dso_local global i32 0, align 4
@CHARG_WD_KICK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to kick WD!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ux500_charger*)* @ab8500_charger_watchdog_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_watchdog_kick(%struct.ux500_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ux500_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_charger*, align 8
  store %struct.ux500_charger* %0, %struct.ux500_charger** %3, align 8
  %6 = load %struct.ux500_charger*, %struct.ux500_charger** %3, align 8
  %7 = getelementptr inbounds %struct.ux500_charger, %struct.ux500_charger* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @POWER_SUPPLY_TYPE_MAINS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ux500_charger*, %struct.ux500_charger** %3, align 8
  %17 = call %struct.ab8500_charger* @to_ab8500_charger_ac_device_info(%struct.ux500_charger* %16)
  store %struct.ab8500_charger* %17, %struct.ab8500_charger** %5, align 8
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.ux500_charger*, %struct.ux500_charger** %3, align 8
  %20 = getelementptr inbounds %struct.ux500_charger, %struct.ux500_charger* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @POWER_SUPPLY_TYPE_USB, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.ux500_charger*, %struct.ux500_charger** %3, align 8
  %30 = call %struct.ab8500_charger* @to_ab8500_charger_usb_device_info(%struct.ux500_charger* %29)
  store %struct.ab8500_charger* %30, %struct.ab8500_charger** %5, align 8
  br label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %37 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AB8500_CHARGER, align 4
  %40 = load i32, i32* @AB8500_CHARG_WD_CTRL, align 4
  %41 = load i32, i32* @CHARG_WD_KICK, align 4
  %42 = call i32 @abx500_set_register_interruptible(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %47 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %35
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %31
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.ab8500_charger* @to_ab8500_charger_ac_device_info(%struct.ux500_charger*) #1

declare dso_local %struct.ab8500_charger* @to_ab8500_charger_usb_device_info(%struct.ux500_charger*) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
