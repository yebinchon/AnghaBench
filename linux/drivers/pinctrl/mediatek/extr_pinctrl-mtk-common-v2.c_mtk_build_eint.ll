; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_build_eint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_build_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32*, %struct.mtk_pinctrl*, i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.resource = type { i32 }

@CONFIG_EINT_MTK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"eint\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to get eint resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mtk_eint_xt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_build_eint(%struct.mtk_pinctrl* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load i32, i32* @CONFIG_EINT_MTK, align 4
  %13 = call i32 @IS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_property_read_bool(%struct.device_node* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %128

23:                                               ; preds = %16
  %24 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_7__* @devm_kzalloc(i32 %26, i32 40, i32 %27)
  %29 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %29, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %128

38:                                               ; preds = %23
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %41, %struct.resource** %7, align 8
  %42 = load %struct.resource*, %struct.resource** %7, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %128

50:                                               ; preds = %38
  %51 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.resource*, %struct.resource** %7, align 8
  %54 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %52, %struct.resource* %53)
  %55 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  store i32 %54, i32* %58, align 4
  %59 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %50
  %67 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %68 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %128

73:                                               ; preds = %50
  %74 = load %struct.device_node*, %struct.device_node** %6, align 8
  %75 = call i32 @irq_of_parse_and_map(%struct.device_node* %74, i32 0)
  %76 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i32 %75, i32* %79, align 8
  %80 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %81 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %128

89:                                               ; preds = %73
  %90 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %91 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %128

99:                                               ; preds = %89
  %100 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %103 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %105, align 8
  %106 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %107 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %112 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store i64 %110, i64* %114, align 8
  %115 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %116 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %117 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store %struct.mtk_pinctrl* %115, %struct.mtk_pinctrl** %119, align 8
  %120 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %121 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32* @mtk_eint_xt, i32** %123, align 8
  %124 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %125 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = call i32 @mtk_eint_do_init(%struct.TYPE_7__* %126)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %99, %96, %86, %66, %44, %35, %20, %15
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.TYPE_7__* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @mtk_eint_do_init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
