; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ab8500.c_ab8500_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ab8500.c_ab8500_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, i32 }
%struct.pwm_device = type { i32 }

@AB8500_MISC = common dso_local global i32 0, align 4
@AB8500_PWM_OUT_CTRL7_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Failed to enable PWM, Error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @ab8500_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %7 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AB8500_MISC, align 4
  %10 = load i32, i32* @AB8500_PWM_OUT_CTRL7_REG, align 4
  %11 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %12 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 1, %14
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %17 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 1, %19
  %21 = call i32 @abx500_mask_and_set_register_interruptible(i32 %8, i32 %9, i32 %10, i32 %15, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %26 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %29 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %2
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
