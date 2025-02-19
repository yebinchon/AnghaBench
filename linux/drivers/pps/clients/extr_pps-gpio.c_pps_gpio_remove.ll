; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pps_gpio_device_data = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"removed IRQ %d as PPS source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pps_gpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_gpio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pps_gpio_device_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.pps_gpio_device_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.pps_gpio_device_data* %5, %struct.pps_gpio_device_data** %3, align 8
  %6 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %3, align 8
  %7 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pps_unregister_source(i32 %8)
  %10 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %3, align 8
  %11 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %3, align 8
  %16 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %15, i32 0, i32 2
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %3, align 8
  %19 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @gpiod_set_value(i64 %20, i32 0)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %3, align 8
  %26 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret i32 0
}

declare dso_local %struct.pps_gpio_device_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pps_unregister_source(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
