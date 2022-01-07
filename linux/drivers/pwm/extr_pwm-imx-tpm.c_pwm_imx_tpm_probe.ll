; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_tpm_pwm_chip = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to get PWM clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to prepare or enable clock: %d\0A\00", align 1
@imx_tpm_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@PWM_IMX_TPM_PARAM = common dso_local global i64 0, align 8
@PWM_IMX_TPM_PARAM_CHAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_imx_tpm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx_tpm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_tpm_pwm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.imx_tpm_pwm_chip* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.imx_tpm_pwm_chip* %10, %struct.imx_tpm_pwm_chip** %4, align 8
  %11 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %12 = icmp ne %struct.imx_tpm_pwm_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %124

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.imx_tpm_pwm_chip* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %23 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %25 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_ERR(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %31 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PTR_ERR(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %124

34:                                               ; preds = %16
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i64 @devm_clk_get(i32* %36, i32* null)
  %38 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %39 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %41 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @IS_ERR(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %47 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @PTR_ERR(i64 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %124

61:                                               ; preds = %34
  %62 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %63 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @clk_prepare_enable(i64 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %124

74:                                               ; preds = %61
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %78 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store i32* %76, i32** %79, align 8
  %80 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %81 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i32* @imx_tpm_pwm_ops, i32** %82, align 8
  %83 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %84 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 -1, i32* %85, align 8
  %86 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %87 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %88 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %91 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 3, i32* %92, align 4
  %93 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %94 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PWM_IMX_TPM_PARAM, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl(i64 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @PWM_IMX_TPM_PARAM_CHAN, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @FIELD_GET(i32 %99, i32 %100)
  %102 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %103 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %106 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %105, i32 0, i32 2
  %107 = call i32 @mutex_init(i32* %106)
  %108 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %109 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %108, i32 0, i32 1
  %110 = call i32 @pwmchip_add(%struct.TYPE_2__* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %74
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %4, align 8
  %119 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @clk_disable_unprepare(i64 %120)
  br label %122

122:                                              ; preds = %113, %74
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %68, %59, %29, %13
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.imx_tpm_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_tpm_pwm_chip*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
