; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.fsl_pwm_chip = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@FTM_SC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @fsl_pwm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.fsl_pwm_chip* @to_fsl_chip(%struct.pwm_chip* %7)
  store %struct.fsl_pwm_chip* %8, %struct.fsl_pwm_chip** %6, align 8
  %9 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %6, align 8
  %10 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %2
  %16 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %6, align 8
  %17 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %6, align 8
  %24 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %6, align 8
  %27 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FTM_SC, align 4
  %30 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %31 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 16
  %34 = call i32 @BIT(i64 %33)
  %35 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %36 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 16
  %39 = call i32 @BIT(i64 %38)
  %40 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %34, i32 %39)
  %41 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %6, align 8
  %42 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %22, %15, %2
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.fsl_pwm_chip* @to_fsl_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
