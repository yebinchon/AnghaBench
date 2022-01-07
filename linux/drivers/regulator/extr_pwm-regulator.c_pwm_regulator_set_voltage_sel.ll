; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.pwm_regulator_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pwm_state = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to configure PWM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @pwm_regulator_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_regulator_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_regulator_data*, align 8
  %7 = alloca %struct.pwm_state, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.pwm_regulator_data* %10, %struct.pwm_regulator_data** %6, align 8
  %11 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %6, align 8
  %12 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pwm_init_state(i32 %13, %struct.pwm_state* %7)
  %15 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %6, align 8
  %16 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pwm_set_relative_duty_cycle(%struct.pwm_state* %7, i32 %22, i32 100)
  %24 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %6, align 8
  %25 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pwm_apply_state(i32 %26, %struct.pwm_state* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %6, align 8
  %39 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pwm_init_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @pwm_set_relative_duty_cycle(%struct.pwm_state*, i32, i32) #1

declare dso_local i32 @pwm_apply_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
