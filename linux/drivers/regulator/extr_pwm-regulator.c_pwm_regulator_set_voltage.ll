; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pwm_regulator_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pwm_state = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to configure PWM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32*)* @pwm_regulator_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_regulator_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pwm_regulator_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pwm_state, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %22 = call %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %21)
  store %struct.pwm_regulator_data* %22, %struct.pwm_regulator_data** %10, align 8
  %23 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %10, align 8
  %24 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %10, align 8
  %28 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %10, align 8
  %32 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %10, align 8
  %49 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pwm_init_state(i32 %50, %struct.pwm_state* %17)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 %56, %57
  store i32 %58, i32* %18, align 4
  br label %63

59:                                               ; preds = %4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %18, align 4
  %68 = mul i32 %66, %67
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %68, i32 %69)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %19, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %19, align 4
  br label %82

78:                                               ; preds = %63
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %19, align 4
  %81 = add i32 %79, %80
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @pwm_set_relative_duty_cycle(%struct.pwm_state* %17, i32 %83, i32 %84)
  %86 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %10, align 8
  %87 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pwm_apply_state(i32 %88, %struct.pwm_state* %17)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %94 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %20, align 4
  store i32 %97, i32* %5, align 4
  br label %99

98:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.pwm_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pwm_init_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @pwm_set_relative_duty_cycle(%struct.pwm_state*, i32, i32) #1

declare dso_local i32 @pwm_apply_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
