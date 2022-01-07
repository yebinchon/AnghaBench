; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.function_desc = type { i32 }
%struct.group_desc = type { i32, i32*, i32*, i32 }
%struct.mtk_pin_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enable function %s group %s\0A\00", align 1
@PINCTRL_PIN_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @mtk_pinmux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_pinctrl*, align 8
  %9 = alloca %struct.function_desc*, align 8
  %10 = alloca %struct.group_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtk_pin_desc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.mtk_pinctrl* %16, %struct.mtk_pinctrl** %8, align 8
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev* %17, i32 %18)
  store %struct.function_desc* %19, %struct.function_desc** %9, align 8
  %20 = load %struct.function_desc*, %struct.function_desc** %9, align 8
  %21 = icmp ne %struct.function_desc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %84

25:                                               ; preds = %3
  %26 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev* %26, i32 %27)
  store %struct.group_desc* %28, %struct.group_desc** %10, align 8
  %29 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %30 = icmp ne %struct.group_desc* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.function_desc*, %struct.function_desc** %9, align 8
  %39 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %42 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %80, %34
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %48 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %45
  %52 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %53 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %13, align 8
  %55 = load %struct.group_desc*, %struct.group_desc** %10, align 8
  %56 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %63 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = bitcast i32* %69 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %70, %struct.mtk_pin_desc** %12, align 8
  %71 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %72 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %12, align 8
  %73 = load i32, i32* @PINCTRL_PIN_REG_MODE, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %71, %struct.mtk_pin_desc* %72, i32 %73, i32 %78)
  br label %80

80:                                               ; preds = %51
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %45

83:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %31, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
