; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sprd_pwm_chip = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sprd_pwm_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to add PWM chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sprd_pwm_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sprd_pwm_chip* @devm_kzalloc(i32* %7, i32 48, i32 %8)
  store %struct.sprd_pwm_chip* %9, %struct.sprd_pwm_chip** %4, align 8
  %10 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %11 = icmp ne %struct.sprd_pwm_chip* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %16, i32 0)
  %18 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %19 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %27 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %73

30:                                               ; preds = %15
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.sprd_pwm_chip* %36)
  %38 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %39 = call i32 @sprd_pwm_clk_init(%struct.sprd_pwm_chip* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %73

44:                                               ; preds = %30
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %48 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32* %46, i32** %49, align 8
  %50 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %51 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32* @sprd_pwm_ops, i32** %52, align 8
  %53 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %54 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %57 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %60 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %4, align 8
  %63 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %62, i32 0, i32 0
  %64 = call i32 @pwmchip_add(%struct.TYPE_2__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %44
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %44
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %42, %25, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.sprd_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_pwm_chip*) #1

declare dso_local i32 @sprd_pwm_clk_init(%struct.sprd_pwm_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
