; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_set_dcdc_workmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_set_dcdc_workmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.axp20x_dev = type { i32 }

@AXP20X_DCDC_MODE = common dso_local global i32 0, align 4
@AXP20X_DCDC2 = common dso_local global i32 0, align 4
@AXP20X_DCDC3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AXP20X_WORKMODE_DCDC2_MASK = common dso_local global i32 0, align 4
@AXP20X_WORKMODE_DCDC3_MASK = common dso_local global i32 0, align 4
@AXP806_DCDC_MODE_CTRL2 = common dso_local global i32 0, align 4
@AXP22X_DCDC1 = common dso_local global i32 0, align 4
@AXP22X_DCDC5 = common dso_local global i32 0, align 4
@AXP803_DCDC1 = common dso_local global i32 0, align 4
@AXP803_DCDC6 = common dso_local global i32 0, align 4
@AXP813_DCDC1 = common dso_local global i32 0, align 4
@AXP813_DCDC7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @axp20x_set_dcdc_workmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_set_dcdc_workmode(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.axp20x_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.axp20x_dev* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.axp20x_dev* %12, %struct.axp20x_dev** %8, align 8
  %13 = load i32, i32* @AXP20X_DCDC_MODE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.axp20x_dev*, %struct.axp20x_dev** %8, align 8
  %15 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %106 [
    i32 135, label %17
    i32 134, label %17
    i32 130, label %41
    i32 133, label %43
    i32 132, label %43
    i32 129, label %43
    i32 131, label %64
    i32 128, label %85
  ]

17:                                               ; preds = %3, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @AXP20X_DCDC2, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AXP20X_DCDC3, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %118

28:                                               ; preds = %21, %17
  %29 = load i32, i32* @AXP20X_WORKMODE_DCDC2_MASK, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AXP20X_DCDC3, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @AXP20X_WORKMODE_DCDC3_MASK, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ffs(i32 %36)
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %110

41:                                               ; preds = %3
  %42 = load i32, i32* @AXP806_DCDC_MODE_CTRL2, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %3, %3, %3, %41
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @AXP22X_DCDC1, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @AXP22X_DCDC5, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %118

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @AXP22X_DCDC1, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @AXP22X_WORKMODE_DCDCX_MASK(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @AXP22X_DCDC1, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = shl i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %110

64:                                               ; preds = %3
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @AXP803_DCDC1, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @AXP803_DCDC6, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %118

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @AXP803_DCDC1, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @AXP22X_WORKMODE_DCDCX_MASK(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @AXP803_DCDC1, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %110

85:                                               ; preds = %3
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @AXP813_DCDC1, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @AXP813_DCDC7, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %118

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @AXP813_DCDC1, align 4
  %99 = sub nsw i32 %97, %98
  %100 = call i32 @AXP22X_WORKMODE_DCDCX_MASK(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @AXP813_DCDC1, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = shl i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %110

106:                                              ; preds = %3
  %107 = call i32 @WARN_ON(i32 1)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %118

110:                                              ; preds = %96, %75, %54, %35
  %111 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %112 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %110, %106, %93, %72, %51, %25
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.axp20x_dev* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @AXP22X_WORKMODE_DCDCX_MASK(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
