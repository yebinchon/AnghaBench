; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-haps.c_dwc3_haps_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-haps.c_dwc3_haps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.dwc3_haps = type { %struct.TYPE_8__*, %struct.pci_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.resource = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable pci device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"dwc_usb3\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't add resources to dwc3 device\0A\00", align 1
@initial_properties = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to register dwc3 device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dwc3_haps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_haps_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.dwc3_haps*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca [2 x %struct.resource], align 16
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pcim_enable_device(%struct.pci_dev* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %125

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.dwc3_haps* @devm_kzalloc(%struct.device* %24, i32 16, i32 %25)
  store %struct.dwc3_haps* %26, %struct.dwc3_haps** %6, align 8
  %27 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %28 = icmp ne %struct.dwc3_haps* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %125

32:                                               ; preds = %21
  %33 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %34 = call %struct.TYPE_8__* @platform_device_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %36 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %35, i32 0, i32 0
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %36, align 8
  %37 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %38 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %125

44:                                               ; preds = %32
  %45 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %46 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(%struct.resource* %46)
  %48 = sext i32 %47 to i64
  %49 = mul i64 24, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memset(%struct.resource* %45, i32 0, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_resource_start(%struct.pci_dev* %52, i32 0)
  %54 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @pci_resource_end(%struct.pci_dev* %56, i32 0)
  %58 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 16
  %60 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 16
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 1
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 1
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @IORESOURCE_IRQ, align 4
  %73 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 1
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %76 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %79 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %80 = call i32 @ARRAY_SIZE(%struct.resource* %79)
  %81 = call i32 @platform_device_add_resources(%struct.TYPE_8__* %77, %struct.resource* %78, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %44
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %119

87:                                               ; preds = %44
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %90 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %89, i32 0, i32 1
  store %struct.pci_dev* %88, %struct.pci_dev** %90, align 8
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %93 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store %struct.device* %91, %struct.device** %96, align 8
  %97 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %98 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* @initial_properties, align 4
  %101 = call i32 @platform_device_add_properties(%struct.TYPE_8__* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %87
  br label %119

105:                                              ; preds = %87
  %106 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %107 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @platform_device_add(%struct.TYPE_8__* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.device*, %struct.device** %7, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %119

115:                                              ; preds = %105
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %118 = call i32 @pci_set_drvdata(%struct.pci_dev* %116, %struct.dwc3_haps* %117)
  store i32 0, i32* %3, align 4
  br label %125

119:                                              ; preds = %112, %104, %84
  %120 = load %struct.dwc3_haps*, %struct.dwc3_haps** %6, align 8
  %121 = getelementptr inbounds %struct.dwc3_haps, %struct.dwc3_haps* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i32 @platform_device_put(%struct.TYPE_8__* %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %119, %115, %41, %29, %16
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.dwc3_haps* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.TYPE_8__*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add_properties(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.dwc3_haps*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
