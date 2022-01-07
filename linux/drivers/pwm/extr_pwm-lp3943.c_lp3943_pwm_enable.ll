; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.lp3943_pwm = type { i32 }
%struct.lp3943_pwm_map = type { i32 }

@LP3943_DIM_PWM0 = common dso_local global i32 0, align 4
@LP3943_DIM_PWM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @lp3943_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.lp3943_pwm*, align 8
  %6 = alloca %struct.lp3943_pwm_map*, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %9 = call %struct.lp3943_pwm* @to_lp3943_pwm(%struct.pwm_chip* %8)
  store %struct.lp3943_pwm* %9, %struct.lp3943_pwm** %5, align 8
  %10 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %11 = call %struct.lp3943_pwm_map* @pwm_get_chip_data(%struct.pwm_device* %10)
  store %struct.lp3943_pwm_map* %11, %struct.lp3943_pwm_map** %6, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @LP3943_DIM_PWM0, align 4
  store i32 %17, i32* %7, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @LP3943_DIM_PWM1, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %22 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @lp3943_pwm_set_mode(%struct.lp3943_pwm* %21, %struct.lp3943_pwm_map* %22, i32 %23)
  ret i32 %24
}

declare dso_local %struct.lp3943_pwm* @to_lp3943_pwm(%struct.pwm_chip*) #1

declare dso_local %struct.lp3943_pwm_map* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @lp3943_pwm_set_mode(%struct.lp3943_pwm*, %struct.lp3943_pwm_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
