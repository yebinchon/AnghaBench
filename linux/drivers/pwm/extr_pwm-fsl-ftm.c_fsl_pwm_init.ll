; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pwm_chip = type { i32, i32 }

@FTM_CNTIN = common dso_local global i32 0, align 4
@FTM_OUTINIT = common dso_local global i32 0, align 4
@FTM_OUTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_pwm_chip*)* @fsl_pwm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_init(%struct.fsl_pwm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_pwm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_pwm_chip* %0, %struct.fsl_pwm_chip** %3, align 8
  %5 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FTM_CNTIN, align 4
  %18 = call i32 @regmap_write(i32 %16, i32 %17, i32 0)
  %19 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FTM_OUTINIT, align 4
  %23 = call i32 @regmap_write(i32 %21, i32 %22, i32 0)
  %24 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FTM_OUTMASK, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 255)
  %29 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %13, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
