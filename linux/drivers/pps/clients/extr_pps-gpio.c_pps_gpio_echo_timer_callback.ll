; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_echo_timer_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_echo_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.pps_gpio_device_data = type { i32 }

@echo_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pps_gpio_echo_timer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pps_gpio_echo_timer_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pps_gpio_device_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %3, align 8
  %5 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %6 = load i32, i32* @echo_timer, align 4
  %7 = call %struct.pps_gpio_device_data* @from_timer(%struct.pps_gpio_device_data* %4, %struct.timer_list* %5, i32 %6)
  store %struct.pps_gpio_device_data* %7, %struct.pps_gpio_device_data** %3, align 8
  %8 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %3, align 8
  %9 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpiod_set_value(i32 %10, i32 0)
  ret void
}

declare dso_local %struct.pps_gpio_device_data* @from_timer(%struct.pps_gpio_device_data*, %struct.timer_list*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
