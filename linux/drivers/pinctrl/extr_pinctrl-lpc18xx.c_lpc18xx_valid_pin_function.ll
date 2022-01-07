; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_valid_pin_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_valid_pin_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.lpc18xx_pin_caps* }
%struct.lpc18xx_pin_caps = type { i64, i64, i32* }

@lpc18xx_pins = common dso_local global %struct.TYPE_2__* null, align 8
@FUNC_DAC = common dso_local global i32 0, align 4
@DAC = common dso_local global i64 0, align 8
@FUNC_ADC = common dso_local global i32 0, align 4
@FUNC_I2C0 = common dso_local global i32 0, align 4
@TYPE_I2C0 = common dso_local global i64 0, align 8
@FUNC_USB1 = common dso_local global i32 0, align 4
@TYPE_USB1 = common dso_local global i64 0, align 8
@LPC18XX_SCU_FUNC_PER_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lpc18xx_valid_pin_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_valid_pin_function(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpc18xx_pin_caps*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lpc18xx_pins, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %12, align 8
  store %struct.lpc18xx_pin_caps* %13, %struct.lpc18xx_pin_caps** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FUNC_DAC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %6, align 8
  %19 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DAC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %77

24:                                               ; preds = %17, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FUNC_ADC, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %6, align 8
  %30 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %77

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @FUNC_I2C0, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %6, align 8
  %40 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TYPE_I2C0, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %77

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @FUNC_USB1, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %6, align 8
  %51 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TYPE_USB1, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %77

56:                                               ; preds = %49, %45
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @LPC18XX_SCU_FUNC_PER_PIN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %6, align 8
  %64 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %77

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %57

76:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %71, %55, %44, %33, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
