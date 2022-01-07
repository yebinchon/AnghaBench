; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_kblamps_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_kblamps_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }

@LED_OFF = common dso_local global i32 0, align 4
@FUNC_LEDS = common dso_local global i32 0, align 4
@KEYBOARD_LAMPS = common dso_local global i32 0, align 4
@FUNC_LED_ON = common dso_local global i64 0, align 8
@LED_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @kblamps_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kblamps_get(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %5 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %6 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.acpi_device* @to_acpi_device(i32 %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %3, align 8
  %11 = load i32, i32* @LED_OFF, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = load i32, i32* @FUNC_LEDS, align 4
  %14 = load i32, i32* @KEYBOARD_LAMPS, align 4
  %15 = call i64 @call_fext_func(%struct.acpi_device* %12, i32 %13, i32 2, i32 %14, i32 0)
  %16 = load i64, i64* @FUNC_LED_ON, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @LED_FULL, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local %struct.acpi_device* @to_acpi_device(i32) #1

declare dso_local i64 @call_fext_func(%struct.acpi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
