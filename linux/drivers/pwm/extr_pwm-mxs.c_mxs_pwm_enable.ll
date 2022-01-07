; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.mxs_pwm_chip = type { i64, i32 }

@PWM_CTRL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @mxs_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.mxs_pwm_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.mxs_pwm_chip* @to_mxs_pwm_chip(%struct.pwm_chip* %8)
  store %struct.mxs_pwm_chip* %9, %struct.mxs_pwm_chip** %6, align 8
  %10 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %6, align 8
  %11 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %20 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %6, align 8
  %24 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PWM_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @SET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %22, i64 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %18, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.mxs_pwm_chip* @to_mxs_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
