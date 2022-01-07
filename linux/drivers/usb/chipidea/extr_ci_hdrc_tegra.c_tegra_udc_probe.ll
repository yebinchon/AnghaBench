; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_tegra.c_tegra_udc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_tegra.c_tegra_udc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, i32 }
%struct.tegra_udc_soc_info = type { i32 }
%struct.tegra_udc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to match OF data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"nvidia,phy\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get PHY: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"tegra-udc\00", align 1
@DEF_CAPOFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to add HDRC device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_udc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_udc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_udc_soc_info*, align 8
  %5 = alloca %struct.tegra_udc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tegra_udc* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.tegra_udc* %10, %struct.tegra_udc** %5, align 8
  %11 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %12 = icmp ne %struct.tegra_udc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %148

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.tegra_udc_soc_info* @of_device_get_match_data(i32* %18)
  store %struct.tegra_udc_soc_info* %19, %struct.tegra_udc_soc_info** %4, align 8
  %20 = load %struct.tegra_udc_soc_info*, %struct.tegra_udc_soc_info** %4, align 8
  %21 = icmp ne %struct.tegra_udc_soc_info* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %148

28:                                               ; preds = %16
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @devm_usb_get_phy_by_phandle(i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %32 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %148

49:                                               ; preds = %28
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @devm_clk_get(i32* %51, i32* null)
  %53 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %148

70:                                               ; preds = %49
  %71 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %72 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_prepare_enable(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %148

83:                                               ; preds = %70
  %84 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %85 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usb_phy_set_suspend(i32 %86, i32 0)
  %88 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %89 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %90, align 8
  %91 = load %struct.tegra_udc_soc_info*, %struct.tegra_udc_soc_info** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_udc_soc_info, %struct.tegra_udc_soc_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %95 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  %97 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %98 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %101 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @DEF_CAPOFFSET, align 4
  %104 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %105 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %116 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %115, i32 0, i32 3
  %117 = call i32 @ci_hdrc_add_device(i32* %108, i32 %111, i32 %114, %struct.TYPE_2__* %116)
  %118 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %119 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %121 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @IS_ERR(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %83
  %126 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %127 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @PTR_ERR(i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load i32, i32* %6, align 4
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %138

134:                                              ; preds = %83
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %137 = call i32 @platform_set_drvdata(%struct.platform_device* %135, %struct.tegra_udc* %136)
  store i32 0, i32* %2, align 4
  br label %148

138:                                              ; preds = %125
  %139 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %140 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @usb_phy_set_suspend(i32 %141, i32 1)
  %143 = load %struct.tegra_udc*, %struct.tegra_udc** %5, align 8
  %144 = getelementptr inbounds %struct.tegra_udc, %struct.tegra_udc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @clk_disable_unprepare(i32 %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %138, %134, %77, %60, %39, %22, %13
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.tegra_udc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.tegra_udc_soc_info* @of_device_get_match_data(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_usb_get_phy_by_phandle(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @usb_phy_set_suspend(i32, i32) #1

declare dso_local i32 @ci_hdrc_add_device(i32*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_udc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
