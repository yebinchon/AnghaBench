; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.fsl_pwm_chip = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FTM_SC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @fsl_pwm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_pwm_free(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.fsl_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %7 = call %struct.fsl_pwm_chip* @to_fsl_chip(%struct.pwm_chip* %6)
  store %struct.fsl_pwm_chip* %7, %struct.fsl_pwm_chip** %5, align 8
  %8 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %9 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %16 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %19 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FTM_SC, align 4
  %22 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 16
  %26 = call i32 @BIT(i64 %25)
  %27 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %26, i32 0)
  %28 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %29 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %14, %2
  %32 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  ret void
}

declare dso_local %struct.fsl_pwm_chip* @to_fsl_chip(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
