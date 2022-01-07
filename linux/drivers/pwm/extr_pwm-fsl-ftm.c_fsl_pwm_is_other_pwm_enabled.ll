; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_is_other_pwm_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_is_other_pwm_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }

@FTM_OUTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_pwm_chip*, %struct.pwm_device*)* @fsl_pwm_is_other_pwm_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_is_other_pwm_enabled(%struct.fsl_pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_pwm_chip* %0, %struct.fsl_pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %7 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %4, align 8
  %8 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FTM_OUTMASK, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %6)
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %14 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = or i32 %12, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %18, 255
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
