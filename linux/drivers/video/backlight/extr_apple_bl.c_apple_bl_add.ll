; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_apple_bl.c_apple_bl_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_apple_bl.c_apple_bl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i32, i32, i32 (i32)* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.pci_dev = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"unable to find PCI host\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@intel_chipset_data = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@hw_data = common dso_local global %struct.TYPE_17__* null, align 8
@PCI_VENDOR_ID_NVIDIA = common dso_local global i64 0, align 8
@nvidia_chipset_data = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown hardware\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Apple backlight\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"apple_backlight\00", align 1
@apple_backlight_device = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @apple_bl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apple_bl_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 0, i32 0)
  store %struct.pci_dev* %7, %struct.pci_dev** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %110

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store %struct.TYPE_17__* @intel_chipset_data, %struct.TYPE_17__** @hw_data, align 8
  br label %29

21:                                               ; preds = %14
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_VENDOR_ID_NVIDIA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store %struct.TYPE_17__* @nvidia_chipset_data, %struct.TYPE_17__** @hw_data, align 8
  br label %28

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = call i32 @pci_dev_put(%struct.pci_dev* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %110

38:                                               ; preds = %29
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %41, align 8
  %43 = call i32 %42(%struct.TYPE_16__* null)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = call i32 %49(i32 1)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %53, align 8
  %55 = call i32 %54(%struct.TYPE_16__* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %110

60:                                               ; preds = %46
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = call i32 %63(i32 0)
  br label %65

65:                                               ; preds = %60, %38
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @request_region(i32 %68, i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %110

77:                                               ; preds = %65
  %78 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %79 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %80 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 15, i32* %81, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = call %struct.TYPE_16__* @backlight_device_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null, %struct.TYPE_14__* %83, %struct.backlight_properties* %4)
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** @apple_backlight_device, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** @apple_backlight_device, align 8
  %86 = call i64 @IS_ERR(%struct.TYPE_16__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %77
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @release_region(i32 %91, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** @apple_backlight_device, align 8
  %97 = call i32 @PTR_ERR(%struct.TYPE_16__* %96)
  store i32 %97, i32* %2, align 4
  br label %110

98:                                               ; preds = %77
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** @hw_data, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** @apple_backlight_device, align 8
  %104 = call i32 %102(%struct.TYPE_16__* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** @apple_backlight_device, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** @apple_backlight_device, align 8
  %109 = call i32 @backlight_update_status(%struct.TYPE_16__* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %98, %88, %74, %57, %34, %10
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @backlight_device_register(i8*, i32*, i32*, %struct.TYPE_14__*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
