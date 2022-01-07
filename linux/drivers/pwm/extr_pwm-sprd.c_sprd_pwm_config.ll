; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pwm_chip = type { %struct.sprd_pwm_chn* }
%struct.sprd_pwm_chn = type { i64 }
%struct.pwm_device = type { i64 }

@SPRD_PWM_MOD_MAX = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@SPRD_PWM_PRESCALE_MSK = common dso_local global i64 0, align 8
@SPRD_PWM_PRESCALE = common dso_local global i32 0, align 4
@SPRD_PWM_MOD = common dso_local global i32 0, align 4
@SPRD_PWM_DUTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_pwm_chip*, %struct.pwm_device*, i32, i32)* @sprd_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pwm_config(%struct.sprd_pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sprd_pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sprd_pwm_chn*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sprd_pwm_chip* %0, %struct.sprd_pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %5, align 8
  %14 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %13, i32 0, i32 0
  %15 = load %struct.sprd_pwm_chn*, %struct.sprd_pwm_chn** %14, align 8
  %16 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %17 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.sprd_pwm_chn, %struct.sprd_pwm_chn* %15, i64 %18
  store %struct.sprd_pwm_chn* %19, %struct.sprd_pwm_chn** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SPRD_PWM_MOD_MAX, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %22, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load %struct.sprd_pwm_chn*, %struct.sprd_pwm_chn** %9, align 8
  %27 = getelementptr inbounds %struct.sprd_pwm_chn, %struct.sprd_pwm_chn* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @NSEC_PER_SEC, align 4
  %34 = call i32 @do_div(i32 %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @SPRD_PWM_MOD_MAX, align 4
  %37 = call i64 @DIV_ROUND_CLOSEST_ULL(i32 %35, i32 %36)
  %38 = sub nsw i64 %37, 1
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @SPRD_PWM_PRESCALE_MSK, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i64, i64* @SPRD_PWM_PRESCALE_MSK, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %42, %4
  %45 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %5, align 8
  %46 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %47 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @SPRD_PWM_PRESCALE, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @sprd_pwm_write(%struct.sprd_pwm_chip* %45, i64 %48, i32 %49, i64 %50)
  %52 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %5, align 8
  %53 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %54 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @SPRD_PWM_MOD, align 4
  %57 = load i32, i32* @SPRD_PWM_MOD_MAX, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @sprd_pwm_write(%struct.sprd_pwm_chip* %52, i64 %55, i32 %56, i64 %58)
  %60 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %5, align 8
  %61 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %62 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @SPRD_PWM_DUTY, align 4
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @sprd_pwm_write(%struct.sprd_pwm_chip* %60, i64 %63, i32 %64, i64 %65)
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @sprd_pwm_write(%struct.sprd_pwm_chip*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
