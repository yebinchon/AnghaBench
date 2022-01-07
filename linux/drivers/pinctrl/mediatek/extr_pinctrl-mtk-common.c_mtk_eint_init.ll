; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_eint_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_eint_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32*, %struct.mtk_pinctrl*, i32*, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mtk_eint_xt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, %struct.platform_device*)* @mtk_eint_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_eint_init(%struct.mtk_pinctrl* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i32 @of_property_read_bool(%struct.device_node* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_6__* @devm_kzalloc(i32 %21, i32 48, i32 %22)
  %24 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %24, i32 0, i32 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %112

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %7, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %38, %struct.resource* %39)
  %41 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %42 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  store i32 %40, i32* %44, align 4
  %45 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %54 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %112

59:                                               ; preds = %33
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = call i32 @irq_of_parse_and_map(%struct.device_node* %60, i32 0)
  %62 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  store i32 %61, i32* %65, align 8
  %66 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %67 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %112

75:                                               ; preds = %59
  %76 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %79 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %81, align 8
  %82 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %83 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 8
  %91 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %92 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %96 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i32* %94, i32** %98, align 8
  %99 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %100 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %101 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store %struct.mtk_pinctrl* %99, %struct.mtk_pinctrl** %103, align 8
  %104 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %105 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32* @mtk_eint_xt, i32** %107, align 8
  %108 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @mtk_eint_do_init(%struct.TYPE_6__* %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %75, %72, %52, %30, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.TYPE_6__* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @mtk_eint_do_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
