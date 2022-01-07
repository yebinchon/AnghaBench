; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-jz4740.c_jz4740_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-jz4740.c_jz4740_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.jz4740_pwm_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@jz4740_pwm_ops = common dso_local global i32 0, align 4
@NUM_PWM = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4740_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.jz4740_pwm_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.jz4740_pwm_chip* @devm_kzalloc(i32* %6, i32 40, i32 %7)
  store %struct.jz4740_pwm_chip* %8, %struct.jz4740_pwm_chip** %4, align 8
  %9 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %10 = icmp ne %struct.jz4740_pwm_chip* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @devm_clk_get(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %19 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %27 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %14
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  store i32* %32, i32** %35, align 8
  %36 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %37 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i32* @jz4740_pwm_ops, i32** %38, align 8
  %39 = load i32, i32* @NUM_PWM, align 4
  %40 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %41 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %44 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %47 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %48 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %51 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 3, i32* %52, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %53, %struct.jz4740_pwm_chip* %54)
  %56 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %4, align 8
  %57 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %56, i32 0, i32 0
  %58 = call i32 @pwmchip_add(%struct.TYPE_2__* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %30, %25, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.jz4740_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jz4740_pwm_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
