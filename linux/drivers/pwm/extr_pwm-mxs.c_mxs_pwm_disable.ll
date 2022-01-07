; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.mxs_pwm_chip = type { i32, i64 }

@PWM_CTRL = common dso_local global i64 0, align 8
@CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @mxs_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.mxs_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %7 = call %struct.mxs_pwm_chip* @to_mxs_pwm_chip(%struct.pwm_chip* %6)
  store %struct.mxs_pwm_chip* %7, %struct.mxs_pwm_chip** %5, align 8
  %8 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %9 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %13 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PWM_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @CLR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %11, i64 %18)
  %20 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %5, align 8
  %21 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  ret void
}

declare dso_local %struct.mxs_pwm_chip* @to_mxs_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
