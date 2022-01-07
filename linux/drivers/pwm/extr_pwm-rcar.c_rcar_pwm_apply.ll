; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i32, i32, i32 }
%struct.rcar_pwm_chip = type { i32 }

@PWM_POLARITY_NORMAL = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@RCAR_PWMCR_SYNC = common dso_local global i32 0, align 4
@RCAR_PWMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @rcar_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.rcar_pwm_chip*, align 8
  %9 = alloca %struct.pwm_state, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %13 = call %struct.rcar_pwm_chip* @to_rcar_pwm_chip(%struct.pwm_chip* %12)
  store %struct.rcar_pwm_chip* %13, %struct.rcar_pwm_chip** %8, align 8
  %14 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %15 = call i32 @pwm_get_state(%struct.pwm_device* %14, %struct.pwm_state* %9)
  %16 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %17 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PWM_POLARITY_NORMAL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %26 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %8, align 8
  %31 = call i32 @rcar_pwm_disable(%struct.rcar_pwm_chip* %30)
  store i32 0, i32* %4, align 4
  br label %75

32:                                               ; preds = %24
  %33 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %8, align 8
  %34 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %35 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @rcar_pwm_get_clock_division(%struct.rcar_pwm_chip* %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %75

42:                                               ; preds = %32
  %43 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %8, align 8
  %44 = load i32, i32* @RCAR_PWMCR_SYNC, align 4
  %45 = load i32, i32* @RCAR_PWMCR_SYNC, align 4
  %46 = load i32, i32* @RCAR_PWMCR, align 4
  %47 = call i32 @rcar_pwm_update(%struct.rcar_pwm_chip* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %51 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %54 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rcar_pwm_set_counter(%struct.rcar_pwm_chip* %48, i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %42
  %60 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @rcar_pwm_set_clock_control(%struct.rcar_pwm_chip* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %42
  %64 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %8, align 8
  %65 = load i32, i32* @RCAR_PWMCR_SYNC, align 4
  %66 = load i32, i32* @RCAR_PWMCR, align 4
  %67 = call i32 @rcar_pwm_update(%struct.rcar_pwm_chip* %64, i32 %65, i32 0, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %8, align 8
  %72 = call i32 @rcar_pwm_enable(%struct.rcar_pwm_chip* %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %40, %29, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.rcar_pwm_chip* @to_rcar_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @rcar_pwm_disable(%struct.rcar_pwm_chip*) #1

declare dso_local i32 @rcar_pwm_get_clock_division(%struct.rcar_pwm_chip*, i32) #1

declare dso_local i32 @rcar_pwm_update(%struct.rcar_pwm_chip*, i32, i32, i32) #1

declare dso_local i32 @rcar_pwm_set_counter(%struct.rcar_pwm_chip*, i32, i32, i32) #1

declare dso_local i32 @rcar_pwm_set_clock_control(%struct.rcar_pwm_chip*, i32) #1

declare dso_local i32 @rcar_pwm_enable(%struct.rcar_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
