; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ab8500.c_ab8500_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ab8500.c_ab8500_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, i32 }
%struct.pwm_device = type { i32 }

@AB8500_PWM_OUT_CTRL1_REG = common dso_local global i64 0, align 8
@AB8500_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @ab8500_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 768
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* @AB8500_PWM_OUT_CTRL1_REG, align 8
  %20 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %21 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %19, %25
  store i64 %26, i64* %13, align 8
  %27 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %28 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AB8500_MISC, align 4
  %31 = load i64, i64* %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = call i32 @abx500_set_register_interruptible(i32 %29, i32 %30, i64 %31, i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %50

39:                                               ; preds = %4
  %40 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %41 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AB8500_MISC, align 4
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %44, 1
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = call i32 @abx500_set_register_interruptible(i32 %42, i32 %43, i64 %45, i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %39, %37
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
