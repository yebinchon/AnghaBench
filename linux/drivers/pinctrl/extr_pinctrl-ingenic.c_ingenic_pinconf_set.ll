; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ingenic_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@PINS_PER_GPIO_CHIP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"disable pull-over for pin P%c%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"set pull-up for pin P%c%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"set pull-down for pin P%c%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @ingenic_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ingenic_pinctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %15 = call %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.ingenic_pinctrl* %15, %struct.ingenic_pinctrl** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %37, %4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i64*, i64** %8, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pinconf_to_config_param(i64 %31)
  switch i32 %32, label %34 [
    i32 130, label %33
    i32 128, label %33
    i32 129, label %33
  ]

33:                                               ; preds = %26, %26, %26
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %129

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %22

40:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %125, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %128

45:                                               ; preds = %41
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pinconf_to_config_param(i64 %50)
  switch i32 %51, label %122 [
    i32 130, label %52
    i32 128, label %64
    i32 129, label %93
  ]

52:                                               ; preds = %45
  %53 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %54 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = add i32 65, %56
  %58 = trunc i32 %57 to i8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 signext %58, i32 %59)
  %61 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ingenic_set_bias(%struct.ingenic_pinctrl* %61, i32 %62, i32 0)
  br label %124

64:                                               ; preds = %45
  %65 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %66 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %64
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %129

81:                                               ; preds = %64
  %82 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %83 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = add i32 65, %85
  %87 = trunc i32 %86 to i8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 signext %87, i32 %88)
  %90 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @ingenic_set_bias(%struct.ingenic_pinctrl* %90, i32 %91, i32 1)
  br label %124

93:                                               ; preds = %45
  %94 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %95 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @BIT(i32 %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %93
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %129

110:                                              ; preds = %93
  %111 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %112 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = add i32 65, %114
  %116 = trunc i32 %115 to i8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @dev_dbg(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8 signext %116, i32 %117)
  %119 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %10, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @ingenic_set_bias(%struct.ingenic_pinctrl* %119, i32 %120, i32 1)
  br label %124

122:                                              ; preds = %45
  %123 = call i32 (...) @unreachable()
  br label %124

124:                                              ; preds = %122, %110, %81, %52
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %41

128:                                              ; preds = %41
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %107, %78, %34
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, i32) #1

declare dso_local i32 @ingenic_set_bias(%struct.ingenic_pinctrl*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
