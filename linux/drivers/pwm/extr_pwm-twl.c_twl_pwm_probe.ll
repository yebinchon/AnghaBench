; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl.c_twl_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl.c_twl_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.twl_pwm_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl4030_pwm_ops = common dso_local global i32 0, align 4
@twl6030_pwm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl_pwm_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.twl_pwm_chip* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.twl_pwm_chip* %9, %struct.twl_pwm_chip** %4, align 8
  %10 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %11 = icmp ne %struct.twl_pwm_chip* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = call i64 (...) @twl_class_is_4030()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %20 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32* @twl4030_pwm_ops, i32** %21, align 8
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %24 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32* @twl6030_pwm_ops, i32** %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %30 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32* %28, i32** %31, align 8
  %32 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %33 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %36 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 2, i32* %37, align 4
  %38 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %39 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %42 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %41, i32 0, i32 0
  %43 = call i32 @pwmchip_add(%struct.TYPE_2__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %26
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %4, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.twl_pwm_chip* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %46, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.twl_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @twl_class_is_4030(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.twl_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
