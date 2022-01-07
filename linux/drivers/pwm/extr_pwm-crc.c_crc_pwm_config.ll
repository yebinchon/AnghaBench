; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-crc.c_crc_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-crc.c_crc_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.crystalcove_pwm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@PWM_MAX_PERIOD_NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"un-supported period_ns\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PWM_BASE_CLK = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM0_CLK_DIV = common dso_local global i32 0, align 4
@PWM_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@PWM_MAX_LEVEL = common dso_local global i32 0, align 4
@PWM0_DUTY_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @crc_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crystalcove_pwm*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %15 = call %struct.crystalcove_pwm* @to_crc_pwm(%struct.pwm_chip* %14)
  store %struct.crystalcove_pwm* %15, %struct.crystalcove_pwm** %10, align 8
  %16 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %10, align 8
  %17 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PWM_MAX_PERIOD_NS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %11, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %65

28:                                               ; preds = %4
  %29 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %30 = call i32 @pwm_get_period(%struct.pwm_device* %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %35 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %36 = call i32 @crc_pwm_disable(%struct.pwm_chip* %34, %struct.pwm_device* %35)
  %37 = load i32, i32* @PWM_BASE_CLK, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @NSEC_PER_SEC, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %10, align 8
  %43 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PWM0_CLK_DIV, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @PWM_OUTPUT_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_write(i32 %44, i32 %45, i32 %48)
  %50 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %51 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %52 = call i32 @crc_pwm_enable(%struct.pwm_chip* %50, %struct.pwm_device* %51)
  br label %53

53:                                               ; preds = %33, %28
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @PWM_MAX_LEVEL, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.crystalcove_pwm*, %struct.crystalcove_pwm** %10, align 8
  %60 = getelementptr inbounds %struct.crystalcove_pwm, %struct.crystalcove_pwm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PWM0_DUTY_CYCLE, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @regmap_write(i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %53, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.crystalcove_pwm* @to_crc_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pwm_get_period(%struct.pwm_device*) #1

declare dso_local i32 @crc_pwm_disable(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @crc_pwm_enable(%struct.pwm_chip*, %struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
