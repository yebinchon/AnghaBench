; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.clps711x_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @clps711x_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.clps711x_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.clps711x_chip* @to_clps711x_chip(%struct.pwm_chip* %7)
  store %struct.clps711x_chip* %8, %struct.clps711x_chip** %5, align 8
  %9 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %10 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %11 = call i32 @pwm_get_duty_cycle(%struct.pwm_device* %10)
  %12 = call i32 @clps711x_get_duty(%struct.pwm_device* %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.clps711x_chip*, %struct.clps711x_chip** %5, align 8
  %14 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %15 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @clps711x_pwm_update_val(%struct.clps711x_chip* %13, i32 %16, i32 %17)
  ret i32 0
}

declare dso_local %struct.clps711x_chip* @to_clps711x_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clps711x_get_duty(%struct.pwm_device*, i32) #1

declare dso_local i32 @pwm_get_duty_cycle(%struct.pwm_device*) #1

declare dso_local i32 @clps711x_pwm_update_val(%struct.clps711x_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
