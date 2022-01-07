; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.gpio_regulator_data = type { i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32*)* @gpio_regulator_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_regulator_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gpio_regulator_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %16 = call %struct.gpio_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %15)
  store %struct.gpio_regulator_data* %16, %struct.gpio_regulator_data** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %81, %4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %21 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %18
  %25 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %26 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %24
  %36 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %37 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %35
  %47 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %48 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %46
  %58 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %59 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %67 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %57
  br label %80

80:                                               ; preds = %79, %46, %35, %24
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %18

84:                                               ; preds = %18
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @INT_MAX, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %121

91:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %95 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = load i32, i32* %11, align 4
  %104 = ashr i32 %102, %103
  store i32 %104, i32* %13, align 4
  %105 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %106 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @gpiod_set_value_cansleep(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %10, align 8
  %120 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %88
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.gpio_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
