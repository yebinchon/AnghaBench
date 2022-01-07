; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_set_cprd_cdty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_set_cprd_cdty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.atmel_pwm_chip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, i64, i64)* @atmel_pwm_set_cprd_cdty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pwm_set_cprd_cdty(%struct.pwm_chip* %0, %struct.pwm_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.atmel_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %11 = call %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip* %10)
  store %struct.atmel_pwm_chip* %11, %struct.atmel_pwm_chip** %9, align 8
  %12 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %9, align 8
  %13 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %14 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %9, align 8
  %17 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip* %12, i32 %15, i32 %21, i64 %22)
  %24 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %9, align 8
  %25 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %26 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %9, align 8
  %29 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip* %24, i32 %27, i32 %33, i64 %34)
  ret void
}

declare dso_local %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
