; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-pci.c_dwc3_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-pci.c_dwc3_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.property_entry = type { i32 }
%struct.dwc3_pci = type { %struct.TYPE_7__*, i32, %struct.pci_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device* }
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
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to register dwc3 device\0A\00", align 1
@dwc3_pci_resume_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dwc3_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.property_entry*, align 8
  %7 = alloca %struct.dwc3_pci*, align 8
  %8 = alloca [2 x %struct.resource], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.property_entry*
  store %struct.property_entry* %14, %struct.property_entry** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pcim_enable_device(%struct.pci_dev* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %147

26:                                               ; preds = %2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_set_master(%struct.pci_dev* %27)
  %29 = load %struct.device*, %struct.device** %10, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.dwc3_pci* @devm_kzalloc(%struct.device* %29, i32 24, i32 %30)
  store %struct.dwc3_pci* %31, %struct.dwc3_pci** %7, align 8
  %32 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %33 = icmp ne %struct.dwc3_pci* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %147

37:                                               ; preds = %26
  %38 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %39 = call %struct.TYPE_7__* @platform_device_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %41 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %40, i32 0, i32 0
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %41, align 8
  %42 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %43 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %147

49:                                               ; preds = %37
  %50 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %51 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %52 = call i32 @ARRAY_SIZE(%struct.resource* %51)
  %53 = sext i32 %52 to i64
  %54 = mul i64 24, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(%struct.resource* %50, i32 0, i32 %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pci_resource_start(%struct.pci_dev* %57, i32 0)
  %59 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @pci_resource_end(%struct.pci_dev* %61, i32 0)
  %63 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 16
  %65 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %66, align 16
  %67 = load i32, i32* @IORESOURCE_MEM, align 4
  %68 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 1
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 1
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %76, align 8
  %77 = load i32, i32* @IORESOURCE_IRQ, align 4
  %78 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 1
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %81 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %84 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %8, i64 0, i64 0
  %85 = call i32 @ARRAY_SIZE(%struct.resource* %84)
  %86 = call i32 @platform_device_add_resources(%struct.TYPE_7__* %82, %struct.resource* %83, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %49
  %90 = load %struct.device*, %struct.device** %10, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %141

92:                                               ; preds = %49
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %95 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %94, i32 0, i32 2
  store %struct.pci_dev* %93, %struct.pci_dev** %95, align 8
  %96 = load %struct.device*, %struct.device** %10, align 8
  %97 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %98 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store %struct.device* %96, %struct.device** %101, align 8
  %102 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %103 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.device*, %struct.device** %10, align 8
  %107 = call i32 @ACPI_COMPANION(%struct.device* %106)
  %108 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_8__* %105, i32 %107)
  %109 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %110 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.property_entry*, %struct.property_entry** %6, align 8
  %113 = call i32 @platform_device_add_properties(%struct.TYPE_7__* %111, %struct.property_entry* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %92
  br label %141

117:                                              ; preds = %92
  %118 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %119 = call i32 @dwc3_pci_quirks(%struct.dwc3_pci* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %141

123:                                              ; preds = %117
  %124 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %125 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = call i32 @platform_device_add(%struct.TYPE_7__* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.device*, %struct.device** %10, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %141

133:                                              ; preds = %123
  %134 = load %struct.device*, %struct.device** %10, align 8
  %135 = call i32 @device_init_wakeup(%struct.device* %134, i32 1)
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %138 = call i32 @pci_set_drvdata(%struct.pci_dev* %136, %struct.dwc3_pci* %137)
  %139 = load %struct.device*, %struct.device** %10, align 8
  %140 = call i32 @pm_runtime_put(%struct.device* %139)
  store i32 0, i32* %3, align 4
  br label %147

141:                                              ; preds = %130, %122, %116, %89
  %142 = load %struct.dwc3_pci*, %struct.dwc3_pci** %7, align 8
  %143 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = call i32 @platform_device_put(%struct.TYPE_7__* %144)
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %141, %133, %46, %34, %21
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.dwc3_pci* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.TYPE_7__*, %struct.resource*, i32) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @platform_device_add_properties(%struct.TYPE_7__*, %struct.property_entry*) #1

declare dso_local i32 @dwc3_pci_quirks(%struct.dwc3_pci*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.dwc3_pci*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
