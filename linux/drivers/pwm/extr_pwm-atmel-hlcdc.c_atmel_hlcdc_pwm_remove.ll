; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-hlcdc.c_atmel_hlcdc_pwm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-hlcdc.c_atmel_hlcdc_pwm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.atmel_hlcdc_pwm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_hlcdc_pwm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_pwm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_hlcdc_pwm*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.atmel_hlcdc_pwm* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.atmel_hlcdc_pwm* %7, %struct.atmel_hlcdc_pwm** %4, align 8
  %8 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %8, i32 0, i32 1
  %10 = call i32 @pwmchip_remove(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %4, align 8
  %17 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_disable_unprepare(i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.atmel_hlcdc_pwm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pwmchip_remove(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
