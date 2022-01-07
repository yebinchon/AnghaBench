; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_ftm_clear_write_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_ftm_clear_write_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pwm_chip = type { i32 }

@FTM_FMS = common dso_local global i32 0, align 4
@FTM_FMS_WPEN = common dso_local global i32 0, align 4
@FTM_MODE = common dso_local global i32 0, align 4
@FTM_MODE_WPDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_pwm_chip*)* @ftm_clear_write_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftm_clear_write_protection(%struct.fsl_pwm_chip* %0) #0 {
  %2 = alloca %struct.fsl_pwm_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_pwm_chip* %0, %struct.fsl_pwm_chip** %2, align 8
  %4 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FTM_FMS, align 4
  %8 = call i32 @regmap_read(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FTM_FMS_WPEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FTM_MODE, align 4
  %18 = load i32, i32* @FTM_MODE_WPDIS, align 4
  %19 = load i32, i32* @FTM_MODE_WPDIS, align 4
  %20 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
