; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_set_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_set_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.imx_pinctrl = type { i32, i32, %struct.imx_pin_reg*, %struct.imx_pinctrl_soc_info* }
%struct.imx_pin_reg = type { i32 }
%struct.imx_pinctrl_soc_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Pin(%s) does not support config function\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"pinconf set pin %s\0A\00", align 1
@SHARE_MUX_CONF_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"write: offset 0x%x val 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"write: offset 0x%x val 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @imx_pinconf_set_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pinconf_set_mmio(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.imx_pinctrl*, align 8
  %11 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %12 = alloca %struct.imx_pin_reg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.imx_pinctrl* %16, %struct.imx_pinctrl** %10, align 8
  %17 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %18 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %17, i32 0, i32 3
  %19 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %18, align 8
  store %struct.imx_pinctrl_soc_info* %19, %struct.imx_pinctrl_soc_info** %11, align 8
  %20 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %21 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %20, i32 0, i32 2
  %22 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %22, i64 %24
  store %struct.imx_pin_reg* %25, %struct.imx_pin_reg** %12, align 8
  %26 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %12, align 8
  %27 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %32 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %11, align 8
  %35 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %138

45:                                               ; preds = %4
  %46 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %47 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %11, align 8
  %50 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %134, %45
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %137

62:                                               ; preds = %58
  %63 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %11, align 8
  %64 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SHARE_MUX_CONF_REG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %62
  %70 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %71 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %12, align 8
  %74 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = call i64 @readl(i32 %76)
  store i64 %77, i64* %14, align 8
  %78 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %11, align 8
  %79 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %14, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %92 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %12, align 8
  %95 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = call i32 @writel(i64 %90, i32 %97)
  %99 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %100 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %12, align 8
  %103 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %14, align 8
  %106 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %104, i64 %105)
  br label %133

107:                                              ; preds = %62
  %108 = load i64*, i64** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %114 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %12, align 8
  %117 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = call i32 @writel(i64 %112, i32 %119)
  %121 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %122 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %12, align 8
  %125 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64*, i64** %8, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %126, i64 %131)
  br label %133

133:                                              ; preds = %107, %69
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %58

137:                                              ; preds = %58
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %30
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
