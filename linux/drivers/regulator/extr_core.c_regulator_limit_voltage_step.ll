; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_limit_voltage_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_limit_voltage_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regulation_constraints* }
%struct.regulation_constraints = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32*, i32*)* @regulator_limit_voltage_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_limit_voltage_step(%struct.regulator_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regulation_constraints*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 0
  %11 = load %struct.regulation_constraints*, %struct.regulation_constraints** %10, align 8
  store %struct.regulation_constraints* %11, %struct.regulation_constraints** %8, align 8
  %12 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %13 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %18 = call i32 @_regulator_is_enabled(%struct.regulator_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %3
  store i32 1, i32* %4, align 4
  br label %79

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %27 = call i32 @regulator_get_voltage_rdev(%struct.regulator_dev* %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %79

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %38, %40
  %42 = call i64 @abs(i32 %41)
  %43 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %44 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %79

48:                                               ; preds = %36
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %59 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @min(i64 %61, i32 %63)
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %78

66:                                               ; preds = %48
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  %71 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @max(i64 %73, i32 %75)
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %54
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %47, %32, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @_regulator_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_get_voltage_rdev(%struct.regulator_dev*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
