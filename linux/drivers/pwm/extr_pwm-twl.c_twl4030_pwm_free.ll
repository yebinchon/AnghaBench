; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl.c_twl4030_pwm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl.c_twl4030_pwm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, i32 }
%struct.twl_pwm_chip = type { i32, i32 }

@TWL4030_GPIO7_VIBRASYNC_PWM1_MASK = common dso_local global i32 0, align 4
@TWL4030_GPIO6_PWM0_MUTE_MASK = common dso_local global i32 0, align 4
@TWL4030_MODULE_INTBR = common dso_local global i32 0, align 4
@TWL4030_PMBR1_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Failed to read PMBR1\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Failed to free PWM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @twl4030_pwm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_pwm_free(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.twl_pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %10 = call %struct.twl_pwm_chip* @to_twl(%struct.pwm_chip* %9)
  store %struct.twl_pwm_chip* %10, %struct.twl_pwm_chip** %5, align 8
  %11 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %12 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @TWL4030_GPIO7_VIBRASYNC_PWM1_MASK, align 4
  store i32 %16, i32* %8, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TWL4030_GPIO6_PWM0_MUTE_MASK, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %5, align 8
  %21 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %24 = load i32, i32* @TWL4030_PMBR1_REG, align 4
  %25 = call i32 @twl_i2c_read_u8(i32 %23, i32* %7, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %30 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %33 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %63

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %5, align 8
  %42 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TWL4030_PMBR1_REG, align 4
  %51 = call i32 @twl_i2c_write_u8(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %36
  %55 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %56 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %59 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %36
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.twl_pwm_chip*, %struct.twl_pwm_chip** %5, align 8
  %65 = getelementptr inbounds %struct.twl_pwm_chip, %struct.twl_pwm_chip* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  ret void
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
