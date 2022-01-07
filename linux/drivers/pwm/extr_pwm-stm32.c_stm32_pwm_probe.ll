; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_timers = type { i32, i32, i32 }
%struct.stm32_pwm = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, %struct.device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@stm32pwm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stm32_timers*, align 8
  %7 = alloca %struct.stm32_pwm*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.stm32_timers* @dev_get_drvdata(i32 %17)
  store %struct.stm32_timers* %18, %struct.stm32_timers** %6, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.stm32_pwm* @devm_kzalloc(%struct.device* %19, i32 56, i32 %20)
  store %struct.stm32_pwm* %21, %struct.stm32_pwm** %7, align 8
  %22 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %23 = icmp ne %struct.stm32_pwm* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %102

27:                                               ; preds = %1
  %28 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %29 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %28, i32 0, i32 4
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.stm32_timers*, %struct.stm32_timers** %6, align 8
  %32 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %35 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.stm32_timers*, %struct.stm32_timers** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %40 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.stm32_timers*, %struct.stm32_timers** %6, align 8
  %42 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %45 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %47 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %48 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 8
  %50 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %51 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 3, i32* %52, align 8
  %53 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %54 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %27
  %58 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %59 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57, %27
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %102

65:                                               ; preds = %57
  %66 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %67 = load %struct.device_node*, %struct.device_node** %5, align 8
  %68 = call i32 @stm32_pwm_apply_breakinputs(%struct.stm32_pwm* %66, %struct.device_node* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %102

73:                                               ; preds = %65
  %74 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %75 = call i32 @stm32_pwm_detect_complementary(%struct.stm32_pwm* %74)
  %76 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %77 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 4
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %81 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store %struct.device* %79, %struct.device** %82, align 8
  %83 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %84 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32* @stm32pwm_ops, i32** %85, align 8
  %86 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %87 = call i32 @stm32_pwm_detect_channels(%struct.stm32_pwm* %86)
  %88 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %89 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %92 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %91, i32 0, i32 0
  %93 = call i32 @pwmchip_add(%struct.TYPE_2__* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %73
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %102

98:                                               ; preds = %73
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.stm32_pwm* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %96, %71, %62, %24
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.stm32_timers* @dev_get_drvdata(i32) #1

declare dso_local %struct.stm32_pwm* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @stm32_pwm_apply_breakinputs(%struct.stm32_pwm*, %struct.device_node*) #1

declare dso_local i32 @stm32_pwm_detect_complementary(%struct.stm32_pwm*) #1

declare dso_local i32 @stm32_pwm_detect_channels(%struct.stm32_pwm*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_pwm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
