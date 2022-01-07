; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ingenic_pinctrl = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@PINS_PER_GPIO_CHIP = common dso_local global i32 0, align 4
@ID_JZ4760 = common dso_local global i64 0, align 8
@JZ4760_GPIO_PEN = common dso_local global i32 0, align 4
@JZ4740_GPIO_PULL_DIS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @ingenic_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ingenic_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.ingenic_pinctrl* %14, %struct.ingenic_pinctrl** %8, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pinconf_to_config_param(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %20 = urem i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %23 = udiv i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %8, align 8
  %25 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ID_JZ4760, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @JZ4760_GPIO_PEN, align 4
  %33 = call i32 @ingenic_get_pin_config(%struct.ingenic_pinctrl* %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @JZ4740_GPIO_PULL_DIS, align 4
  %41 = call i32 @ingenic_get_pin_config(%struct.ingenic_pinctrl* %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %96 [
    i32 130, label %47
    i32 128, label %54
    i32 129, label %75
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %103

53:                                               ; preds = %47
  br label %99

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %8, align 8
  %59 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %57, %54
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %103

74:                                               ; preds = %57
  br label %99

75:                                               ; preds = %45
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %8, align 8
  %80 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %78, %75
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %103

95:                                               ; preds = %78
  br label %99

96:                                               ; preds = %45
  %97 = load i32, i32* @ENOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %103

99:                                               ; preds = %95, %74, %53
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @pinconf_to_config_packed(i32 %100, i32 1)
  %102 = load i64*, i64** %7, align 8
  store i64 %101, i64* %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %96, %92, %71, %50
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @ingenic_get_pin_config(%struct.ingenic_pinctrl*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
