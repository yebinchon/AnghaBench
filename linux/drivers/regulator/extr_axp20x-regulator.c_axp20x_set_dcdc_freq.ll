; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_set_dcdc_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_set_dcdc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.axp20x_dev = type { i32, i32 }

@AXP20X_DCDC_FREQ = common dso_local global i32 0, align 4
@AXP803_DCDC_FREQ_CTRL = common dso_local global i32 0, align 4
@AXP806_DCDC_FREQ_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Setting DCDC frequency for unsupported AXP variant\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"DCDC frequency too low. Set to %ukHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"DCDC frequency too high. Set to %ukHz\0A\00", align 1
@AXP20X_FREQ_DCDC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @axp20x_set_dcdc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_set_dcdc_freq(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.axp20x_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %15)
  store %struct.axp20x_dev* %16, %struct.axp20x_dev** %6, align 8
  %17 = load i32, i32* @AXP20X_DCDC_FREQ, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %19 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 135, label %21
    i32 134, label %21
    i32 131, label %22
    i32 128, label %22
    i32 130, label %24
    i32 133, label %32
    i32 132, label %32
    i32 129, label %32
  ]

21:                                               ; preds = %2, %2
  store i32 750, i32* %8, align 4
  store i32 1875, i32* %9, align 4
  store i32 1500, i32* %10, align 4
  store i32 75, i32* %11, align 4
  br label %39

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @AXP803_DCDC_FREQ_CTRL, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %2, %22
  %25 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %26 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @AXP806_DCDC_FREQ_CTRL, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %2, %2, %2, %31
  store i32 1800, i32* %8, align 4
  store i32 4050, i32* %9, align 4
  store i32 3000, i32* %10, align 4
  store i32 150, i32* %11, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_3__* %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %32, %21
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %5, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_warn(%struct.TYPE_3__* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @dev_warn(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %5, align 4
  %70 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %71 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @AXP20X_FREQ_DCDC_MASK, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %64, %33
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
