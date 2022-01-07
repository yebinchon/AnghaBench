; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-jz4740.c_jz4740_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-jz4740.c_jz4740_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }

@JZ_TIMER_CTRL_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @jz4740_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %6 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %7 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @jz4740_timer_get_ctrl(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %11 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @jz4740_timer_set_duty(i32 %12, i32 65535)
  %14 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %15 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jz4740_timer_set_period(i32 %16, i32 0)
  %18 = load i32, i32* @JZ_TIMER_CTRL_PWM_ENABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @jz4740_timer_set_ctrl(i32 %24, i32 %25)
  %27 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %28 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @jz4740_timer_disable(i32 %29)
  ret void
}

declare dso_local i32 @jz4740_timer_get_ctrl(i32) #1

declare dso_local i32 @jz4740_timer_set_duty(i32, i32) #1

declare dso_local i32 @jz4740_timer_set_period(i32, i32) #1

declare dso_local i32 @jz4740_timer_set_ctrl(i32, i32) #1

declare dso_local i32 @jz4740_timer_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
