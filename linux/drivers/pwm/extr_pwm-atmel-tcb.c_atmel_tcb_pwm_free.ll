; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-tcb.c_atmel_tcb_pwm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-tcb.c_atmel_tcb_pwm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.atmel_tcb_pwm_chip = type { i32**, %struct.atmel_tc* }
%struct.atmel_tc = type { i32* }
%struct.atmel_tcb_pwm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @atmel_tcb_pwm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_tcb_pwm_free(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.atmel_tcb_pwm_chip*, align 8
  %6 = alloca %struct.atmel_tcb_pwm_device*, align 8
  %7 = alloca %struct.atmel_tc*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %9 = call %struct.atmel_tcb_pwm_chip* @to_tcb_chip(%struct.pwm_chip* %8)
  store %struct.atmel_tcb_pwm_chip* %9, %struct.atmel_tcb_pwm_chip** %5, align 8
  %10 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %11 = call %struct.atmel_tcb_pwm_device* @pwm_get_chip_data(%struct.pwm_device* %10)
  store %struct.atmel_tcb_pwm_device* %11, %struct.atmel_tcb_pwm_device** %6, align 8
  %12 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %12, i32 0, i32 1
  %14 = load %struct.atmel_tc*, %struct.atmel_tc** %13, align 8
  store %struct.atmel_tc* %14, %struct.atmel_tc** %7, align 8
  %15 = load %struct.atmel_tc*, %struct.atmel_tc** %7, align 8
  %16 = getelementptr inbounds %struct.atmel_tc, %struct.atmel_tc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %19 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load %struct.atmel_tcb_pwm_chip*, %struct.atmel_tcb_pwm_chip** %5, align 8
  %27 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, %struct.atmel_tcb_pwm_chip* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %30 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %28, i64 %32
  store i32* null, i32** %33, align 8
  %34 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %35 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.atmel_tcb_pwm_device*, %struct.atmel_tcb_pwm_device** %6, align 8
  %38 = call i32 @devm_kfree(i32 %36, %struct.atmel_tcb_pwm_device* %37)
  ret void
}

declare dso_local %struct.atmel_tcb_pwm_chip* @to_tcb_chip(%struct.pwm_chip*) #1

declare dso_local %struct.atmel_tcb_pwm_device* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.atmel_tcb_pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
