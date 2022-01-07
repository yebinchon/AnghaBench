; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_apply_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_apply_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32 }
%struct.stm32_pwm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @stm32_pwm_apply_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_apply_locked(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.stm32_pwm*, align 8
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.stm32_pwm* @to_stm32_pwm_dev(%struct.pwm_chip* %9)
  store %struct.stm32_pwm* %10, %struct.stm32_pwm** %7, align 8
  %11 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %12 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %15 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %16 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %17 = call i32 @stm32_pwm_apply(%struct.pwm_chip* %14, %struct.pwm_device* %15, %struct.pwm_state* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.stm32_pwm*, %struct.stm32_pwm** %7, align 8
  %19 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local %struct.stm32_pwm* @to_stm32_pwm_dev(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stm32_pwm_apply(%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
