; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pic32_pinctrl = type { i32 }
%struct.pic32_gpio_bank = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CNPU_REG = common dso_local global i64 0, align 8
@CNPD_REG = common dso_local global i64 0, align 8
@ANSEL_REG = common dso_local global i64 0, align 8
@ODCU_REG = common dso_local global i64 0, align 8
@TRIS_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Property %u not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @pic32_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pic32_pinctrl*, align 8
  %9 = alloca %struct.pic32_gpio_bank*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.pic32_pinctrl* %14, %struct.pic32_pinctrl** %8, align 8
  %15 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.pic32_gpio_bank* @pctl_to_bank(%struct.pic32_pinctrl* %15, i32 %16)
  store %struct.pic32_gpio_bank* %17, %struct.pic32_gpio_bank** %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %23 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %21, %25
  %27 = call i32 @BIT(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %118 [
    i32 133, label %29
    i32 134, label %42
    i32 129, label %55
    i32 130, label %67
    i32 132, label %80
    i32 131, label %93
    i32 128, label %106
  ]

29:                                               ; preds = %3
  %30 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %31 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CNPU_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %12, align 4
  br label %126

42:                                               ; preds = %3
  %43 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %44 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CNPD_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %12, align 4
  br label %126

55:                                               ; preds = %3
  %56 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %57 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ANSEL_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  br label %126

67:                                               ; preds = %3
  %68 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %69 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ANSEL_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %12, align 4
  br label %126

80:                                               ; preds = %3
  %81 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %82 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ODCU_REG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  br label %126

93:                                               ; preds = %3
  %94 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %95 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TRIS_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %126

106:                                              ; preds = %3
  %107 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %9, align 8
  %108 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TRIS_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readl(i64 %111)
  %113 = load i32, i32* %11, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %12, align 4
  br label %126

118:                                              ; preds = %3
  %119 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %8, align 8
  %120 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @ENOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %131

126:                                              ; preds = %106, %93, %80, %67, %55, %42, %29
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i64 @pinconf_to_config_packed(i32 %127, i32 %128)
  %130 = load i64*, i64** %7, align 8
  store i64 %129, i64* %130, align 8
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %118
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pic32_gpio_bank* @pctl_to_bank(%struct.pic32_pinctrl*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
