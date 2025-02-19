; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.ehrpwm_pwm_chip = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @ehrpwm_pwm_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehrpwm_pwm_set_polarity(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehrpwm_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.ehrpwm_pwm_chip* @to_ehrpwm_pwm_chip(%struct.pwm_chip* %8)
  store %struct.ehrpwm_pwm_chip* %9, %struct.ehrpwm_pwm_chip** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %7, align 8
  %12 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %15 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %10, i32* %17, align 4
  ret i32 0
}

declare dso_local %struct.ehrpwm_pwm_chip* @to_ehrpwm_pwm_chip(%struct.pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
