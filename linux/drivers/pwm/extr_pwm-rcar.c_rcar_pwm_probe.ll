; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rcar_pwm_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@rcar_pwm_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_pwm_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rcar_pwm_chip* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.rcar_pwm_chip* %10, %struct.rcar_pwm_chip** %4, align 8
  %11 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %12 = icmp eq %struct.rcar_pwm_chip* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %88

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %25 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %27 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %33 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %88

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i32* null)
  %40 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %41 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %43 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %52 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %88

55:                                               ; preds = %36
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %58 = call i32 @platform_set_drvdata(%struct.platform_device* %56, %struct.rcar_pwm_chip* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %62 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32* %60, i32** %63, align 8
  %64 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %65 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32* @rcar_pwm_ops, i32** %66, align 8
  %67 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %68 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %71 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %74 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %73, i32 0, i32 0
  %75 = call i32 @pwmchip_add(%struct.TYPE_2__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %55
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %55
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @pm_runtime_enable(i32* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %78, %47, %31, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.rcar_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_pwm_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
