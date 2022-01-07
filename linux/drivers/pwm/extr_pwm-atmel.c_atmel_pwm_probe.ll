; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.atmel_pwm_chip = type { i32, %struct.TYPE_2__, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to prepare PWM clock\0A\00", align 1
@atmel_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to add PWM chip %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_pwm_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.atmel_pwm_chip* @devm_kzalloc(i32* %8, i32 64, i32 %9)
  store %struct.atmel_pwm_chip* %10, %struct.atmel_pwm_chip** %4, align 8
  %11 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %12 = icmp ne %struct.atmel_pwm_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %117

16:                                               ; preds = %1
  %17 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %17, i32 0, i32 5
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @of_device_get_match_data(i32* %21)
  %23 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %5, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i32 @devm_ioremap_resource(i32* %31, %struct.resource* %32)
  %34 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %35 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %37 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %16
  %42 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %43 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %117

46:                                               ; preds = %16
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @devm_clk_get(i32* %48, i32* null)
  %50 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %51 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %59 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %117

62:                                               ; preds = %46
  %63 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %64 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_prepare(i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %117

74:                                               ; preds = %62
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %78 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store i32* %76, i32** %79, align 8
  %80 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %81 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i32* @atmel_pwm_ops, i32** %82, align 8
  %83 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %84 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %85 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %88 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 3, i32* %89, align 8
  %90 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %91 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 4
  %93 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %94 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32 4, i32* %95, align 8
  %96 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %97 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %96, i32 0, i32 1
  %98 = call i32 @pwmchip_add(%struct.TYPE_2__* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %74
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %111

106:                                              ; preds = %74
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.atmel_pwm_chip* %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %117

111:                                              ; preds = %101
  %112 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %4, align 8
  %113 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @clk_unprepare(i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %106, %69, %57, %41, %13
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.atmel_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_device_get_match_data(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_pwm_chip*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
