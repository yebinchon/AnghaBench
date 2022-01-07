; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sm501.c_ohci_hcd_sm501_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sm501.c_ohci_hcd_sm501_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_hcd = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@SM501_IRQ_MASK = common dso_local global i32 0, align 4
@SM501_GATE_USB_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_sm501_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_sm501_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.usb_hcd* %6, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call i32 @usb_remove_hcd(%struct.usb_hcd* %7)
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @release_mem_region(i32 %11, i32 %14)
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = call i32 @usb_put_hcd(%struct.usb_hcd* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 1)
  store %struct.resource* %20, %struct.resource** %4, align 8
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.resource*, %struct.resource** %4, align 8
  %28 = call i32 @resource_size(%struct.resource* %27)
  %29 = call i32 @release_mem_region(i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SM501_IRQ_MASK, align 4
  %36 = call i32 @sm501_modify_reg(i32 %34, i32 %35, i32 0, i32 64)
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SM501_GATE_USB_HOST, align 4
  %42 = call i32 @sm501_unit_power(i32 %40, i32 %41, i32 0)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @sm501_modify_reg(i32, i32, i32, i32) #1

declare dso_local i32 @sm501_unit_power(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
