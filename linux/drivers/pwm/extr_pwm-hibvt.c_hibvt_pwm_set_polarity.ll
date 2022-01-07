; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.hibvt_pwm_chip = type { i32 }

@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@PWM_POLARITY_MASK = common dso_local global i32 0, align 4
@PWM_POLARITY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, i32)* @hibvt_pwm_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibvt_pwm_set_polarity(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hibvt_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.hibvt_pwm_chip* @to_hibvt_pwm_chip(%struct.pwm_chip* %8)
  store %struct.hibvt_pwm_chip* %9, %struct.hibvt_pwm_chip** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %7, align 8
  %15 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %18 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PWM_CTRL_ADDR(i32 %19)
  %21 = load i32, i32* @PWM_POLARITY_MASK, align 4
  %22 = load i32, i32* @PWM_POLARITY_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = call i32 @hibvt_pwm_set_bits(i32 %16, i32 %20, i32 %21, i32 %23)
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %7, align 8
  %27 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %30 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PWM_CTRL_ADDR(i32 %31)
  %33 = load i32, i32* @PWM_POLARITY_MASK, align 4
  %34 = load i32, i32* @PWM_POLARITY_SHIFT, align 4
  %35 = shl i32 0, %34
  %36 = call i32 @hibvt_pwm_set_bits(i32 %28, i32 %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %25, %13
  ret void
}

declare dso_local %struct.hibvt_pwm_chip* @to_hibvt_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @hibvt_pwm_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PWM_CTRL_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
