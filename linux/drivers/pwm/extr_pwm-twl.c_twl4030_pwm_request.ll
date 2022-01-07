; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl.c_twl4030_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl.c_twl4030_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, i32 }
%struct.twl_pwm_chip = type { i32, i32 }

@TWL4030_GPIO7_VIBRASYNC_PWM1_MASK = common dso_local global i32 0, align 4
@TWL4030_GPIO7_VIBRASYNC_PWM1_PWM1 = common dso_local global i32 0, align 4
@TWL4030_GPIO6_PWM0_MUTE_MASK = common dso_local global i32 0, align 4
@TWL4030_GPIO6_PWM0_MUTE_PWM0 = common dso_local global i32 0, align 4
@TWL4030_MODULE_INTBR = common dso_local global i32 0, align 4
@TWL4030_PMBR1_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Failed to read PMBR1\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Failed to request PWM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @twl4030_pwm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_pwm_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.twl_pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %11 = call %struct.twl_pwm_chip* @to_twl(%struct.pwm_chip* %10)
  store %struct.twl_pwm_chip* %11, %struct.twl_pwm_chip** %5, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @TWL4030_GPIO7_VIBRASYNC_PWM1_MASK, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @TWL4030_GPIO7_VIBRASYNC_PWM1_PWM1, align 4
  store i32 %18, i32* %9, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @TWL4030_GPIO6_PWM0_MUTE_MASK, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @TWL4030_GPIO6_PWM0_MUTE_PWM0, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %5, align 8
  %24 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %27 = load i32, i32* @TWL4030_PMBR1_REG, align 4
  %28 = call i32 @twl_i2c_read_u8(i32 %26, i32* %7, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %33 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %36 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %75

39:                                               ; preds = %22
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %5, align 8
  %43 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %5, align 8
  %50 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @TWL4030_PMBR1_REG, align 4
  %63 = call i32 @twl_i2c_write_u8(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %39
  %67 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %68 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %71 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %66, %39
  br label %75

75:                                               ; preds = %74, %31
  %76 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %5, align 8
  %77 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.twl_pwm_chip* @to_twl(%struct.pwm_chip*) #1

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
