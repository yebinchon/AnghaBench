; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pwm_regulator_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pwm_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @pwm_regulator_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_regulator_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.pwm_regulator_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pwm_state, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %14 = call %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.pwm_regulator_data* %14, %struct.pwm_regulator_data** %3, align 8
  %15 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %3, align 8
  %16 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %3, align 8
  %20 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %3, align 8
  %24 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %28 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %3, align 8
  %41 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pwm_get_state(i32 %42, %struct.pwm_state* %10)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pwm_get_relative_duty_cycle(%struct.pwm_state* %10, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %1
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %11, align 4
  br label %63

56:                                               ; preds = %1
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %56, %49
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %69, %70
  ret i32 %71
}

declare dso_local %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pwm_get_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @pwm_get_relative_duty_cycle(%struct.pwm_state*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
