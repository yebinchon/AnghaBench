; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.lp3943_pwm = type { %struct.lp3943* }
%struct.lp3943 = type { i32 }

@LP3943_REG_PRESCALE0 = common dso_local global i64 0, align 8
@LP3943_REG_PWM0 = common dso_local global i64 0, align 8
@LP3943_REG_PRESCALE1 = common dso_local global i64 0, align 8
@LP3943_REG_PWM1 = common dso_local global i64 0, align 8
@LP3943_MIN_PERIOD = common dso_local global i32 0, align 4
@LP3943_MAX_PERIOD = common dso_local global i32 0, align 4
@LP3943_MAX_DUTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @lp3943_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lp3943_pwm*, align 8
  %11 = alloca %struct.lp3943*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %17 = call %struct.lp3943_pwm* @to_lp3943_pwm(%struct.pwm_chip* %16)
  store %struct.lp3943_pwm* %17, %struct.lp3943_pwm** %10, align 8
  %18 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %10, align 8
  %19 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %18, i32 0, i32 0
  %20 = load %struct.lp3943*, %struct.lp3943** %19, align 8
  store %struct.lp3943* %20, %struct.lp3943** %11, align 8
  %21 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %22 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @LP3943_REG_PRESCALE0, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* @LP3943_REG_PWM0, align 8
  store i64 %27, i64* %13, align 8
  br label %31

28:                                               ; preds = %4
  %29 = load i64, i64* @LP3943_REG_PRESCALE1, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* @LP3943_REG_PWM1, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @LP3943_MIN_PERIOD, align 4
  %34 = load i32, i32* @LP3943_MAX_PERIOD, align 4
  %35 = call i32 @clamp(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @LP3943_MIN_PERIOD, align 4
  %38 = sdiv i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %12, align 8
  %41 = load %struct.lp3943*, %struct.lp3943** %11, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @lp3943_write_byte(%struct.lp3943* %41, i64 %42, i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %5, align 4
  br label %60

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @LP3943_MAX_DUTY, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = sdiv i32 %52, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %12, align 8
  %56 = load %struct.lp3943*, %struct.lp3943** %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @lp3943_write_byte(%struct.lp3943* %56, i64 %57, i64 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %49, %47
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.lp3943_pwm* @to_lp3943_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @lp3943_write_byte(%struct.lp3943*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
