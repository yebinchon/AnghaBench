; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_bank_a_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_bank_a_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lm3630a_chip = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@LM3630A_PWM_BANK_A = common dso_local global i32 0, align 4
@REG_PWM_OUTHIGH = common dso_local global i32 0, align 4
@REG_PWM_OUTLOW = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@REG_BRT_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c failed to access register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @lm3630a_bank_a_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_bank_a_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lm3630a_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.lm3630a_chip* @bl_get_data(%struct.backlight_device* %8)
  store %struct.lm3630a_chip* %9, %struct.lm3630a_chip** %6, align 8
  %10 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %6, align 8
  %11 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LM3630A_PWM_BANK_A, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %6, align 8
  %21 = load i32, i32* @REG_PWM_OUTHIGH, align 4
  %22 = call i32 @lm3630a_read(%struct.lm3630a_chip* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %66

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 1
  %29 = shl i32 %28, 8
  store i32 %29, i32* %4, align 4
  %30 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %6, align 8
  %31 = load i32, i32* @REG_PWM_OUTLOW, align 4
  %32 = call i32 @lm3630a_read(%struct.lm3630a_chip* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %66

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %57

40:                                               ; preds = %1
  %41 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %6, align 8
  %42 = load i32, i32* @REG_CTRL, align 4
  %43 = call i32 @lm3630a_update(%struct.lm3630a_chip* %41, i32 %42, i32 128, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %66

47:                                               ; preds = %40
  %48 = call i32 @usleep_range(i32 1000, i32 2000)
  %49 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %6, align 8
  %50 = load i32, i32* @REG_BRT_A, align 4
  %51 = call i32 @lm3630a_read(%struct.lm3630a_chip* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %66

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %36
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %60 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %63 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %54, %46, %35, %25
  %67 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %6, align 8
  %68 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %57
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.lm3630a_chip* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @lm3630a_read(%struct.lm3630a_chip*, i32) #1

declare dso_local i32 @lm3630a_update(%struct.lm3630a_chip*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
