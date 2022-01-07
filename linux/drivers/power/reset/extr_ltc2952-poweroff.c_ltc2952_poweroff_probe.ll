; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc2952_poweroff = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@pm_power_off = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"pm_power_off already registered\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ltc2952_data = common dso_local global %struct.ltc2952_poweroff* null, align 8
@ltc2952_poweroff_kill = common dso_local global i64 0, align 8
@ltc2952_poweroff_notify_panic = common dso_local global i32 0, align 4
@panic_notifier_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"probe successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltc2952_poweroff_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2952_poweroff_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltc2952_poweroff*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i64, i64* @pm_power_off, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @dev_err(i32* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ltc2952_poweroff* @devm_kzalloc(i32* %16, i32 16, i32 %17)
  store %struct.ltc2952_poweroff* %18, %struct.ltc2952_poweroff** %5, align 8
  %19 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %20 = icmp ne %struct.ltc2952_poweroff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %28 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.ltc2952_poweroff* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i32 @ltc2952_poweroff_init(%struct.platform_device* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %51

38:                                               ; preds = %24
  %39 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  store %struct.ltc2952_poweroff* %39, %struct.ltc2952_poweroff** @ltc2952_data, align 8
  %40 = load i64, i64* @ltc2952_poweroff_kill, align 8
  store i64 %40, i64* @pm_power_off, align 8
  %41 = load i32, i32* @ltc2952_poweroff_notify_panic, align 4
  %42 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %43 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %46 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %45, i32 0, i32 0
  %47 = call i32 @atomic_notifier_chain_register(i32* @panic_notifier_list, %struct.TYPE_2__* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %38, %36, %21, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ltc2952_poweroff* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ltc2952_poweroff*) #1

declare dso_local i32 @ltc2952_poweroff_init(%struct.platform_device*) #1

declare dso_local i32 @atomic_notifier_chain_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
