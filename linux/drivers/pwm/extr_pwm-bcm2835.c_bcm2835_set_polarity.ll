; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm2835.c_bcm2835_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm2835.c_bcm2835_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.bcm2835_pwm = type { i64 }

@PWM_CONTROL = common dso_local global i64 0, align 8
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@PWM_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @bcm2835_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_set_polarity(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm2835_pwm*, align 8
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.bcm2835_pwm* @to_bcm2835_pwm(%struct.pwm_chip* %9)
  store %struct.bcm2835_pwm* %10, %struct.bcm2835_pwm** %7, align 8
  %11 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %7, align 8
  %12 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PWM_CONTROL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32, i32* @PWM_POLARITY, align 4
  %22 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PWM_CONTROL_SHIFT(i32 %24)
  %26 = shl i32 %21, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load i32, i32* @PWM_POLARITY, align 4
  %32 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %33 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PWM_CONTROL_SHIFT(i32 %34)
  %36 = shl i32 %31, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %7, align 8
  %42 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PWM_CONTROL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  ret i32 0
}

declare dso_local %struct.bcm2835_pwm* @to_bcm2835_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @PWM_CONTROL_SHIFT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
