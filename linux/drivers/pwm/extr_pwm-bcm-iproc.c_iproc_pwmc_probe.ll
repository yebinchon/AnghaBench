; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-iproc.c_iproc_pwmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-iproc.c_iproc_pwmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iproc_pwmc = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iproc_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get clock: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@IPROC_PWM_CTRL_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_pwmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pwmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iproc_pwmc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.iproc_pwmc* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.iproc_pwmc* %12, %struct.iproc_pwmc** %4, align 8
  %13 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %14 = icmp ne %struct.iproc_pwmc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %151

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.iproc_pwmc* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %25 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32* %23, i32** %26, align 8
  %27 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %28 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32* @iproc_pwm_ops, i32** %29, align 8
  %30 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %31 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %34 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %37 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %38 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %41 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %40, i32 0, i32 1
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
  %50 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %51 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %53 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @IS_ERR(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %18
  %58 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %59 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @PTR_ERR(i64 %60)
  store i32 %61, i32* %2, align 4
  br label %151

62:                                               ; preds = %18
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i64 @devm_clk_get(i32* %64, i32* null)
  %66 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %67 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %69 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @IS_ERR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %62
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %77 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @PTR_ERR(i64 %78)
  %80 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %82 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @PTR_ERR(i64 %83)
  store i32 %84, i32* %2, align 4
  br label %151

85:                                               ; preds = %62
  %86 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %87 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %86, i32 0, i32 0
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
  br label %151

98:                                               ; preds = %85
  %99 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %100 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IPROC_PWM_CTRL_OFFSET, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @readl(i64 %103)
  store i32 %104, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %124, %98
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %108 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ult i32 %106, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %105
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @IPROC_PWM_CTRL_TYPE_SHIFT(i32 %113)
  %115 = shl i32 1, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @IPROC_PWM_CTRL_POLARITY_SHIFT(i32 %119)
  %121 = shl i32 1, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %105

127:                                              ; preds = %105
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %130 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IPROC_PWM_CTRL_OFFSET, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %136 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %135, i32 0, i32 1
  %137 = call i32 @pwmchip_add(%struct.TYPE_2__* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %127
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %4, align 8
  %146 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @clk_disable_unprepare(i64 %147)
  br label %149

149:                                              ; preds = %140, %127
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %92, %73, %57, %15
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.iproc_pwmc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iproc_pwmc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @IPROC_PWM_CTRL_TYPE_SHIFT(i32) #1

declare dso_local i32 @IPROC_PWM_CTRL_POLARITY_SHIFT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
