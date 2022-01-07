; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_simple_regmap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_simple_regmap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device = type { i32 }
%struct.mvebu_pinctrl_soc_info = type { i32, %struct.mvebu_mpp_ctrl_data* }
%struct.mvebu_mpp_ctrl_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvebu_pinctrl_simple_regmap_probe(%struct.platform_device* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvebu_pinctrl_soc_info*, align 8
  %9 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.mvebu_pinctrl_soc_info* @dev_get_platdata(i32* %13)
  store %struct.mvebu_pinctrl_soc_info* %14, %struct.mvebu_pinctrl_soc_info** %8, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.regmap* @syscon_node_to_regmap(i32 %17)
  store %struct.regmap* %18, %struct.regmap** %10, align 8
  %19 = load %struct.regmap*, %struct.regmap** %10, align 8
  %20 = call i64 @IS_ERR(%struct.regmap* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.regmap*, %struct.regmap** %10, align 8
  %24 = call i32 @PTR_ERR(%struct.regmap* %23)
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %3
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %8, align 8
  %29 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mvebu_mpp_ctrl_data* @devm_kcalloc(i32* %27, i32 %30, i32 16, i32 %31)
  store %struct.mvebu_mpp_ctrl_data* %32, %struct.mvebu_mpp_ctrl_data** %9, align 8
  %33 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %9, align 8
  %34 = icmp ne %struct.mvebu_mpp_ctrl_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %69

38:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %8, align 8
  %42 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.regmap*, %struct.regmap** %10, align 8
  %47 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %47, i64 %49
  %51 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.regmap* %46, %struct.regmap** %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %54, i64 %56
  %58 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 8
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %9, align 8
  %65 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %8, align 8
  %66 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %65, i32 0, i32 1
  store %struct.mvebu_mpp_ctrl_data* %64, %struct.mvebu_mpp_ctrl_data** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %68 = call i32 @mvebu_pinctrl_probe(%struct.platform_device* %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %35, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.mvebu_pinctrl_soc_info* @dev_get_platdata(i32*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.mvebu_mpp_ctrl_data* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @mvebu_pinctrl_probe(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
