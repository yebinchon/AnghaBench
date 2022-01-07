; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl-led.c_twl6030_pwmled_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl-led.c_twl6030_pwmled_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.twl_pwmled_chip = type { i32 }

@TWL6030_MODULE_ID1 = common dso_local global i32 0, align 4
@TWL6030_LED_PWM_CTRL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Failed to read PWM_CTRL2\0A\00", align 1
@TWL6040_LED_MODE_MASK = common dso_local global i32 0, align 4
@TWL6040_LED_MODE_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Failed to free PWM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @twl6030_pwmled_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl6030_pwmled_free(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.twl_pwmled_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %9 = call %struct.twl_pwmled_chip* @to_twl(%struct.pwm_chip* %8)
  store %struct.twl_pwmled_chip* %9, %struct.twl_pwmled_chip** %5, align 8
  %10 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %5, align 8
  %11 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @TWL6030_MODULE_ID1, align 4
  %14 = load i32, i32* @TWL6030_LED_PWM_CTRL2, align 4
  %15 = call i32 @twl_i2c_read_u8(i32 %13, i32* %7, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %20 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %49

26:                                               ; preds = %2
  %27 = load i32, i32* @TWL6040_LED_MODE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @TWL6040_LED_MODE_HW, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @TWL6030_MODULE_ID1, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TWL6030_LED_PWM_CTRL2, align 4
  %37 = call i32 @twl_i2c_write_u8(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %42 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %45 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %40, %26
  br label %49

49:                                               ; preds = %48, %18
  %50 = load %struct.twl_pwmled_chip*, %struct.twl_pwmled_chip** %5, align 8
  %51 = getelementptr inbounds %struct.twl_pwmled_chip, %struct.twl_pwmled_chip* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  ret void
}

declare dso_local %struct.twl_pwmled_chip* @to_twl(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
