; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pwm_regulator_data = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pwm_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator_dev*)* @pwm_regulator_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_regulator_init_state(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.pwm_regulator_data*, align 8
  %4 = alloca %struct.pwm_state, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %8 = call %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.pwm_regulator_data* %8, %struct.pwm_regulator_data** %3, align 8
  %9 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %3, align 8
  %10 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pwm_get_state(i32 %11, %struct.pwm_state* %4)
  %13 = call i32 @pwm_get_relative_duty_cycle(%struct.pwm_state* %4, i32 100)
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %38, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %3, align 8
  %25 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %23, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %3, align 8
  %36 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %14

41:                                               ; preds = %33, %14
  ret void
}

declare dso_local %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pwm_get_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @pwm_get_relative_duty_cycle(%struct.pwm_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
