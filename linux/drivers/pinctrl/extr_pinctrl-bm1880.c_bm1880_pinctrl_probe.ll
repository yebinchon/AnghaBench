; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.bm1880_pinctrl = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@bm1880_pctrl_groups = common dso_local global i8* null, align 8
@bm1880_pmux_functions = common dso_local global i8* null, align 8
@bm1880_pinconf = common dso_local global i32 0, align 4
@bm1880_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BM1880 pinctrl driver initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bm1880_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bm1880_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.bm1880_pinctrl*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bm1880_pinctrl* @devm_kzalloc(i32* %7, i32 48, i32 %8)
  store %struct.bm1880_pinctrl* %9, %struct.bm1880_pinctrl** %5, align 8
  %10 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %11 = icmp ne %struct.bm1880_pinctrl* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = call i32 @devm_ioremap_resource(i32* %20, %struct.resource* %21)
  %23 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %24 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %26 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %32 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %76

35:                                               ; preds = %15
  %36 = load i8*, i8** @bm1880_pctrl_groups, align 8
  %37 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %38 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @bm1880_pctrl_groups, align 8
  %40 = call i8* @ARRAY_SIZE(i8* %39)
  %41 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %42 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @bm1880_pmux_functions, align 8
  %44 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %45 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @bm1880_pmux_functions, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  %48 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %49 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @bm1880_pinconf, align 4
  %51 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %52 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %56 = call i32 @devm_pinctrl_register(i32* %54, i32* @bm1880_desc, %struct.bm1880_pinctrl* %55)
  %57 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %58 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %60 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %35
  %65 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %66 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %76

69:                                               ; preds = %35
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %5, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.bm1880_pinctrl* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %64, %30, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.bm1880_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, i32*, %struct.bm1880_pinctrl*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bm1880_pinctrl*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
