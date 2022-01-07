; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-berlin.c_berlin_pwm_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-berlin.c_berlin_pwm_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.berlin_pwm_chip = type { i32 }

@BERLIN_PWM_CONTROL = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@BERLIN_PWM_INVERT_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @berlin_pwm_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin_pwm_set_polarity(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.berlin_pwm_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.berlin_pwm_chip* @to_berlin_pwm_chip(%struct.pwm_chip* %9)
  store %struct.berlin_pwm_chip* %10, %struct.berlin_pwm_chip** %7, align 8
  %11 = load %struct.berlin_pwm_chip*, %struct.berlin_pwm_chip** %7, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %13 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BERLIN_PWM_CONTROL, align 4
  %16 = call i32 @berlin_pwm_readl(%struct.berlin_pwm_chip* %11, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @BERLIN_PWM_INVERT_POLARITY, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @BERLIN_PWM_INVERT_POLARITY, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.berlin_pwm_chip*, %struct.berlin_pwm_chip** %7, align 8
  %31 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %32 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BERLIN_PWM_CONTROL, align 4
  %36 = call i32 @berlin_pwm_writel(%struct.berlin_pwm_chip* %30, i32 %33, i32 %34, i32 %35)
  ret i32 0
}

declare dso_local %struct.berlin_pwm_chip* @to_berlin_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @berlin_pwm_readl(%struct.berlin_pwm_chip*, i32, i32) #1

declare dso_local i32 @berlin_pwm_writel(%struct.berlin_pwm_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
