; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }
%struct.zynq_pinctrl = type { i32, i8*, i8*, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to get syscon\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"missing IO resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@zynq_pctrl_groups = common dso_local global i8* null, align 8
@zynq_pmux_functions = common dso_local global i8* null, align 8
@zynq_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"zynq pinctrl initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynq_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.zynq_pinctrl*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.zynq_pinctrl* @devm_kzalloc(%struct.TYPE_5__* %7, i32 48, i32 %8)
  store %struct.zynq_pinctrl* %9, %struct.zynq_pinctrl** %5, align 8
  %10 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %11 = icmp ne %struct.zynq_pinctrl* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @syscon_regmap_lookup_by_phandle(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %22 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %24 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %33 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %91

36:                                               ; preds = %15
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = icmp ne %struct.resource* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_5__* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %91

48:                                               ; preds = %36
  %49 = load %struct.resource*, %struct.resource** %4, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %53 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @zynq_pctrl_groups, align 8
  %55 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %56 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @zynq_pctrl_groups, align 8
  %58 = call i8* @ARRAY_SIZE(i8* %57)
  %59 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %60 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @zynq_pmux_functions, align 8
  %62 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %63 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @zynq_pmux_functions, align 8
  %65 = call i8* @ARRAY_SIZE(i8* %64)
  %66 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %67 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %71 = call i32 @devm_pinctrl_register(%struct.TYPE_5__* %69, i32* @zynq_desc, %struct.zynq_pinctrl* %70)
  %72 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %73 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %75 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %48
  %80 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %81 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %91

84:                                               ; preds = %48
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %5, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.zynq_pinctrl* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_info(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %79, %42, %28, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.zynq_pinctrl* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_5__*, i32*, %struct.zynq_pinctrl*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zynq_pinctrl*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
