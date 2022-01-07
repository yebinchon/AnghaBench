; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_paz00.c_nvec_paz00_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_paz00.c_nvec_paz00_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvec_chip = type { i32 }
%struct.nvec_led = type { %struct.TYPE_5__, %struct.nvec_chip* }
%struct.TYPE_5__ = type { i8*, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVEC_LED_MAX = common dso_local global i32 0, align 4
@nvec_led_brightness_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"paz00-led\00", align 1
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nvec_paz00_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_paz00_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.nvec_chip*, align 8
  %5 = alloca %struct.nvec_led*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nvec_chip* @dev_get_drvdata(i32 %10)
  store %struct.nvec_chip* %11, %struct.nvec_chip** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nvec_led* @devm_kzalloc(%struct.TYPE_4__* %13, i32 40, i32 %14)
  store %struct.nvec_led* %15, %struct.nvec_led** %5, align 8
  %16 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %17 = icmp ne %struct.nvec_led* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load i32, i32* @NVEC_LED_MAX, align 4
  %23 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %24 = getelementptr inbounds %struct.nvec_led, %struct.nvec_led* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @nvec_led_brightness_set, align 4
  %27 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %28 = getelementptr inbounds %struct.nvec_led, %struct.nvec_led* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %31 = getelementptr inbounds %struct.nvec_led, %struct.nvec_led* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %34 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %35 = getelementptr inbounds %struct.nvec_led, %struct.nvec_led* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %40 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %41 = getelementptr inbounds %struct.nvec_led, %struct.nvec_led* %40, i32 0, i32 1
  store %struct.nvec_chip* %39, %struct.nvec_chip** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.nvec_led* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %48 = getelementptr inbounds %struct.nvec_led, %struct.nvec_led* %47, i32 0, i32 0
  %49 = call i32 @devm_led_classdev_register(%struct.TYPE_4__* %46, %struct.TYPE_5__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %21
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %21
  %55 = load %struct.nvec_led*, %struct.nvec_led** %5, align 8
  %56 = getelementptr inbounds %struct.nvec_led, %struct.nvec_led* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %52, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.nvec_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.nvec_led* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nvec_led*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
