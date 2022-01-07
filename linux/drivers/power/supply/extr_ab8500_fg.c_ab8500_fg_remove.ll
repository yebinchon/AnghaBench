; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ab8500_fg = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to disable coulomb counter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_fg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ab8500_fg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ab8500_fg* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ab8500_fg* %6, %struct.ab8500_fg** %4, align 8
  %7 = load %struct.ab8500_fg*, %struct.ab8500_fg** %4, align 8
  %8 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %7, i32 0, i32 3
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.ab8500_fg*, %struct.ab8500_fg** %4, align 8
  %11 = call i32 @ab8500_fg_coulomb_counter(%struct.ab8500_fg* %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ab8500_fg*, %struct.ab8500_fg** %4, align 8
  %16 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.ab8500_fg*, %struct.ab8500_fg** %4, align 8
  %21 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @destroy_workqueue(i32 %22)
  %24 = load %struct.ab8500_fg*, %struct.ab8500_fg** %4, align 8
  %25 = call i32 @ab8500_fg_sysfs_exit(%struct.ab8500_fg* %24)
  %26 = call i32 (...) @flush_scheduled_work()
  %27 = load %struct.ab8500_fg*, %struct.ab8500_fg** %4, align 8
  %28 = call i32 @ab8500_fg_sysfs_psy_remove_attrs(%struct.ab8500_fg* %27)
  %29 = load %struct.ab8500_fg*, %struct.ab8500_fg** %4, align 8
  %30 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @power_supply_unregister(i32 %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.ab8500_fg* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ab8500_fg_coulomb_counter(%struct.ab8500_fg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ab8500_fg_sysfs_exit(%struct.ab8500_fg*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @ab8500_fg_sysfs_psy_remove_attrs(%struct.ab8500_fg*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
