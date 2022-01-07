; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-img.c_img_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-img.c_img_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.img_pwm_chip = type { i32 }

@PWM_CTRL_CFG = common dso_local global i32 0, align 4
@PERIP_PWM_PDM_CONTROL = common dso_local global i32 0, align 4
@PERIP_PWM_PDM_CONTROL_CH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @img_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.img_pwm_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.img_pwm_chip* @to_img_pwm_chip(%struct.pwm_chip* %9)
  store %struct.img_pwm_chip* %10, %struct.img_pwm_chip** %7, align 8
  %11 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %12 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %7, align 8
  %21 = load i32, i32* @PWM_CTRL_CFG, align 4
  %22 = call i32 @img_pwm_readl(%struct.img_pwm_chip* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %24 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %7, align 8
  %30 = load i32, i32* @PWM_CTRL_CFG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @img_pwm_writel(%struct.img_pwm_chip* %29, i32 %30, i32 %31)
  %33 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %7, align 8
  %34 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PERIP_PWM_PDM_CONTROL, align 4
  %37 = load i32, i32* @PERIP_PWM_PDM_CONTROL_CH_MASK, align 4
  %38 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %39 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PERIP_PWM_PDM_CONTROL_CH_SHIFT(i32 %40)
  %42 = shl i32 %37, %41
  %43 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %42, i32 0)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %19, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.img_pwm_chip* @to_img_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @img_pwm_readl(%struct.img_pwm_chip*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @img_pwm_writel(%struct.img_pwm_chip*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PERIP_PWM_PDM_CONTROL_CH_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
