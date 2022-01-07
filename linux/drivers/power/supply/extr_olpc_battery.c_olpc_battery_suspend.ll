; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_battery_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_battery_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.olpc_battery_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EC_SCI_SRC_ACPWR = common dso_local global i32 0, align 4
@EC_SCI_SRC_BATTERY = common dso_local global i32 0, align 4
@EC_SCI_SRC_BATSOC = common dso_local global i32 0, align 4
@EC_SCI_SRC_BATERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @olpc_battery_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_battery_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.olpc_battery_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.olpc_battery_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.olpc_battery_data* %7, %struct.olpc_battery_data** %5, align 8
  %8 = load %struct.olpc_battery_data*, %struct.olpc_battery_data** %5, align 8
  %9 = getelementptr inbounds %struct.olpc_battery_data, %struct.olpc_battery_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i64 @device_may_wakeup(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EC_SCI_SRC_ACPWR, align 4
  %16 = call i32 @olpc_ec_wakeup_set(i32 %15)
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EC_SCI_SRC_ACPWR, align 4
  %19 = call i32 @olpc_ec_wakeup_clear(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.olpc_battery_data*, %struct.olpc_battery_data** %5, align 8
  %22 = getelementptr inbounds %struct.olpc_battery_data, %struct.olpc_battery_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i64 @device_may_wakeup(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @EC_SCI_SRC_BATTERY, align 4
  %29 = load i32, i32* @EC_SCI_SRC_BATSOC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @EC_SCI_SRC_BATERR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @olpc_ec_wakeup_set(i32 %32)
  br label %41

34:                                               ; preds = %20
  %35 = load i32, i32* @EC_SCI_SRC_BATTERY, align 4
  %36 = load i32, i32* @EC_SCI_SRC_BATSOC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EC_SCI_SRC_BATERR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @olpc_ec_wakeup_clear(i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  ret i32 0
}

declare dso_local %struct.olpc_battery_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @device_may_wakeup(i32*) #1

declare dso_local i32 @olpc_ec_wakeup_set(i32) #1

declare dso_local i32 @olpc_ec_wakeup_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
