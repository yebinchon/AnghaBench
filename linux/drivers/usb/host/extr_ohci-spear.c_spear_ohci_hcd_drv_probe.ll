; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-spear.c_spear_ohci_hcd_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-spear.c_spear_ohci_hcd_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_4__, i32, i32, %struct.clk* }
%struct.TYPE_4__ = type { i32 }
%struct.clk = type { i32 }
%struct.spear_ohci = type { %struct.clk* }
%struct.resource = type { i32 }

@ohci_spear_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error getting interface clock\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"init fail, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_ohci_hcd_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_ohci_hcd_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.spear_ohci*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.hc_driver* @ohci_spear_hc_driver, %struct.hc_driver** %4, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %9, align 4
  br label %114

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @DMA_BIT_MASK(i32 32)
  %21 = call i32 @dma_coerce_mask_and_coherent(i32* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %114

25:                                               ; preds = %17
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call %struct.clk* @devm_clk_get(i32* %27, i32* null)
  store %struct.clk* %28, %struct.clk** %6, align 8
  %29 = load %struct.clk*, %struct.clk** %6, align 8
  %30 = call i64 @IS_ERR(%struct.clk* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.clk*, %struct.clk** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.clk* %36)
  store i32 %37, i32* %9, align 4
  br label %114

38:                                               ; preds = %25
  %39 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_name(i32* %43)
  %45 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %39, i32* %41, i32 %44)
  store %struct.usb_hcd* %45, %struct.usb_hcd** %5, align 8
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %47 = icmp ne %struct.usb_hcd* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %114

51:                                               ; preds = %38
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %8, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %8, align 8
  %58 = call %struct.clk* @devm_ioremap_resource(i32* %56, %struct.resource* %57)
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %60 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %59, i32 0, i32 3
  store %struct.clk* %58, %struct.clk** %60, align 8
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %62 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %61, i32 0, i32 3
  %63 = load %struct.clk*, %struct.clk** %62, align 8
  %64 = call i64 @IS_ERR(%struct.clk* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %68 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %67, i32 0, i32 3
  %69 = load %struct.clk*, %struct.clk** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.clk* %69)
  store i32 %70, i32* %9, align 4
  br label %111

71:                                               ; preds = %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %79 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.resource*, %struct.resource** %8, align 8
  %81 = call i32 @resource_size(%struct.resource* %80)
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %83 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %85 = call %struct.spear_ohci* @to_spear_ohci(%struct.usb_hcd* %84)
  store %struct.spear_ohci* %85, %struct.spear_ohci** %7, align 8
  %86 = load %struct.clk*, %struct.clk** %6, align 8
  %87 = load %struct.spear_ohci*, %struct.spear_ohci** %7, align 8
  %88 = getelementptr inbounds %struct.spear_ohci, %struct.spear_ohci* %87, i32 0, i32 0
  store %struct.clk* %86, %struct.clk** %88, align 8
  %89 = load %struct.spear_ohci*, %struct.spear_ohci** %7, align 8
  %90 = getelementptr inbounds %struct.spear_ohci, %struct.spear_ohci* %89, i32 0, i32 0
  %91 = load %struct.clk*, %struct.clk** %90, align 8
  %92 = call i32 @clk_prepare_enable(%struct.clk* %91)
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = call i32 @platform_get_irq(%struct.platform_device* %94, i32 0)
  %96 = call i32 @usb_add_hcd(%struct.usb_hcd* %93, i32 %95, i32 0)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %71
  %100 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %101 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_wakeup_enable(i32 %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  br label %120

106:                                              ; preds = %71
  %107 = load %struct.spear_ohci*, %struct.spear_ohci** %7, align 8
  %108 = getelementptr inbounds %struct.spear_ohci, %struct.spear_ohci* %107, i32 0, i32 0
  %109 = load %struct.clk*, %struct.clk** %108, align 8
  %110 = call i32 @clk_disable_unprepare(%struct.clk* %109)
  br label %111

111:                                              ; preds = %106, %66
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %113 = call i32 @usb_put_hcd(%struct.usb_hcd* %112)
  br label %114

114:                                              ; preds = %111, %48, %32, %24, %15
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %114, %99
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.spear_ohci* @to_spear_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
