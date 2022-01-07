; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_decode_generic_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_decode_generic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_pinctrl = type { %struct.imx_pinctrl_soc_info* }
%struct.imx_pinctrl_soc_info = type { i32, i32 (i64*, i32, i32*)*, %struct.imx_cfg_params_decode* }
%struct.imx_cfg_params_decode = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_pinctrl*, i64*, i32)* @imx_pinconf_decode_generic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pinconf_decode_generic_config(%struct.imx_pinctrl* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.imx_pinctrl*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %8 = alloca %struct.imx_cfg_params_decode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.imx_pinctrl* %0, %struct.imx_pinctrl** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %15 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %14, i32 0, i32 0
  %16 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %15, align 8
  store %struct.imx_pinctrl_soc_info* %16, %struct.imx_pinctrl_soc_info** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %7, align 8
  %19 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ugt i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %85, %3
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %24
  %29 = load i64*, i64** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pinconf_to_config_param(i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i64*, i64** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @pinconf_to_config_argument(i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %7, align 8
  %42 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %41, i32 0, i32 2
  %43 = load %struct.imx_cfg_params_decode*, %struct.imx_cfg_params_decode** %42, align 8
  store %struct.imx_cfg_params_decode* %43, %struct.imx_cfg_params_decode** %8, align 8
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %81, %28
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %7, align 8
  %47 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.imx_cfg_params_decode*, %struct.imx_cfg_params_decode** %8, align 8
  %53 = getelementptr inbounds %struct.imx_cfg_params_decode, %struct.imx_cfg_params_decode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.imx_cfg_params_decode*, %struct.imx_cfg_params_decode** %8, align 8
  %58 = getelementptr inbounds %struct.imx_cfg_params_decode, %struct.imx_cfg_params_decode* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.imx_cfg_params_decode*, %struct.imx_cfg_params_decode** %8, align 8
  %69 = getelementptr inbounds %struct.imx_cfg_params_decode, %struct.imx_cfg_params_decode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %67, %70
  %72 = load %struct.imx_cfg_params_decode*, %struct.imx_cfg_params_decode** %8, align 8
  %73 = getelementptr inbounds %struct.imx_cfg_params_decode, %struct.imx_cfg_params_decode* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %71, %74
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %84

78:                                               ; preds = %50
  %79 = load %struct.imx_cfg_params_decode*, %struct.imx_cfg_params_decode** %8, align 8
  %80 = getelementptr inbounds %struct.imx_cfg_params_decode, %struct.imx_cfg_params_decode* %79, i32 1
  store %struct.imx_cfg_params_decode* %80, %struct.imx_cfg_params_decode** %8, align 8
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %44

84:                                               ; preds = %66, %44
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %24

88:                                               ; preds = %24
  %89 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %7, align 8
  %90 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %89, i32 0, i32 1
  %91 = load i32 (i64*, i32, i32*)*, i32 (i64*, i32, i32*)** %90, align 8
  %92 = icmp ne i32 (i64*, i32, i32*)* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %7, align 8
  %95 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %94, i32 0, i32 1
  %96 = load i32 (i64*, i32, i32*)*, i32 (i64*, i32, i32*)** %95, align 8
  %97 = load i64*, i64** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 %96(i64* %97, i32 %98, i32* %10)
  br label %100

100:                                              ; preds = %93, %88
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
