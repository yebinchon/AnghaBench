; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.brcmstb_pwm = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to obtain clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@brcmstb_pwm_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcmstb_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.brcmstb_pwm*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.brcmstb_pwm* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.brcmstb_pwm* %10, %struct.brcmstb_pwm** %4, align 8
  %11 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %12 = icmp ne %struct.brcmstb_pwm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %106

16:                                               ; preds = %1
  %17 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %18 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @devm_clk_get(i32* %21, i32* null)
  %23 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %24 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %26 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %16
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %35 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %106

38:                                               ; preds = %16
  %39 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %40 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %106

51:                                               ; preds = %38
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.brcmstb_pwm* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %58 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32* %56, i32** %59, align 8
  %60 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %61 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32* @brcmstb_pwm_ops, i32** %62, align 8
  %63 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %64 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %67 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 2, i32* %68, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load i32, i32* @IORESOURCE_MEM, align 4
  %71 = call %struct.resource* @platform_get_resource(%struct.platform_device* %69, i32 %70, i32 0)
  store %struct.resource* %71, %struct.resource** %5, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.resource*, %struct.resource** %5, align 8
  %75 = call i32 @devm_ioremap_resource(i32* %73, %struct.resource* %74)
  %76 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %77 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %79 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %51
  %84 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %85 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %6, align 4
  br label %100

88:                                               ; preds = %51
  %89 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %90 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %89, i32 0, i32 1
  %91 = call i32 @pwmchip_add(%struct.TYPE_2__* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %100

99:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %106

100:                                              ; preds = %94, %83
  %101 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %4, align 8
  %102 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @clk_disable_unprepare(i32 %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %100, %99, %45, %30, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.brcmstb_pwm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.brcmstb_pwm*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
