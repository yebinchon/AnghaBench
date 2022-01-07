; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl-led.c_twl_pwmled_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl-led.c_twl_pwmled_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.twl_pwmled_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl4030_pwmled_ops = common dso_local global i32 0, align 4
@twl6030_pwmled_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl_pwmled_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_pwmled_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl_pwmled_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.twl_pwmled_chip* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.twl_pwmled_chip* %9, %struct.twl_pwmled_chip** %4, align 8
  %10 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %11 = icmp ne %struct.twl_pwmled_chip* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = call i64 (...) @twl_class_is_4030()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %20 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32* @twl4030_pwmled_ops, i32** %21, align 8
  %22 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %23 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  br label %32

25:                                               ; preds = %15
  %26 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %27 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32* @twl6030_pwmled_ops, i32** %28, align 8
  %29 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %30 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %36 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32* %34, i32** %37, align 8
  %38 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %39 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  %41 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %42 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %41, i32 0, i32 1
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %45 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %44, i32 0, i32 0
  %46 = call i32 @pwmchip_add(%struct.TYPE_2__* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %32
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %4, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.twl_pwmled_chip* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %49, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.twl_pwmled_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @twl_class_is_4030(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.twl_pwmled_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
