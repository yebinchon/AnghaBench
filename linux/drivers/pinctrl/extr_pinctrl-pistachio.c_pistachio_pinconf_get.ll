; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pistachio_pinctrl = type { i32 }

@PADS_PU_PD_MASK = common dso_local global i32 0, align 4
@PADS_PU_PD_HIGHZ = common dso_local global i32 0, align 4
@PADS_PU_PD_UP = common dso_local global i32 0, align 4
@PADS_PU_PD_DOWN = common dso_local global i32 0, align 4
@PADS_PU_PD_BUS = common dso_local global i32 0, align 4
@PADS_DRIVE_STRENGTH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Property %u not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @pistachio_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pistachio_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.pistachio_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.pistachio_pinctrl* %13, %struct.pistachio_pinctrl** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %117 [
    i32 129, label %18
    i32 133, label %31
    i32 131, label %45
    i32 132, label %59
    i32 134, label %73
    i32 128, label %87
    i32 130, label %100
  ]

18:                                               ; preds = %3
  %19 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @PADS_SCHMITT_EN_REG(i32 %20)
  %22 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PADS_SCHMITT_EN_BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  br label %125

31:                                               ; preds = %3
  %32 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @PADS_PU_PD_REG(i32 %33)
  %35 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %32, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @PADS_PU_PD_SHIFT(i32 %36)
  %38 = ashr i32 %35, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PADS_PU_PD_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @PADS_PU_PD_HIGHZ, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  br label %125

45:                                               ; preds = %3
  %46 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @PADS_PU_PD_REG(i32 %47)
  %49 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %46, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @PADS_PU_PD_SHIFT(i32 %50)
  %52 = ashr i32 %49, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PADS_PU_PD_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @PADS_PU_PD_UP, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %11, align 4
  br label %125

59:                                               ; preds = %3
  %60 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @PADS_PU_PD_REG(i32 %61)
  %63 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %60, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @PADS_PU_PD_SHIFT(i32 %64)
  %66 = ashr i32 %63, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @PADS_PU_PD_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @PADS_PU_PD_DOWN, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %11, align 4
  br label %125

73:                                               ; preds = %3
  %74 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @PADS_PU_PD_REG(i32 %75)
  %77 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %74, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @PADS_PU_PD_SHIFT(i32 %78)
  %80 = ashr i32 %77, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @PADS_PU_PD_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @PADS_PU_PD_BUS, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %11, align 4
  br label %125

87:                                               ; preds = %3
  %88 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @PADS_SLEW_RATE_REG(i32 %89)
  %91 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %88, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @PADS_SLEW_RATE_BIT(i32 %93)
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %11, align 4
  br label %125

100:                                              ; preds = %3
  %101 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @PADS_DRIVE_STRENGTH_REG(i32 %102)
  %104 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %101, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @PADS_DRIVE_STRENGTH_SHIFT(i32 %105)
  %107 = ashr i32 %104, %106
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @PADS_DRIVE_STRENGTH_MASK, align 4
  %110 = and i32 %108, %109
  switch i32 %110, label %115 [
    i32 137, label %111
    i32 136, label %112
    i32 135, label %113
    i32 138, label %114
  ]

111:                                              ; preds = %100
  store i32 2, i32* %11, align 4
  br label %116

112:                                              ; preds = %100
  store i32 4, i32* %11, align 4
  br label %116

113:                                              ; preds = %100
  store i32 8, i32* %11, align 4
  br label %116

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %100, %114
  store i32 12, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %113, %112, %111
  br label %125

117:                                              ; preds = %3
  %118 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %119 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @dev_dbg(i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @ENOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %130

125:                                              ; preds = %116, %87, %73, %59, %45, %31, %18
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i64 @pinconf_to_config_packed(i32 %126, i32 %127)
  %129 = load i64*, i64** %7, align 8
  store i64 %128, i64* %129, align 8
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %117
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.pistachio_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pctl_readl(%struct.pistachio_pinctrl*, i32) #1

declare dso_local i32 @PADS_SCHMITT_EN_REG(i32) #1

declare dso_local i32 @PADS_SCHMITT_EN_BIT(i32) #1

declare dso_local i32 @PADS_PU_PD_REG(i32) #1

declare dso_local i32 @PADS_PU_PD_SHIFT(i32) #1

declare dso_local i32 @PADS_SLEW_RATE_REG(i32) #1

declare dso_local i32 @PADS_SLEW_RATE_BIT(i32) #1

declare dso_local i32 @PADS_DRIVE_STRENGTH_REG(i32) #1

declare dso_local i32 @PADS_DRIVE_STRENGTH_SHIFT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
