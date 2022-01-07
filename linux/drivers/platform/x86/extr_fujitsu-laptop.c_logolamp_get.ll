; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_logolamp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_logolamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }

@FUNC_LEDS = common dso_local global i32 0, align 4
@LOGOLAMP_ALWAYS = common dso_local global i32 0, align 4
@FUNC_LED_ON = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LOGOLAMP_POWERON = common dso_local global i32 0, align 4
@LED_HALF = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @logolamp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logolamp_get(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %6 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %7 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.acpi_device* @to_acpi_device(i32 %10)
  store %struct.acpi_device* %11, %struct.acpi_device** %4, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %13 = load i32, i32* @FUNC_LEDS, align 4
  %14 = load i32, i32* @LOGOLAMP_ALWAYS, align 4
  %15 = call i32 @call_fext_func(%struct.acpi_device* %12, i32 %13, i32 2, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FUNC_LED_ON, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @LED_FULL, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %23 = load i32, i32* @FUNC_LEDS, align 4
  %24 = load i32, i32* @LOGOLAMP_POWERON, align 4
  %25 = call i32 @call_fext_func(%struct.acpi_device* %22, i32 %23, i32 2, i32 %24, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @FUNC_LED_ON, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @LED_HALF, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @LED_OFF, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.acpi_device* @to_acpi_device(i32) #1

declare dso_local i32 @call_fext_func(%struct.acpi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
