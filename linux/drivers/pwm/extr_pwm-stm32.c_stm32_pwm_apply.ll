; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pwm_state = type { i64, i32, i32, i32 }
%struct.stm32_pwm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @stm32_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stm32_pwm*, align 8
  %10 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %11 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %12 = call %struct.stm32_pwm* @to_stm32_pwm_dev(%struct.pwm_chip* %11)
  store %struct.stm32_pwm* %12, %struct.stm32_pwm** %9, align 8
  %13 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %14 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %21 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %26 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %27 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @stm32_pwm_disable(%struct.stm32_pwm* %25, i32 %28)
  store i32 0, i32* %4, align 4
  br label %80

30:                                               ; preds = %19, %3
  %31 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %32 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %35 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %33, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %41 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %42 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %45 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @stm32_pwm_set_polarity(%struct.stm32_pwm* %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %50 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %51 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %54 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %57 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @stm32_pwm_config(%struct.stm32_pwm* %49, i32 %52, i32 %55, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %48
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %69 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %74 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %75 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @stm32_pwm_enable(%struct.stm32_pwm* %73, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %72, %67, %64
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %62, %24
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.stm32_pwm* @to_stm32_pwm_dev(%struct.pwm_chip*) #1

declare dso_local i32 @stm32_pwm_disable(%struct.stm32_pwm*, i32) #1

declare dso_local i32 @stm32_pwm_set_polarity(%struct.stm32_pwm*, i32, i32) #1

declare dso_local i32 @stm32_pwm_config(%struct.stm32_pwm*, i32, i32, i32) #1

declare dso_local i32 @stm32_pwm_enable(%struct.stm32_pwm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
