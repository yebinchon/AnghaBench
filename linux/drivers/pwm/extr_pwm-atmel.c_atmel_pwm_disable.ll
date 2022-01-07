; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.atmel_pwm_chip = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PWM_ISR = common dso_local global i32 0, align 4
@PWM_DIS = common dso_local global i32 0, align 4
@PWM_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, i32)* @atmel_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_pwm_chip*, align 8
  %8 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip* %9)
  store %struct.atmel_pwm_chip* %10, %struct.atmel_pwm_chip** %7, align 8
  %11 = load i32, i32* @jiffies, align 4
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %17 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %20 = load i32, i32* @PWM_ISR, align 4
  %21 = call i32 @atmel_pwm_readl(%struct.atmel_pwm_chip* %19, i32 %20)
  %22 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %23 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %43, %3
  %27 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %28 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %31 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @jiffies, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @time_before(i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %26
  %42 = phi i1 [ false, %26 ], [ %40, %36 ]
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = call i32 @usleep_range(i32 10, i32 100)
  %45 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %46 = load i32, i32* @PWM_ISR, align 4
  %47 = call i32 @atmel_pwm_readl(%struct.atmel_pwm_chip* %45, i32 %46)
  %48 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %49 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %26

52:                                               ; preds = %41
  %53 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %54 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %57 = load i32, i32* @PWM_DIS, align 4
  %58 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %59 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  %62 = call i32 @atmel_pwm_writel(%struct.atmel_pwm_chip* %56, i32 %57, i32 %61)
  %63 = load i32, i32* @jiffies, align 4
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %85, %52
  %69 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %70 = load i32, i32* @PWM_SR, align 4
  %71 = call i32 @atmel_pwm_readl(%struct.atmel_pwm_chip* %69, i32 %70)
  %72 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %73 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %71, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load i32, i32* @jiffies, align 4
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @time_before(i32 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %68
  %84 = phi i1 [ false, %68 ], [ %82, %78 ]
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = call i32 @usleep_range(i32 10, i32 100)
  br label %68

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %7, align 8
  %92 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_disable(i32 %93)
  br label %95

95:                                               ; preds = %90, %87
  ret void
}

declare dso_local %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atmel_pwm_readl(%struct.atmel_pwm_chip*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atmel_pwm_writel(%struct.atmel_pwm_chip*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
