; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-hlcdc.c_atmel_hlcdc_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-hlcdc.c_atmel_hlcdc_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.of_device_id = type { i32 }
%struct.atmel_hlcdc_pwm = type { %struct.TYPE_3__, %struct.atmel_hlcdc*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.device*, i32* }
%struct.atmel_hlcdc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atmel_hlcdc_dt_ids = common dso_local global i32 0, align 4
@atmel_hlcdc_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_hlcdc_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.atmel_hlcdc_pwm*, align 8
  %7 = alloca %struct.atmel_hlcdc*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call %struct.atmel_hlcdc* @dev_get_drvdata(%struct.TYPE_4__* %13)
  store %struct.atmel_hlcdc* %14, %struct.atmel_hlcdc** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.atmel_hlcdc_pwm* @devm_kzalloc(%struct.device* %15, i32 48, i32 %16)
  store %struct.atmel_hlcdc_pwm* %17, %struct.atmel_hlcdc_pwm** %6, align 8
  %18 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %19 = icmp ne %struct.atmel_hlcdc_pwm* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %88

23:                                               ; preds = %1
  %24 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %7, align 8
  %25 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %88

32:                                               ; preds = %23
  %33 = load i32, i32* @atmel_hlcdc_dt_ids, align 4
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.of_device_id* @of_match_node(i32 %33, i32 %38)
  store %struct.of_device_id* %39, %struct.of_device_id** %4, align 8
  %40 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %41 = icmp ne %struct.of_device_id* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %44 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %47 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %32
  %49 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %7, align 8
  %50 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %51 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %50, i32 0, i32 1
  store %struct.atmel_hlcdc* %49, %struct.atmel_hlcdc** %51, align 8
  %52 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %53 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  store i32* @atmel_hlcdc_pwm_ops, i32** %54, align 8
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %57 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store %struct.device* %55, %struct.device** %58, align 8
  %59 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %60 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %63 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %66 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %67 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %70 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 3, i32* %71, align 8
  %72 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %73 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %72, i32 0, i32 0
  %74 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %75 = call i32 @pwmchip_add_with_polarity(%struct.TYPE_3__* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %48
  %79 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %7, align 8
  %80 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @clk_disable_unprepare(i32 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %48
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %6, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.atmel_hlcdc_pwm* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %78, %30, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.atmel_hlcdc* @dev_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local %struct.atmel_hlcdc_pwm* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @pwmchip_add_with_polarity(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_hlcdc_pwm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
