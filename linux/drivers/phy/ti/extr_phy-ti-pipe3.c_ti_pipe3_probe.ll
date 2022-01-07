; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ti_pipe3 = type { i64, i32, %struct.phy*, i32, i32, %struct.device* }
%struct.phy = type { i32 }
%struct.phy_provider = type { i32 }
%struct.of_device_id = type { i64 }
%struct.pipe3_data = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_pipe3_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no driver data\0A\00", align 1
@PIPE3_MODE_SATA = common dso_local global i64 0, align 8
@ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_pipe3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_pipe3*, align 8
  %5 = alloca %struct.phy*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca %struct.pipe3_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ti_pipe3* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.ti_pipe3* %15, %struct.ti_pipe3** %4, align 8
  %16 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %17 = icmp ne %struct.ti_pipe3* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %133

21:                                               ; preds = %1
  %22 = load i32, i32* @ti_pipe3_id_table, align 4
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call %struct.of_device_id* @of_match_device(i32 %22, %struct.device* %23)
  store %struct.of_device_id* %24, %struct.of_device_id** %9, align 8
  %25 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %26 = icmp ne %struct.of_device_id* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %133

30:                                               ; preds = %21
  %31 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %32 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.pipe3_data*
  store %struct.pipe3_data* %34, %struct.pipe3_data** %10, align 8
  %35 = load %struct.pipe3_data*, %struct.pipe3_data** %10, align 8
  %36 = icmp ne %struct.pipe3_data* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %133

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %45 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %44, i32 0, i32 5
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.pipe3_data*, %struct.pipe3_data** %10, align 8
  %47 = getelementptr inbounds %struct.pipe3_data, %struct.pipe3_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %50 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.pipe3_data*, %struct.pipe3_data** %10, align 8
  %52 = getelementptr inbounds %struct.pipe3_data, %struct.pipe3_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %55 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pipe3_data*, %struct.pipe3_data** %10, align 8
  %57 = getelementptr inbounds %struct.pipe3_data, %struct.pipe3_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %60 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %62 = call i32 @ti_pipe3_get_pll_base(%struct.ti_pipe3* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %42
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %133

67:                                               ; preds = %42
  %68 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %69 = call i32 @ti_pipe3_get_tx_rx_base(%struct.ti_pipe3* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %133

74:                                               ; preds = %67
  %75 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %76 = call i32 @ti_pipe3_get_sysctrl(%struct.ti_pipe3* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %133

81:                                               ; preds = %74
  %82 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %83 = call i32 @ti_pipe3_get_clk(%struct.ti_pipe3* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %133

88:                                               ; preds = %81
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %91 = call i32 @platform_set_drvdata(%struct.platform_device* %89, %struct.ti_pipe3* %90)
  %92 = load %struct.device*, %struct.device** %7, align 8
  %93 = call i32 @pm_runtime_enable(%struct.device* %92)
  %94 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %95 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %88
  %100 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %101 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %100, i32 0, i32 2
  %102 = load %struct.phy*, %struct.phy** %101, align 8
  %103 = call i64 @IS_ERR(%struct.phy* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %107 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %106, i32 0, i32 2
  %108 = load %struct.phy*, %struct.phy** %107, align 8
  %109 = call i32 @clk_prepare_enable(%struct.phy* %108)
  %110 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %111 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %105, %99
  br label %113

113:                                              ; preds = %112, %88
  %114 = load %struct.device*, %struct.device** %7, align 8
  %115 = call %struct.phy* @devm_phy_create(%struct.device* %114, i32* null, i32* @ops)
  store %struct.phy* %115, %struct.phy** %5, align 8
  %116 = load %struct.phy*, %struct.phy** %5, align 8
  %117 = call i64 @IS_ERR(%struct.phy* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.phy*, %struct.phy** %5, align 8
  %121 = call i32 @PTR_ERR(%struct.phy* %120)
  store i32 %121, i32* %2, align 4
  br label %133

122:                                              ; preds = %113
  %123 = load %struct.phy*, %struct.phy** %5, align 8
  %124 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %125 = call i32 @phy_set_drvdata(%struct.phy* %123, %struct.ti_pipe3* %124)
  %126 = load %struct.phy*, %struct.phy** %5, align 8
  %127 = call i32 @ti_pipe3_power_off(%struct.phy* %126)
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = load i32, i32* @of_phy_simple_xlate, align 4
  %130 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %128, i32 %129)
  store %struct.phy_provider* %130, %struct.phy_provider** %6, align 8
  %131 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %132 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %131)
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %122, %119, %86, %79, %72, %65, %37, %27, %18
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.ti_pipe3* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ti_pipe3_get_pll_base(%struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_get_tx_rx_base(%struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_get_sysctrl(%struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_get_clk(%struct.ti_pipe3*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ti_pipe3*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(%struct.phy*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_power_off(%struct.phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
