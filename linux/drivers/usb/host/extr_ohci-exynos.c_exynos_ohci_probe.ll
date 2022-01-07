; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-exynos.c_exynos_ohci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-exynos.c_exynos_ohci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.exynos_ohci_hcd = type { i32, i32*, i64 }
%struct.usb_hcd = type { %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.resource = type { i32 }

@exynos_ohci_hc_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to create HCD\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"usbhost\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to get usbhost clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Failed to get IRQ\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to enable USB phy\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to add USB HCD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_ohci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ohci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_ohci_hcd*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @DMA_BIT_MASK(i32 32)
  %12 = call i32 @dma_coerce_mask_and_coherent(%struct.TYPE_12__* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %173

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_name(%struct.TYPE_12__* %21)
  %23 = call %struct.usb_hcd* @usb_create_hcd(i32* @exynos_ohci_hc_driver, %struct.TYPE_12__* %19, i32 %22)
  store %struct.usb_hcd* %23, %struct.usb_hcd** %5, align 8
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %25 = icmp ne %struct.usb_hcd* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_12__* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %173

32:                                               ; preds = %17
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %34 = call %struct.exynos_ohci_hcd* @to_exynos_ohci(%struct.usb_hcd* %33)
  store %struct.exynos_ohci_hcd* %34, %struct.exynos_ohci_hcd** %4, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %38 = call i32 @exynos_ohci_get_phy(%struct.TYPE_12__* %36, %struct.exynos_ohci_hcd* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %169

42:                                               ; preds = %32
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @devm_clk_get(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %49 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_12__* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %58 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %8, align 4
  br label %169

61:                                               ; preds = %42
  %62 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %63 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_prepare_enable(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %169

69:                                               ; preds = %61
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load i32, i32* @IORESOURCE_MEM, align 4
  %72 = call %struct.resource* @platform_get_resource(%struct.platform_device* %70, i32 %71, i32 0)
  store %struct.resource* %72, %struct.resource** %6, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %74, %struct.resource* %75)
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %80 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %69
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %86 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %8, align 4
  br label %164

89:                                               ; preds = %69
  %90 = load %struct.resource*, %struct.resource** %6, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.resource*, %struct.resource** %6, align 8
  %96 = call i32 @resource_size(%struct.resource* %95)
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 @platform_get_irq(%struct.platform_device* %99, i32 0)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %89
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %164

109:                                              ; preds = %89
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %112 = call i32 @platform_set_drvdata(%struct.platform_device* %110, %struct.usb_hcd* %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @exynos_ohci_phy_enable(%struct.TYPE_12__* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_err(%struct.TYPE_12__* %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %164

122:                                              ; preds = %109
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %128 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %127, i32 0, i32 1
  store i32* %126, i32** %128, align 8
  %129 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %130 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %133, %122
  %138 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @IRQF_SHARED, align 4
  %141 = call i32 @usb_add_hcd(%struct.usb_hcd* %138, i32 %139, i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @dev_err(%struct.TYPE_12__* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %154

148:                                              ; preds = %137
  %149 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %150 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @device_wakeup_enable(i32 %152)
  store i32 0, i32* %2, align 4
  br label %173

154:                                              ; preds = %144
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i32 @exynos_ohci_phy_disable(%struct.TYPE_12__* %156)
  %158 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %159 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32* %160, i32** %163, align 8
  br label %164

164:                                              ; preds = %154, %118, %103, %84
  %165 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %166 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @clk_disable_unprepare(i32 %167)
  br label %169

169:                                              ; preds = %164, %68, %53, %41
  %170 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %171 = call i32 @usb_put_hcd(%struct.usb_hcd* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %148, %26, %15
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.exynos_ohci_hcd* @to_exynos_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @exynos_ohci_get_phy(%struct.TYPE_12__*, %struct.exynos_ohci_hcd*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb_hcd*) #1

declare dso_local i32 @exynos_ohci_phy_enable(%struct.TYPE_12__*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @exynos_ohci_phy_disable(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
