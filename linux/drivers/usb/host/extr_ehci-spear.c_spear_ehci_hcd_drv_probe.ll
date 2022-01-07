; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-spear.c_spear_ehci_hcd_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-spear.c_spear_ehci_hcd_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_3__, %struct.clk*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.clk = type { i32 }
%struct.spear_ehci = type { %struct.clk* }
%struct.resource = type { i32 }
%struct.TYPE_4__ = type { %struct.clk* }

@ehci_spear_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error getting interface clock\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"init fail, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_ehci_hcd_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_ehci_hcd_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.spear_ehci*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.hc_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.hc_driver* @ehci_spear_hc_driver, %struct.hc_driver** %8, align 8
  %11 = call i64 (...) @usb_disabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %130

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %10, align 4
  br label %124

23:                                               ; preds = %16
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @DMA_BIT_MASK(i32 32)
  %27 = call i32 @dma_coerce_mask_and_coherent(i32* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %124

31:                                               ; preds = %23
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call %struct.clk* @devm_clk_get(i32* %33, i32* null)
  store %struct.clk* %34, %struct.clk** %7, align 8
  %35 = load %struct.clk*, %struct.clk** %7, align 8
  %36 = call i64 @IS_ERR(%struct.clk* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.clk*, %struct.clk** %7, align 8
  %43 = call i32 @PTR_ERR(%struct.clk* %42)
  store i32 %43, i32* %10, align 4
  br label %124

44:                                               ; preds = %31
  %45 = load %struct.hc_driver*, %struct.hc_driver** %8, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_name(i32* %49)
  %51 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %45, i32* %47, i32 %50)
  store %struct.usb_hcd* %51, %struct.usb_hcd** %4, align 8
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %53 = icmp ne %struct.usb_hcd* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %124

57:                                               ; preds = %44
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %6, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = call %struct.clk* @devm_ioremap_resource(i32* %62, %struct.resource* %63)
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 1
  store %struct.clk* %64, %struct.clk** %66, align 8
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %68 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %67, i32 0, i32 1
  %69 = load %struct.clk*, %struct.clk** %68, align 8
  %70 = call i64 @IS_ERR(%struct.clk* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 1
  %75 = load %struct.clk*, %struct.clk** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.clk* %75)
  store i32 %76, i32* %10, align 4
  br label %121

77:                                               ; preds = %57
  %78 = load %struct.resource*, %struct.resource** %6, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %82 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = call i32 @resource_size(%struct.resource* %83)
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %86 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %88 = call %struct.spear_ehci* @to_spear_ehci(%struct.usb_hcd* %87)
  store %struct.spear_ehci* %88, %struct.spear_ehci** %5, align 8
  %89 = load %struct.clk*, %struct.clk** %7, align 8
  %90 = load %struct.spear_ehci*, %struct.spear_ehci** %5, align 8
  %91 = getelementptr inbounds %struct.spear_ehci, %struct.spear_ehci* %90, i32 0, i32 0
  store %struct.clk* %89, %struct.clk** %91, align 8
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %93 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %92, i32 0, i32 1
  %94 = load %struct.clk*, %struct.clk** %93, align 8
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %96 = call %struct.TYPE_4__* @hcd_to_ehci(%struct.usb_hcd* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store %struct.clk* %94, %struct.clk** %97, align 8
  %98 = load %struct.spear_ehci*, %struct.spear_ehci** %5, align 8
  %99 = getelementptr inbounds %struct.spear_ehci, %struct.spear_ehci* %98, i32 0, i32 0
  %100 = load %struct.clk*, %struct.clk** %99, align 8
  %101 = call i32 @clk_prepare_enable(%struct.clk* %100)
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @IRQF_SHARED, align 4
  %105 = call i32 @usb_add_hcd(%struct.usb_hcd* %102, i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %77
  br label %116

109:                                              ; preds = %77
  %110 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %111 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @device_wakeup_enable(i32 %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %2, align 4
  br label %130

116:                                              ; preds = %108
  %117 = load %struct.spear_ehci*, %struct.spear_ehci** %5, align 8
  %118 = getelementptr inbounds %struct.spear_ehci, %struct.spear_ehci* %117, i32 0, i32 0
  %119 = load %struct.clk*, %struct.clk** %118, align 8
  %120 = call i32 @clk_disable_unprepare(%struct.clk* %119)
  br label %121

121:                                              ; preds = %116, %72
  %122 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %123 = call i32 @usb_put_hcd(%struct.usb_hcd* %122)
  br label %124

124:                                              ; preds = %121, %54, %38, %30, %21
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %124, %109, %13
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @usb_disabled(...) #1

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

declare dso_local %struct.spear_ehci* @to_spear_ehci(%struct.usb_hcd*) #1

declare dso_local %struct.TYPE_4__* @hcd_to_ehci(%struct.usb_hcd*) #1

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
