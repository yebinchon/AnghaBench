; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, i32*, i32 }
%struct.pwm_device = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"period %d not in range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@LPC18XX_PWM_EVENT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"conflicting period requested for PWM %u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @lpc18xx_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %14 = call %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip* %13)
  store %struct.lpc18xx_pwm_chip* %14, %struct.lpc18xx_pwm_chip** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %17 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %23 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %4
  %27 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %28 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %116

34:                                               ; preds = %20
  %35 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %36 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %35, i32 0, i32 3
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %39 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %38, i32 0, i32 4
  %40 = load i32, i32* @LPC18XX_PWM_EVENT_MAX, align 4
  %41 = call i32 @bitmap_weight(i32* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 2
  br i1 %43, label %44, label %68

44:                                               ; preds = %34
  %45 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %46 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %52 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %57 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %60 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %64 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %63, i32 0, i32 3
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %116

68:                                               ; preds = %50, %44, %34
  %69 = load i32, i32* %11, align 4
  %70 = icmp sle i32 %69, 2
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %73 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %71, %68
  %78 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %79 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %77, %71
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %85 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %101, %82
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %89 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %94 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @pwm_set_period(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @lpc18xx_pwm_config_period(%struct.pwm_chip* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %77
  %109 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %10, align 8
  %110 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %109, i32 0, i32 3
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %113 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @lpc18xx_pwm_config_duty(%struct.pwm_chip* %112, %struct.pwm_device* %113, i32 %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %108, %55, %26
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_weight(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pwm_set_period(i32*, i32) #1

declare dso_local i32 @lpc18xx_pwm_config_period(%struct.pwm_chip*, i32) #1

declare dso_local i32 @lpc18xx_pwm_config_duty(%struct.pwm_chip*, %struct.pwm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
