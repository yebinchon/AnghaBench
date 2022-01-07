; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get_i2c0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get_i2c0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIN_I2C0_SCL = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_SCL_SHIFT = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_SDA_SHIFT = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_EZI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_EHD = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_EFP = common dso_local global i32 0, align 4
@LPC18XX_SCU_I2C0_ZIF = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @lpc18xx_pconf_get_i2c0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pconf_get_i2c0(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @PIN_I2C0_SCL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @LPC18XX_SCU_I2C0_SCL_SHIFT, align 4
  store i32 %15, i32* %10, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @LPC18XX_SCU_I2C0_SDA_SHIFT, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %70 [
    i32 131, label %20
    i32 128, label %33
    i32 130, label %45
    i32 129, label %57
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @LPC18XX_SCU_I2C0_EZI, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32*, i32** %7, align 8
  store i32 1, i32* %28, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %74

32:                                               ; preds = %27
  br label %73

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @LPC18XX_SCU_I2C0_EHD, align 4
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32*, i32** %7, align 8
  store i32 1, i32* %41, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %73

45:                                               ; preds = %18
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LPC18XX_SCU_I2C0_EFP, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** %7, align 8
  store i32 3, i32* %53, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32*, i32** %7, align 8
  store i32 50, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %73

57:                                               ; preds = %18
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @LPC18XX_SCU_I2C0_ZIF, align 4
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %74

67:                                               ; preds = %57
  %68 = load i32*, i32** %7, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %67
  br label %73

70:                                               ; preds = %18
  %71 = load i32, i32* @ENOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %69, %56, %44, %32
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %70, %64, %29
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
