; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.gb_pwm_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @gb_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gb_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %11 = call %struct.gb_pwm_chip* @pwm_chip_to_gb_pwm_chip(%struct.pwm_chip* %10)
  store %struct.gb_pwm_chip* %11, %struct.gb_pwm_chip** %9, align 8
  %12 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %9, align 8
  %13 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %14 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @gb_pwm_config_operation(%struct.gb_pwm_chip* %12, i32 %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local %struct.gb_pwm_chip* @pwm_chip_to_gb_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @gb_pwm_config_operation(%struct.gb_pwm_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
