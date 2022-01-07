; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_mode.c_displayControlAdjust_SM750LE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_mode.c_displayControlAdjust_SM750LE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_parameter = type { i64, i64 }

@CRT_AUTO_CENTERING_TL = common dso_local global i32 0, align 4
@CRT_AUTO_CENTERING_BR = common dso_local global i32 0, align 4
@CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT = common dso_local global i64 0, align 8
@CRT_AUTO_CENTERING_BR_BOTTOM_MASK = common dso_local global i64 0, align 8
@CRT_AUTO_CENTERING_BR_RIGHT_MASK = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CLK_MASK = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CLK_PLL41 = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CLK_PLL65 = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CLK_PLL80 = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CLK_PLL74 = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CLK_PLL108 = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CLK_PLL25 = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_CRTSELECT = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_RGBBIT = common dso_local global i64 0, align 8
@DISPLAY_CTRL_CLOCK_PHASE = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mode_parameter*, i64)* @displayControlAdjust_SM750LE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @displayControlAdjust_SM750LE(%struct.mode_parameter* %0, i64 %1) #0 {
  %3 = alloca %struct.mode_parameter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mode_parameter* %0, %struct.mode_parameter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %8 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %11 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @CRT_AUTO_CENTERING_TL, align 4
  %14 = call i32 @poke32(i32 %13, i64 0)
  %15 = load i32, i32* @CRT_AUTO_CENTERING_BR, align 4
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 %16, 1
  %18 = load i64, i64* @CRT_AUTO_CENTERING_BR_BOTTOM_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = load i64, i64* @CRT_AUTO_CENTERING_BR_BOTTOM_MASK, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %22, 1
  %24 = load i64, i64* @CRT_AUTO_CENTERING_BR_RIGHT_MASK, align 8
  %25 = and i64 %23, %24
  %26 = or i64 %21, %25
  %27 = call i32 @poke32(i32 %15, i64 %26)
  %28 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_MASK, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 800
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 600
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL41, align 8
  %39 = load i64, i64* %4, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %4, align 8
  br label %111

41:                                               ; preds = %34, %2
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 1024
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 768
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL65, align 8
  %49 = load i64, i64* %4, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %4, align 8
  br label %110

51:                                               ; preds = %44, %41
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %52, 1152
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %55, 864
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL80, align 8
  %59 = load i64, i64* %4, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %4, align 8
  br label %109

61:                                               ; preds = %54, %51
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %62, 1280
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %65, 768
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL80, align 8
  %69 = load i64, i64* %4, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %4, align 8
  br label %108

71:                                               ; preds = %64, %61
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %72, 1280
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = icmp eq i64 %75, 720
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL74, align 8
  %79 = load i64, i64* %4, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %4, align 8
  br label %107

81:                                               ; preds = %74, %71
  %82 = load i64, i64* %5, align 8
  %83 = icmp eq i64 %82, 1280
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i64, i64* %6, align 8
  %86 = icmp eq i64 %85, 960
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL108, align 8
  %89 = load i64, i64* %4, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %4, align 8
  br label %106

91:                                               ; preds = %84, %81
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %92, 1280
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i64, i64* %6, align 8
  %96 = icmp eq i64 %95, 1024
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL108, align 8
  %99 = load i64, i64* %4, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %4, align 8
  br label %105

101:                                              ; preds = %94, %91
  %102 = load i64, i64* @CRT_DISPLAY_CTRL_CLK_PLL25, align 8
  %103 = load i64, i64* %4, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %4, align 8
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %87
  br label %107

107:                                              ; preds = %106, %77
  br label %108

108:                                              ; preds = %107, %67
  br label %109

109:                                              ; preds = %108, %57
  br label %110

110:                                              ; preds = %109, %47
  br label %111

111:                                              ; preds = %110, %37
  %112 = load i64, i64* @CRT_DISPLAY_CTRL_CRTSELECT, align 8
  %113 = load i64, i64* @CRT_DISPLAY_CTRL_RGBBIT, align 8
  %114 = or i64 %112, %113
  %115 = load i64, i64* %4, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* @DISPLAY_CTRL_CLOCK_PHASE, align 8
  %118 = load i64, i64* %4, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %4, align 8
  %120 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @poke32(i32 %120, i64 %121)
  %123 = load i64, i64* %4, align 8
  ret i64 %123
}

declare dso_local i32 @poke32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
