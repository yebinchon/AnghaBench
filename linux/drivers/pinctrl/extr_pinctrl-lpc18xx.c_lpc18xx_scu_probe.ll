; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_scu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_scu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc18xx_scu_data = type { i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Input clock not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to create group func map.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@lpc18xx_scu_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not register pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_scu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_scu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc18xx_scu_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lpc18xx_scu_data* @devm_kzalloc(i32* %8, i32 12, i32 %9)
  store %struct.lpc18xx_scu_data* %10, %struct.lpc18xx_scu_data** %4, align 8
  %11 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %12 = icmp ne %struct.lpc18xx_scu_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %25 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %27 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %33 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %107

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i32* null)
  %40 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %41 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %43 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %52 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %107

55:                                               ; preds = %36
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %59 = call i32 @lpc18xx_create_group_func_map(i32* %57, %struct.lpc18xx_scu_data* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %107

67:                                               ; preds = %55
  %68 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %69 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_prepare_enable(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %107

79:                                               ; preds = %67
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %82 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.lpc18xx_scu_data* %81)
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %86 = call i32 @devm_pinctrl_register(i32* %84, i32* @lpc18xx_scu_desc, %struct.lpc18xx_scu_data* %85)
  %87 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %88 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %90 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %79
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %99 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clk_disable_unprepare(i32 %100)
  %102 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %4, align 8
  %103 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PTR_ERR(i32 %104)
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %94, %74, %62, %47, %31, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.lpc18xx_scu_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @lpc18xx_create_group_func_map(i32*, %struct.lpc18xx_scu_data*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_scu_data*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, i32*, %struct.lpc18xx_scu_data*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
