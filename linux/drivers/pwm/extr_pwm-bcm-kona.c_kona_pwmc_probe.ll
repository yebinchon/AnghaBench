; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-kona.c_kona_pwmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-kona.c_kona_pwmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.kona_pwmc = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kona_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get clock: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@PWM_CONTROL_OFFSET = common dso_local global i64 0, align 8
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kona_pwmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kona_pwmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kona_pwmc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.kona_pwmc* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.kona_pwmc* %12, %struct.kona_pwmc** %4, align 8
  %13 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %14 = icmp eq %struct.kona_pwmc* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %140

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.kona_pwmc* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %25 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32* %23, i32** %26, align 8
  %27 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %28 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32* @kona_pwm_ops, i32** %29, align 8
  %30 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %31 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %34 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 6, i32* %35, align 4
  %36 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %37 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %38 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %41 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 3, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %5, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %5, align 8
  %49 = call i64 @devm_ioremap_resource(i32* %47, %struct.resource* %48)
  %50 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %51 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %53 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @IS_ERR(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %18
  %58 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %59 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @PTR_ERR(i64 %60)
  store i32 %61, i32* %2, align 4
  br label %140

62:                                               ; preds = %18
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i64 @devm_clk_get(i32* %64, i32* null)
  %66 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %67 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %69 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @IS_ERR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %62
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %77 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @PTR_ERR(i64 %78)
  %80 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %82 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @PTR_ERR(i64 %83)
  store i32 %84, i32* %2, align 4
  br label %140

85:                                               ; preds = %62
  %86 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %87 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @clk_prepare_enable(i64 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %140

98:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %112, %98
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %102 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ult i32 %100, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @PWM_CONTROL_TYPE_SHIFT(i32 %107)
  %109 = shl i32 1, %108
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %99

115:                                              ; preds = %99
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %118 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PWM_CONTROL_OFFSET, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %124 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @clk_disable_unprepare(i64 %125)
  %127 = load %struct.kona_pwmc*, %struct.kona_pwmc** %4, align 8
  %128 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %127, i32 0, i32 0
  %129 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %130 = call i32 @pwmchip_add_with_polarity(%struct.TYPE_2__* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %115
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %115
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %92, %73, %57, %15
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.kona_pwmc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.kona_pwmc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @PWM_CONTROL_TYPE_SHIFT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @pwmchip_add_with_polarity(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
