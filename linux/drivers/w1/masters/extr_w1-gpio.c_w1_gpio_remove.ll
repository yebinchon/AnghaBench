; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_w1-gpio.c_w1_gpio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_w1-gpio.c_w1_gpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.w1_bus_master = type { i32 }
%struct.w1_gpio_platform_data = type { i64, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w1_gpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_gpio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.w1_bus_master*, align 8
  %4 = alloca %struct.w1_gpio_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.w1_bus_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.w1_bus_master* %6, %struct.w1_bus_master** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.w1_gpio_platform_data* @dev_get_platdata(i32* %8)
  store %struct.w1_gpio_platform_data* %9, %struct.w1_gpio_platform_data** %4, align 8
  %10 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %15, i32 0, i32 1
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = call i32 %17(i32 0)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @gpiod_set_value(i64 %27, i32 0)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.w1_bus_master*, %struct.w1_bus_master** %3, align 8
  %31 = call i32 @w1_remove_master_device(%struct.w1_bus_master* %30)
  ret i32 0
}

declare dso_local %struct.w1_bus_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.w1_gpio_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @w1_remove_master_device(%struct.w1_bus_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
