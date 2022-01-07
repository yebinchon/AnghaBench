; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32 }
%struct.gb_gpio_controller = type { %struct.gb_gpio_controller*, i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbphy_device*)* @gb_gpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_gpio_remove(%struct.gbphy_device* %0) #0 {
  %2 = alloca %struct.gbphy_device*, align 8
  %3 = alloca %struct.gb_gpio_controller*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %2, align 8
  %6 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %7 = call %struct.gb_gpio_controller* @gb_gbphy_get_data(%struct.gbphy_device* %6)
  store %struct.gb_gpio_controller* %7, %struct.gb_gpio_controller** %3, align 8
  %8 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %9 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %8, i32 0, i32 2
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %4, align 8
  %11 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %12 = call i32 @gbphy_runtime_get_sync(%struct.gbphy_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %17 = call i32 @gbphy_runtime_get_noresume(%struct.gbphy_device* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %20 = call i32 @gb_connection_disable_rx(%struct.gb_connection* %19)
  %21 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %22 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %21, i32 0, i32 1
  %23 = call i32 @gpiochip_remove(i32* %22)
  %24 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %25 = call i32 @gb_connection_disable(%struct.gb_connection* %24)
  %26 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %27 = call i32 @gb_connection_destroy(%struct.gb_connection* %26)
  %28 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %29 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %28, i32 0, i32 0
  %30 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %29, align 8
  %31 = call i32 @kfree(%struct.gb_gpio_controller* %30)
  %32 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %33 = call i32 @kfree(%struct.gb_gpio_controller* %32)
  ret void
}

declare dso_local %struct.gb_gpio_controller* @gb_gbphy_get_data(%struct.gbphy_device*) #1

declare dso_local i32 @gbphy_runtime_get_sync(%struct.gbphy_device*) #1

declare dso_local i32 @gbphy_runtime_get_noresume(%struct.gbphy_device*) #1

declare dso_local i32 @gb_connection_disable_rx(%struct.gb_connection*) #1

declare dso_local i32 @gpiochip_remove(i32*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_gpio_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
