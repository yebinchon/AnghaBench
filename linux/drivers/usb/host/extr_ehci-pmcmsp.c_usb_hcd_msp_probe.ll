; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_usb_hcd_msp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_usb_hcd_msp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32, i32 }
%struct.usb_hcd = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }
%struct.ehci_hcd = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"pmcmsp\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No IOMEM resource info for %s.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ioremap failed\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"No IRQ resource info for %s.\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_msp_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.ehci_hcd*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %10, i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_hcd* %13, %struct.usb_hcd** %7, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %15 = icmp ne %struct.usb_hcd* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %137

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %8, align 8
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = icmp eq %struct.resource* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %133

32:                                               ; preds = %19
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.resource*, %struct.resource** %8, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %43 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %46 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @request_mem_region(i32 %44, i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %32
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %133

56:                                               ; preds = %32
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %58 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %61 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ioremap_nocache(i32 %59, i32 %62)
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %56
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %125

74:                                               ; preds = %56
  %75 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %76 = load i32, i32* @IORESOURCE_IRQ, align 4
  %77 = call %struct.resource* @platform_get_resource(%struct.platform_device* %75, i32 %76, i32 0)
  store %struct.resource* %77, %struct.resource** %8, align 8
  %78 = load %struct.resource*, %struct.resource** %8, align 8
  %79 = icmp eq %struct.resource* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 1
  %83 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %120

89:                                               ; preds = %74
  %90 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %91 = call i32 @to_mspusb_device(%struct.platform_device* %90)
  %92 = call i32 @usb_hcd_msp_map_regs(i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %120

96:                                               ; preds = %89
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %98 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %97)
  store %struct.ehci_hcd* %98, %struct.ehci_hcd** %9, align 8
  %99 = load %struct.ehci_hcd*, %struct.ehci_hcd** %9, align 8
  %100 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  %101 = load %struct.ehci_hcd*, %struct.ehci_hcd** %9, align 8
  %102 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %104 = load %struct.resource*, %struct.resource** %8, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IRQF_SHARED, align 4
  %108 = call i32 @usb_add_hcd(%struct.usb_hcd* %103, i32 %106, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %96
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %113 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @device_wakeup_enable(i32 %115)
  store i32 0, i32* %3, align 4
  br label %137

117:                                              ; preds = %96
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %119 = call i32 @usb_remove_hcd(%struct.usb_hcd* %118)
  br label %120

120:                                              ; preds = %117, %95, %80
  %121 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %122 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @iounmap(i32 %123)
  br label %125

125:                                              ; preds = %120, %70
  %126 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %127 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %130 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @release_mem_region(i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %125, %53, %25
  %134 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %135 = call i32 @usb_put_hcd(%struct.usb_hcd* %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %111, %16
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_hcd_msp_map_regs(i32) #1

declare dso_local i32 @to_mspusb_device(%struct.platform_device*) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
