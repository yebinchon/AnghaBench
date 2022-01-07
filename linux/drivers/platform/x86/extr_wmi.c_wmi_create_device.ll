; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.guid_block = type { i32, i32 }
%struct.wmi_block = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_device_info = type { i64, i64 }

@ACPI_WMI_EVENT = common dso_local global i32 0, align 4
@wmi_type_event = common dso_local global i32 0, align 4
@ACPI_WMI_METHOD = common dso_local global i32 0, align 4
@wmi_type_method = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"WQ\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s data block query control method not found\0A\00", align 1
@wmi_type_data = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"WS\00", align 1
@wmi_bus_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%pUL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.guid_block*, %struct.wmi_block*, %struct.acpi_device*)* @wmi_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmi_create_device(%struct.device* %0, %struct.guid_block* %1, %struct.wmi_block* %2, %struct.acpi_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.guid_block*, align 8
  %8 = alloca %struct.wmi_block*, align 8
  %9 = alloca %struct.acpi_device*, align 8
  %10 = alloca %struct.acpi_device_info*, align 8
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.guid_block* %1, %struct.guid_block** %7, align 8
  store %struct.wmi_block* %2, %struct.wmi_block** %8, align 8
  store %struct.acpi_device* %3, %struct.acpi_device** %9, align 8
  %13 = load %struct.guid_block*, %struct.guid_block** %7, align 8
  %14 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ACPI_WMI_EVENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %21 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32* @wmi_type_event, i32** %23, align 8
  br label %101

24:                                               ; preds = %4
  %25 = load %struct.guid_block*, %struct.guid_block** %7, align 8
  %26 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ACPI_WMI_METHOD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %33 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32* @wmi_type_method, i32** %35, align 8
  %36 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %37 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %36, i32 0, i32 3
  %38 = call i32 @mutex_init(i32* %37)
  br label %101

39:                                               ; preds = %24
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %41 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %43 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %44 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strncat(i8* %42, i32 %46, i32 2)
  %48 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %52 = call i32 @get_subobj_info(i32 %50, i8* %51, %struct.acpi_device_info** %10)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %39
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %58 = call i32 @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %122

60:                                               ; preds = %39
  %61 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %62 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32* @wmi_type_data, i32** %64, align 8
  %65 = load %struct.acpi_device_info*, %struct.acpi_device_info** %10, align 8
  %66 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = load %struct.acpi_device_info*, %struct.acpi_device_info** %10, align 8
  %72 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %60
  %76 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %77 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.acpi_device_info*, %struct.acpi_device_info** %10, align 8
  %80 = call i32 @kfree(%struct.acpi_device_info* %79)
  %81 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %82 = call i32 @strcpy(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %84 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %85 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strncat(i8* %83, i32 %87, i32 2)
  %89 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %93 = call i32 @get_subobj_info(i32 %91, i8* %92, %struct.acpi_device_info** null)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %78
  %97 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %98 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %78
  br label %101

101:                                              ; preds = %100, %31, %19
  %102 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %103 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i32* @wmi_bus_type, i32** %105, align 8
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %108 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store %struct.device* %106, %struct.device** %110, align 8
  %111 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %112 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load %struct.guid_block*, %struct.guid_block** %7, align 8
  %115 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_set_name(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %119 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = call i32 @device_initialize(%struct.TYPE_7__* %120)
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %101, %55
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i32, i32) #1

declare dso_local i32 @get_subobj_info(i32, i8*, %struct.acpi_device_info**) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.acpi_device_info*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
