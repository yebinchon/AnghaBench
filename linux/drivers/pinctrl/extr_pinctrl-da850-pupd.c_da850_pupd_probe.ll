; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-da850-pupd.c_da850_pupd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-da850-pupd.c_da850_pupd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da850_pupd_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not map resource\0A\00", align 1
@da850_pupd_pctlops = common dso_local global i32 0, align 4
@da850_pupd_confops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da850_pupd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da850_pupd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da850_pupd_data*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.da850_pupd_data* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.da850_pupd_data* %11, %struct.da850_pupd_data** %5, align 8
  %12 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %13 = icmp ne %struct.da850_pupd_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %6, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = call i32 @devm_ioremap_resource(%struct.device* %21, %struct.resource* %22)
  %24 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %25 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %27 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %35 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %77

38:                                               ; preds = %17
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_name(%struct.device* %39)
  %41 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %42 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 8
  %44 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %45 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32* @da850_pupd_pctlops, i32** %46, align 8
  %47 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %48 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* @da850_pupd_confops, i32** %49, align 8
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %52 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %56 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %55, i32 0, i32 1
  %57 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %58 = call i32 @devm_pinctrl_register(%struct.device* %54, %struct.TYPE_2__* %56, %struct.da850_pupd_data* %57)
  %59 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %60 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %62 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %38
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %70 = getelementptr inbounds %struct.da850_pupd_data, %struct.da850_pupd_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %38
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.da850_pupd_data*, %struct.da850_pupd_data** %5, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.da850_pupd_data* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %66, %31, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.da850_pupd_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.TYPE_2__*, %struct.da850_pupd_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da850_pupd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
