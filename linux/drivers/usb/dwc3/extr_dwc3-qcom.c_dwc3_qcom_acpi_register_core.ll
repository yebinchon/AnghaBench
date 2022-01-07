; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_acpi_register_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_acpi_register_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32, i32, i32 }
%struct.dwc3_qcom = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.device* }
%struct.TYPE_8__ = type { i32 }
%struct.resource = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get memory resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@dwc3_qcom_acpi_properties = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to add properties\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to add device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_qcom_acpi_register_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_acpi_register_core(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dwc3_qcom*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.dwc3_qcom* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.dwc3_qcom* %11, %struct.dwc3_qcom** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  store %struct.resource* null, %struct.resource** %7, align 8
  %14 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %15 = call %struct.TYPE_9__* @platform_device_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %17 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %16, i32 0, i32 0
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %17, align 8
  %18 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %19 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %161

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %28 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  store %struct.device* %26, %struct.device** %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %36 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i32 %34, i32* %39, align 4
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %44 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 %42, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %52 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %50, i32* %55, align 4
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %60 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.resource* @kcalloc(i32 2, i32 12, i32 %64)
  store %struct.resource* %65, %struct.resource** %7, align 8
  %66 = load %struct.resource*, %struct.resource** %7, align 8
  %67 = icmp ne %struct.resource* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %25
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %161

71:                                               ; preds = %25
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 0)
  store %struct.resource* %74, %struct.resource** %6, align 8
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = icmp ne %struct.resource* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %157

83:                                               ; preds = %71
  %84 = load %struct.resource*, %struct.resource** %6, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.resource*, %struct.resource** %7, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i64 0
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load %struct.resource*, %struct.resource** %6, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.resource*, %struct.resource** %7, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i64 0
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.resource*, %struct.resource** %7, align 8
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i64 0
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %101 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %99, %104
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i64 0
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = call i32 @platform_get_irq(%struct.platform_device* %109, i32 0)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @IORESOURCE_IRQ, align 4
  %112 = load %struct.resource*, %struct.resource** %7, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i64 1
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.resource*, %struct.resource** %7, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i64 1
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.resource*, %struct.resource** %7, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i64 1
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 0
  store i32 %115, i32* %121, align 4
  %122 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %123 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load %struct.resource*, %struct.resource** %7, align 8
  %126 = call i32 @platform_device_add_resources(%struct.TYPE_9__* %124, %struct.resource* %125, i32 2)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %83
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %157

133:                                              ; preds = %83
  %134 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %135 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* @dwc3_qcom_acpi_properties, align 4
  %138 = call i32 @platform_device_add_properties(%struct.TYPE_9__* %136, i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %157

145:                                              ; preds = %133
  %146 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %147 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = call i32 @platform_device_add(%struct.TYPE_9__* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %156

156:                                              ; preds = %152, %145
  br label %157

157:                                              ; preds = %156, %141, %129, %77
  %158 = load %struct.resource*, %struct.resource** %7, align 8
  %159 = call i32 @kfree(%struct.resource* %158)
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %68, %22
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.dwc3_qcom* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.TYPE_9__* @platform_device_alloc(i8*, i32) #1

declare dso_local %struct.resource* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.TYPE_9__*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add_properties(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
