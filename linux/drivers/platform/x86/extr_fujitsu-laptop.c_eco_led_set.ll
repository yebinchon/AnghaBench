; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_eco_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_eco_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }

@FUNC_LEDS = common dso_local global i32 0, align 4
@ECO_LED = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@ECO_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @eco_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eco_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.acpi_device* @to_acpi_device(i32 %12)
  store %struct.acpi_device* %13, %struct.acpi_device** %6, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %15 = load i32, i32* @FUNC_LEDS, align 4
  %16 = load i32, i32* @ECO_LED, align 4
  %17 = call i32 @call_fext_func(%struct.acpi_device* %14, i32 %15, i32 2, i32 %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LED_FULL, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %23 = load i32, i32* @FUNC_LEDS, align 4
  %24 = load i32, i32* @ECO_LED, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ECO_LED_ON, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @call_fext_func(%struct.acpi_device* %22, i32 %23, i32 1, i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %31 = load i32, i32* @FUNC_LEDS, align 4
  %32 = load i32, i32* @ECO_LED, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ECO_LED_ON, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @call_fext_func(%struct.acpi_device* %30, i32 %31, i32 1, i32 %32, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.acpi_device* @to_acpi_device(i32) #1

declare dso_local i32 @call_fext_func(%struct.acpi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
