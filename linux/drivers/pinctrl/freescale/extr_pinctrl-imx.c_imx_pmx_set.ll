; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pmx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pmx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.imx_pinctrl = type { i32, %struct.imx_pinctrl_soc_info* }
%struct.imx_pinctrl_soc_info = type { i32 }
%struct.function_desc = type { i32 }
%struct.group_desc = type { i32, i64, i32 }
%struct.imx_pin = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enable function %s group %s\0A\00", align 1
@IMX_USE_SCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @imx_pmx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pmx_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_pinctrl*, align 8
  %9 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %10 = alloca %struct.function_desc*, align 8
  %11 = alloca %struct.group_desc*, align 8
  %12 = alloca %struct.imx_pin*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.imx_pinctrl* %17, %struct.imx_pinctrl** %8, align 8
  %18 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %19 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %19, align 8
  store %struct.imx_pinctrl_soc_info* %20, %struct.imx_pinctrl_soc_info** %9, align 8
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev* %21, i32 %22)
  store %struct.group_desc* %23, %struct.group_desc** %11, align 8
  %24 = load %struct.group_desc*, %struct.group_desc** %11, align 8
  %25 = icmp ne %struct.group_desc* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %3
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev* %30, i32 %31)
  store %struct.function_desc* %32, %struct.function_desc** %10, align 8
  %33 = load %struct.function_desc*, %struct.function_desc** %10, align 8
  %34 = icmp ne %struct.function_desc* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %84

38:                                               ; preds = %29
  %39 = load %struct.group_desc*, %struct.group_desc** %11, align 8
  %40 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %43 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.function_desc*, %struct.function_desc** %10, align 8
  %46 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.group_desc*, %struct.group_desc** %11, align 8
  %49 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %80, %38
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = load %struct.group_desc*, %struct.group_desc** %11, align 8
  %58 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.imx_pin*
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %60, i64 %62
  store %struct.imx_pin* %63, %struct.imx_pin** %12, align 8
  %64 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %9, align 8
  %65 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IMX_USE_SCU, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %56
  %71 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %72 = load %struct.imx_pin*, %struct.imx_pin** %12, align 8
  %73 = call i32 @imx_pmx_set_one_pin_mmio(%struct.imx_pinctrl* %71, %struct.imx_pin* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %4, align 4
  br label %84

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %52

83:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %76, %35, %26
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @imx_pmx_set_one_pin_mmio(%struct.imx_pinctrl*, %struct.imx_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
