; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.gpio_regulator_data = type { i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @gpio_regulator_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_regulator_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_regulator_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.gpio_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.gpio_regulator_data* %14, %struct.gpio_regulator_data** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %72, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %18 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %15
  %22 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %23 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %21
  %33 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %34 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %32
  %44 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %45 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %43
  %55 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %56 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %64 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %54, %43, %32, %21
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %15

75:                                               ; preds = %15
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %111

81:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %104, %81
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %85 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %11, align 4
  %95 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %96 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @gpiod_set_value_cansleep(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %82

107:                                              ; preds = %82
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %8, align 8
  %110 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %78
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.gpio_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
