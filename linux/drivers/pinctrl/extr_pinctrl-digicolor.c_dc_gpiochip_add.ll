; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-digicolor.c_dc_gpiochip_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-digicolor.c_dc_gpiochip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_pinmap = type { i32, i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32, %struct.device_node*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@DRIVER_NAME = common dso_local global i32 0, align 4
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@dc_gpio_direction_input = common dso_local global i32 0, align 4
@dc_gpio_direction_output = common dso_local global i32 0, align 4
@dc_gpio_get = common dso_local global i32 0, align 4
@dc_gpio_set = common dso_local global i32 0, align 4
@PINS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_pinmap*, %struct.device_node*)* @dc_gpiochip_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_gpiochip_add(%struct.dc_pinmap* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_pinmap*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.dc_pinmap* %0, %struct.dc_pinmap** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %9 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %8, i32 0, i32 2
  store %struct.gpio_chip* %9, %struct.gpio_chip** %6, align 8
  %10 = load i32, i32* @DRIVER_NAME, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 8
  %13 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %14 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @gpiochip_generic_request, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @gpiochip_generic_free, align 4
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @dc_gpio_direction_input, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @dc_gpio_direction_output, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @dc_gpio_get, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @dc_gpio_set, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load i32, i32* @PINS_COUNT, align 4
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %40 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 2
  store %struct.device_node* %41, %struct.device_node** %43, align 8
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 1
  store i32 2, i32* %45, align 4
  %46 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %47 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %46, i32 0, i32 1
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %50 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %51 = call i32 @gpiochip_add_data(%struct.gpio_chip* %49, %struct.dc_pinmap* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %71

56:                                               ; preds = %2
  %57 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %58 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %59 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_name(i32 %60)
  %62 = load i32, i32* @PINS_COUNT, align 4
  %63 = call i32 @gpiochip_add_pin_range(%struct.gpio_chip* %57, i32 %61, i32 0, i32 0, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %68 = call i32 @gpiochip_remove(%struct.gpio_chip* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %66, %54
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.dc_pinmap*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.gpio_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
