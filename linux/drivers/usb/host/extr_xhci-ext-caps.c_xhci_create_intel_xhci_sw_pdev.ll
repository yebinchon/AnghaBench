; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ext-caps.c_xhci_create_intel_xhci_sw_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ext-caps.c_xhci_create_intel_xhci_sw_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_hcd = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.pci_dev = type { i64 }
%struct.resource = type { i32, i32, i64, i64, i32 }

@USB_SW_DRV_NAME = common dso_local global i32 0, align 4
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"couldn't allocate %s platform device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_SW_RESOURCE_SIZE = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"couldn't add resources to intel_xhci_usb_sw pdev\0A\00", align 1
@PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI = common dso_local global i64 0, align 8
@role_switch_props = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to register device properties\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"couldn't register intel_xhci_usb_sw pdev\0A\00", align 1
@xhci_intel_unregister_pdev = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"couldn't add unregister action for intel_xhci_usb_sw pdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, i64)* @xhci_create_intel_xhci_sw_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_create_intel_xhci_sw_pdev(%struct.xhci_hcd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.resource, align 8
  %11 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %13 = call %struct.usb_hcd* @xhci_to_hcd(%struct.xhci_hcd* %12)
  store %struct.usb_hcd* %13, %struct.usb_hcd** %6, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = call %struct.pci_dev* @to_pci_dev(%struct.device* %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %9, align 8
  %20 = bitcast %struct.resource* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load i32, i32* @USB_SW_DRV_NAME, align 4
  %22 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %23 = call %struct.platform_device* @platform_device_alloc(i32 %21, i32 %22)
  store %struct.platform_device* %23, %struct.platform_device** %8, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %25 = icmp ne %struct.platform_device* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %28 = load i32, i32* @USB_SW_DRV_NAME, align 4
  %29 = call i32 @xhci_err(%struct.xhci_hcd* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %105

32:                                               ; preds = %2
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %35, %36
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 2
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_SW_RESOURCE_SIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = sub nsw i64 %42, 1
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 3
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @USB_SW_DRV_NAME, align 4
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %50 = call i32 @platform_device_add_resources(%struct.platform_device* %49, %struct.resource* %10, i32 1)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %32
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %57 = call i32 @platform_device_put(%struct.platform_device* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %105

59:                                               ; preds = %32
  %60 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %67 = load i32, i32* @role_switch_props, align 4
  %68 = call i32 @platform_device_add_properties(%struct.platform_device* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %75 = call i32 @platform_device_put(%struct.platform_device* %74)
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  br label %105

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.device* %79, %struct.device** %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %84 = call i32 @platform_device_add(%struct.platform_device* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %91 = call i32 @platform_device_put(%struct.platform_device* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %105

93:                                               ; preds = %78
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = load i32, i32* @xhci_intel_unregister_pdev, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %97 = call i32 @devm_add_action_or_reset(%struct.device* %94, i32 %95, %struct.platform_device* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.device*, %struct.device** %7, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %100, %87, %71, %53, %26
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.usb_hcd* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @platform_device_add_properties(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
