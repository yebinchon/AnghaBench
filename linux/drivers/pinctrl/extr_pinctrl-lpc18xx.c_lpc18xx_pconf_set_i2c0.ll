; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_set_i2c0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_set_i2c0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }

@PIN_I2C0_SCL = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_SCL_SHIFT = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_SDA_SHIFT = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_EZI = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_EHD = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_EFP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_ZIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Property not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32, i32*, i32)* @lpc18xx_pconf_set_i2c0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pconf_set_i2c0(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @PIN_I2C0_SCL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @LPC18XX_SCU_I2C0_SCL_SHIFT, align 4
  store i32 %17, i32* %12, align 4
  br label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @LPC18XX_SCU_I2C0_SDA_SHIFT, align 4
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %105 [
    i32 131, label %22
    i32 128, label %41
    i32 130, label %60
    i32 129, label %86
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @LPC18XX_SCU_I2C0_EZI, align 4
  %27 = load i32, i32* %12, align 4
  %28 = shl i32 %26, %27
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %40

32:                                               ; preds = %22
  %33 = load i32, i32* @LPC18XX_SCU_I2C0_EZI, align 4
  %34 = load i32, i32* %12, align 4
  %35 = shl i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %25
  br label %112

41:                                               ; preds = %20
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @LPC18XX_SCU_I2C0_EHD, align 4
  %46 = load i32, i32* %12, align 4
  %47 = shl i32 %45, %46
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %59

51:                                               ; preds = %41
  %52 = load i32, i32* @LPC18XX_SCU_I2C0_EHD, align 4
  %53 = load i32, i32* %12, align 4
  %54 = shl i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %44
  br label %112

60:                                               ; preds = %20
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* @LPC18XX_SCU_I2C0_EFP, align 4
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %64, %65
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %85

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 50
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* @LPC18XX_SCU_I2C0_EFP, align 4
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %84

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %113

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %63
  br label %112

86:                                               ; preds = %20
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32, i32* @LPC18XX_SCU_I2C0_ZIF, align 4
  %91 = load i32, i32* %12, align 4
  %92 = shl i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %104

97:                                               ; preds = %86
  %98 = load i32, i32* @LPC18XX_SCU_I2C0_ZIF, align 4
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 %98, %99
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %89
  br label %112

105:                                              ; preds = %20
  %106 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %107 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @ENOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %113

112:                                              ; preds = %104, %85, %59, %40
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %105, %81
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
