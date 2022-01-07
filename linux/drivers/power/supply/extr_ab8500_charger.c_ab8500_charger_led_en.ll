; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_led_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_led_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { i32 }

@AB8500_CHARGER = common dso_local global i32 0, align 4
@AB8500_LED_INDICATOR_PWM_CTRL = common dso_local global i32 0, align 4
@LED_IND_CUR_5MA = common dso_local global i32 0, align 4
@LED_INDICATOR_PWM_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Power ON LED failed\0A\00", align 1
@AB8500_LED_INDICATOR_PWM_DUTY = common dso_local global i32 0, align 4
@LED_INDICATOR_PWM_DUTY_252_256 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Set LED PWM duty cycle failed\0A\00", align 1
@LED_INDICATOR_PWM_DIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Power-off LED failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_charger*, i32)* @ab8500_charger_led_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_led_en(%struct.ab8500_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ab8500_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ab8500_charger* %0, %struct.ab8500_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load %struct.ab8500_charger*, %struct.ab8500_charger** %4, align 8
  %11 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AB8500_CHARGER, align 4
  %14 = load i32, i32* @AB8500_LED_INDICATOR_PWM_CTRL, align 4
  %15 = load i32, i32* @LED_IND_CUR_5MA, align 4
  %16 = load i32, i32* @LED_INDICATOR_PWM_ENA, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @abx500_set_register_interruptible(i32 %12, i32 %13, i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load %struct.ab8500_charger*, %struct.ab8500_charger** %4, align 8
  %23 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %9
  %28 = load %struct.ab8500_charger*, %struct.ab8500_charger** %4, align 8
  %29 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AB8500_CHARGER, align 4
  %32 = load i32, i32* @AB8500_LED_INDICATOR_PWM_DUTY, align 4
  %33 = load i32, i32* @LED_INDICATOR_PWM_DUTY_252_256, align 4
  %34 = call i32 @abx500_set_register_interruptible(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.ab8500_charger*, %struct.ab8500_charger** %4, align 8
  %39 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %27
  br label %61

44:                                               ; preds = %2
  %45 = load %struct.ab8500_charger*, %struct.ab8500_charger** %4, align 8
  %46 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AB8500_CHARGER, align 4
  %49 = load i32, i32* @AB8500_LED_INDICATOR_PWM_CTRL, align 4
  %50 = load i32, i32* @LED_INDICATOR_PWM_DIS, align 4
  %51 = call i32 @abx500_set_register_interruptible(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.ab8500_charger*, %struct.ab8500_charger** %4, align 8
  %56 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %54, %37, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
