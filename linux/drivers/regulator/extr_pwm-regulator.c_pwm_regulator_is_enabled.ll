; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.pwm_regulator_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @pwm_regulator_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_regulator_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.pwm_regulator_data*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %6 = call %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.pwm_regulator_data* %6, %struct.pwm_regulator_data** %4, align 8
  %7 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %4, align 8
  %8 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gpiod_get_value_cansleep(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %23

18:                                               ; preds = %11, %1
  %19 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %4, align 8
  %20 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pwm_is_enabled(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i64) #1

declare dso_local i32 @pwm_is_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
