; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-kona.c_kona_pwmc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-kona.c_kona_pwmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.kona_pwmc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @kona_pwmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kona_pwmc_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.kona_pwmc*, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.kona_pwmc* @to_kona_pwmc(%struct.pwm_chip* %8)
  store %struct.kona_pwmc* %9, %struct.kona_pwmc** %6, align 8
  %10 = load %struct.kona_pwmc*, %struct.kona_pwmc** %6, align 8
  %11 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %18 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %25 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %26 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %27 = call i32 @pwm_get_duty_cycle(%struct.pwm_device* %26)
  %28 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %29 = call i32 @pwm_get_period(%struct.pwm_device* %28)
  %30 = call i32 @kona_pwmc_config(%struct.pwm_chip* %24, %struct.pwm_device* %25, i32 %27, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.kona_pwmc*, %struct.kona_pwmc** %6, align 8
  %35 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_disable_unprepare(i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %33, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.kona_pwmc* @to_kona_pwmc(%struct.pwm_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kona_pwmc_config(%struct.pwm_chip*, %struct.pwm_device*, i32, i32) #1

declare dso_local i32 @pwm_get_duty_cycle(%struct.pwm_device*) #1

declare dso_local i32 @pwm_get_period(%struct.pwm_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
