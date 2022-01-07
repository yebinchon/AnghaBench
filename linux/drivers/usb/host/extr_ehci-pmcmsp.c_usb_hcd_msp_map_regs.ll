; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_usb_hcd_msp_map_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_usb_hcd_msp_map_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mspusb_device = type { i32*, i32*, %struct.platform_device }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mab regs\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"usbid regs\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to map non-EHCI regs.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mspusb_device*)* @usb_hcd_msp_map_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_msp_map_regs(%struct.mspusb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mspusb_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mspusb_device* %0, %struct.mspusb_device** %3, align 8
  %8 = load %struct.mspusb_device*, %struct.mspusb_device** %3, align 8
  %9 = getelementptr inbounds %struct.mspusb_device, %struct.mspusb_device* %8, i32 0, i32 2
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 1)
  store %struct.resource* %12, %struct.resource** %4, align 8
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = icmp eq %struct.resource* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %115

18:                                               ; preds = %1
  %19 = load %struct.resource*, %struct.resource** %4, align 8
  %20 = call i32 @resource_size(%struct.resource* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @request_mem_region(i32 %23, i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %115

30:                                               ; preds = %18
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @ioremap_nocache(i32 %33, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.mspusb_device*, %struct.mspusb_device** %3, align 8
  %38 = getelementptr inbounds %struct.mspusb_device, %struct.mspusb_device* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.mspusb_device*, %struct.mspusb_device** %3, align 8
  %40 = getelementptr inbounds %struct.mspusb_device, %struct.mspusb_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %100

46:                                               ; preds = %30
  %47 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 2)
  store %struct.resource* %49, %struct.resource** %4, align 8
  %50 = load %struct.resource*, %struct.resource** %4, align 8
  %51 = icmp eq %struct.resource* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %95

55:                                               ; preds = %46
  %56 = load %struct.resource*, %struct.resource** %4, align 8
  %57 = call i32 @resource_size(%struct.resource* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.resource*, %struct.resource** %4, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @request_mem_region(i32 %60, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %95

67:                                               ; preds = %55
  %68 = load %struct.resource*, %struct.resource** %4, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i8* @ioremap_nocache(i32 %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.mspusb_device*, %struct.mspusb_device** %3, align 8
  %75 = getelementptr inbounds %struct.mspusb_device, %struct.mspusb_device* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.mspusb_device*, %struct.mspusb_device** %3, align 8
  %77 = getelementptr inbounds %struct.mspusb_device, %struct.mspusb_device* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %84

83:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %115

84:                                               ; preds = %80
  %85 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %86 = load i32, i32* @IORESOURCE_MEM, align 4
  %87 = call %struct.resource* @platform_get_resource(%struct.platform_device* %85, i32 %86, i32 2)
  store %struct.resource* %87, %struct.resource** %4, align 8
  %88 = load %struct.resource*, %struct.resource** %4, align 8
  %89 = call i32 @resource_size(%struct.resource* %88)
  store i32 %89, i32* %6, align 4
  %90 = load %struct.resource*, %struct.resource** %4, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @release_mem_region(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %84, %64, %52
  %96 = load %struct.mspusb_device*, %struct.mspusb_device** %3, align 8
  %97 = getelementptr inbounds %struct.mspusb_device, %struct.mspusb_device* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @iounmap(i32* %98)
  br label %100

100:                                              ; preds = %95, %43
  %101 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %102 = load i32, i32* @IORESOURCE_MEM, align 4
  %103 = call %struct.resource* @platform_get_resource(%struct.platform_device* %101, i32 %102, i32 1)
  store %struct.resource* %103, %struct.resource** %4, align 8
  %104 = load %struct.resource*, %struct.resource** %4, align 8
  %105 = call i32 @resource_size(%struct.resource* %104)
  store i32 %105, i32* %6, align 4
  %106 = load %struct.resource*, %struct.resource** %4, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @release_mem_region(i32 %108, i32 %109)
  %111 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %100, %83, %27, %15
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i8* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
