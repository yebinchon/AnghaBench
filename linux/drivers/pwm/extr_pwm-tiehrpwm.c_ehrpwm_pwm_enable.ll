; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.ehrpwm_pwm_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AQCSFRC_CSFB_FRCDIS = common dso_local global i32 0, align 4
@AQCSFRC_CSFB_MASK = common dso_local global i32 0, align 4
@AQCSFRC_CSFA_FRCDIS = common dso_local global i32 0, align 4
@AQCSFRC_CSFA_MASK = common dso_local global i32 0, align 4
@AQSFRC = common dso_local global i32 0, align 4
@AQSFRC_RLDCSF_MASK = common dso_local global i32 0, align 4
@AQSFRC_RLDCSF_ZRO = common dso_local global i32 0, align 4
@AQCSFRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to enable TBCLK for %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @ehrpwm_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehrpwm_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.ehrpwm_pwm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %11 = call %struct.ehrpwm_pwm_chip* @to_ehrpwm_pwm_chip(%struct.pwm_chip* %10)
  store %struct.ehrpwm_pwm_chip* %11, %struct.ehrpwm_pwm_chip** %6, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %17 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @AQCSFRC_CSFB_FRCDIS, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @AQCSFRC_CSFB_MASK, align 4
  store i32 %22, i32* %8, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @AQCSFRC_CSFA_FRCDIS, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @AQCSFRC_CSFA_MASK, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %6, align 8
  %28 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AQSFRC, align 4
  %31 = load i32, i32* @AQSFRC_RLDCSF_MASK, align 4
  %32 = load i32, i32* @AQSFRC_RLDCSF_ZRO, align 4
  %33 = call i32 @ehrpwm_modify(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %6, align 8
  %35 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AQCSFRC, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ehrpwm_modify(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %6, align 8
  %42 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %43 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @configure_polarity(%struct.ehrpwm_pwm_chip* %41, i32 %44)
  %46 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %6, align 8
  %47 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_enable(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %26
  %53 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %54 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %6, align 8
  %57 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_name(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ehrpwm_pwm_chip* @to_ehrpwm_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @ehrpwm_modify(i32, i32, i32, i32) #1

declare dso_local i32 @configure_polarity(%struct.ehrpwm_pwm_chip*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
