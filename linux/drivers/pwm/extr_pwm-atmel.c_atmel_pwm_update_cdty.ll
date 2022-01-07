; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_update_cdty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_update_cdty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.atmel_pwm_chip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@PWM_CMR = common dso_local global i64 0, align 8
@PWM_CMR_UPD_CDTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, i64)* @atmel_pwm_update_cdty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pwm_update_cdty(%struct.pwm_chip* %0, %struct.pwm_device* %1, i64 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atmel_pwm_chip*, align 8
  %8 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip* %9)
  store %struct.atmel_pwm_chip* %10, %struct.atmel_pwm_chip** %7, align 8
  %11 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %12 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %18 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %16, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %26 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %27 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @PWM_CMR, align 8
  %30 = call i64 @atmel_pwm_ch_readl(%struct.atmel_pwm_chip* %25, i32 %28, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* @PWM_CMR_UPD_CDTY, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %36 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %37 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @PWM_CMR, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip* %35, i32 %38, i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %24, %3
  %43 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %44 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %45 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %48 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip* %43, i32 %46, i64 %52, i64 %53)
  ret void
}

declare dso_local %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i64 @atmel_pwm_ch_readl(%struct.atmel_pwm_chip*, i32, i64) #1

declare dso_local i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
