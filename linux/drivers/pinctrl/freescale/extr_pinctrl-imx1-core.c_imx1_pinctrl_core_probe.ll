; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx1-core.c_imx1_pinctrl_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx1-core.c_imx1_pinctrl_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_desc = type { i64, i64, i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.imx1_pinctrl_soc_info = type { %struct.TYPE_8__*, i64, i64 }
%struct.imx1_pinctrl = type { i32, %struct.TYPE_8__*, %struct.imx1_pinctrl_soc_info*, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"wrong pinctrl info\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@imx1_pinctrl_desc = common dso_local global %struct.pinctrl_desc zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"fail to probe dt properties\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not register IMX pinctrl driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to populate subdevices\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"initialized IMX pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx1_pinctrl_core_probe(%struct.platform_device* %0, %struct.imx1_pinctrl_soc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.imx1_pinctrl_soc_info*, align 8
  %6 = alloca %struct.imx1_pinctrl*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.pinctrl_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.imx1_pinctrl_soc_info* %1, %struct.imx1_pinctrl_soc_info** %5, align 8
  %10 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %11 = icmp ne %struct.imx1_pinctrl_soc_info* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %14 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %19 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %12, %2
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %151

28:                                               ; preds = %17
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %32 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %31, i32 0, i32 0
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.imx1_pinctrl* @devm_kzalloc(%struct.TYPE_8__* %34, i32 32, i32 %35)
  store %struct.imx1_pinctrl* %36, %struct.imx1_pinctrl** %6, align 8
  %37 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %38 = icmp ne %struct.imx1_pinctrl* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %151

42:                                               ; preds = %28
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %7, align 8
  %46 = load %struct.resource*, %struct.resource** %7, align 8
  %47 = icmp ne %struct.resource* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %151

51:                                               ; preds = %42
  %52 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.resource*, %struct.resource** %7, align 8
  %58 = call i32 @resource_size(%struct.resource* %57)
  %59 = call i32 @devm_ioremap_nocache(%struct.TYPE_8__* %53, i32 %56, i32 %58)
  %60 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %61 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %63 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %151

69:                                               ; preds = %51
  store %struct.pinctrl_desc* @imx1_pinctrl_desc, %struct.pinctrl_desc** %8, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @dev_name(%struct.TYPE_8__* %71)
  %73 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %74 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %76 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %79 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %81 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %84 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %87 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %88 = call i32 @imx1_pinctrl_parse_dt(%struct.platform_device* %85, %struct.imx1_pinctrl* %86, %struct.imx1_pinctrl_soc_info* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %69
  %92 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.TYPE_8__* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %151

96:                                               ; preds = %69
  %97 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %98 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %99 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %98, i32 0, i32 2
  store %struct.imx1_pinctrl_soc_info* %97, %struct.imx1_pinctrl_soc_info** %99, align 8
  %100 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %5, align 8
  %101 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %104 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %103, i32 0, i32 1
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %106 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %107 = call i32 @platform_set_drvdata(%struct.platform_device* %105, %struct.imx1_pinctrl* %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %111 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %112 = call i32 @devm_pinctrl_register(%struct.TYPE_8__* %109, %struct.pinctrl_desc* %110, %struct.imx1_pinctrl* %111)
  %113 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %114 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %116 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @IS_ERR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %96
  %121 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_err(%struct.TYPE_8__* %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %125 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %3, align 4
  br label %151

128:                                              ; preds = %96
  %129 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @of_platform_populate(i32 %132, i32* null, i32* null, %struct.TYPE_8__* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %6, align 8
  %140 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @pinctrl_unregister(i32 %141)
  %143 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 @dev_err(%struct.TYPE_8__* %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %3, align 4
  br label %151

147:                                              ; preds = %128
  %148 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @dev_info(%struct.TYPE_8__* %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %138, %120, %91, %66, %48, %39, %22
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.imx1_pinctrl* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_nocache(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @imx1_pinctrl_parse_dt(%struct.platform_device*, %struct.imx1_pinctrl*, %struct.imx1_pinctrl_soc_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx1_pinctrl*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_8__*, %struct.pinctrl_desc*, %struct.imx1_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pinctrl_unregister(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
