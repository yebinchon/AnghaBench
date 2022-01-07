; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pca9685.c_pca9685_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pca9685.c_pca9685_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.pca9685 = type { i32 }

@PCA9685_MAXCHAN = common dso_local global i64 0, align 8
@PCA9685_ALL_LED_OFF_H = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@PCA9685_ALL_LED_OFF_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @pca9685_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca9685_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.pca9685*, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.pca9685* @to_pca(%struct.pwm_chip* %7)
  store %struct.pca9685* %8, %struct.pca9685** %5, align 8
  %9 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %10 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PCA9685_ALL_LED_OFF_H, align 4
  store i32 %15, i32* %6, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %18 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @LED_N_OFF_H(i64 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %14
  %22 = load %struct.pca9685*, %struct.pca9685** %5, align 8
  %23 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @LED_FULL, align 4
  %27 = call i32 @regmap_write(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %29 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @PCA9685_ALL_LED_OFF_L, align 4
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %21
  %36 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %37 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @LED_N_OFF_L(i64 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %33
  %41 = load %struct.pca9685*, %struct.pca9685** %5, align 8
  %42 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @regmap_write(i32 %43, i32 %44, i32 0)
  ret void
}

declare dso_local %struct.pca9685* @to_pca(%struct.pwm_chip*) #1

declare dso_local i32 @LED_N_OFF_H(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LED_N_OFF_L(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
