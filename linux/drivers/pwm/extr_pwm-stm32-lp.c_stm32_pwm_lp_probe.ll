; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32-lp.c_stm32_pwm_lp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32-lp.c_stm32_pwm_lp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.stm32_lptimer = type { i32, i32 }
%struct.stm32_pwm_lp = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stm32_pwm_lp_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_pwm_lp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_lp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_lptimer*, align 8
  %5 = alloca %struct.stm32_pwm_lp*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.stm32_lptimer* @dev_get_drvdata(i32 %10)
  store %struct.stm32_lptimer* %11, %struct.stm32_lptimer** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.stm32_pwm_lp* @devm_kzalloc(%struct.TYPE_4__* %13, i32 40, i32 %14)
  store %struct.stm32_pwm_lp* %15, %struct.stm32_pwm_lp** %5, align 8
  %16 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %17 = icmp ne %struct.stm32_pwm_lp* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %26 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %4, align 8
  %28 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %31 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %33 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %41 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i32* @stm32_pwm_lp_ops, i32** %42, align 8
  %43 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %44 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %47 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %48 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %51 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 3, i32* %52, align 8
  %53 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %54 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %53, i32 0, i32 0
  %55 = call i32 @pwmchip_add(%struct.TYPE_3__* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %21
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %21
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %5, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.stm32_pwm_lp* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %58, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.stm32_lptimer* @dev_get_drvdata(i32) #1

declare dso_local %struct.stm32_pwm_lp* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_pwm_lp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
