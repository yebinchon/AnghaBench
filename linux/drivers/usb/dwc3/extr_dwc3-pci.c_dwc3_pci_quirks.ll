; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-pci.c_dwc3_pci_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-pci.c_dwc3_pci_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_pci = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32 }
%struct.gpio_desc = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_BXT = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_BXT_M = common dso_local global i64 0, align 8
@PCI_INTEL_BXT_DSM_GUID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_BYT = common dso_local global i64 0, align 8
@acpi_dwc3_byt_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to add mapping table\0A\00", align 1
@platform_bytcr_gpios = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_pci*)* @dwc3_pci_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_pci_quirks(%struct.dwc3_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_pci*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc3_pci* %0, %struct.dwc3_pci** %3, align 8
  %7 = load %struct.dwc3_pci*, %struct.dwc3_pci** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %96

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_DEVICE_ID_INTEL_BXT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_DEVICE_ID_INTEL_BXT_M, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %15
  %28 = load i32, i32* @PCI_INTEL_BXT_DSM_GUID, align 4
  %29 = load %struct.dwc3_pci*, %struct.dwc3_pci** %3, align 8
  %30 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %29, i32 0, i32 1
  %31 = call i32 @guid_parse(i32 %28, i32* %30)
  %32 = load %struct.dwc3_pci*, %struct.dwc3_pci** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI_DEVICE_ID_INTEL_BYT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %34
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @dwc3_byt_enable_ulpi_refclock(%struct.pci_dev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %97

47:                                               ; preds = %40
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 2
  %50 = load i32, i32* @acpi_dwc3_byt_gpios, align 4
  %51 = call i32 @devm_acpi_dev_add_driver_gpios(i32* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 2
  %57 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %47
  %59 = call i32 @gpiod_add_lookup_table(i32* @platform_bytcr_gpios)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 2
  %62 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %63 = call %struct.gpio_desc* @gpiod_get_optional(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store %struct.gpio_desc* %63, %struct.gpio_desc** %5, align 8
  %64 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %65 = call i64 @IS_ERR(%struct.gpio_desc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %69 = call i32 @PTR_ERR(%struct.gpio_desc* %68)
  store i32 %69, i32* %2, align 4
  br label %97

70:                                               ; preds = %58
  %71 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %72 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %71, i32 1)
  %73 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %74 = call i32 @gpiod_put(%struct.gpio_desc* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 2
  %77 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %78 = call %struct.gpio_desc* @gpiod_get_optional(i32* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  store %struct.gpio_desc* %78, %struct.gpio_desc** %5, align 8
  %79 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %80 = call i64 @IS_ERR(%struct.gpio_desc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %84 = call i32 @PTR_ERR(%struct.gpio_desc* %83)
  store i32 %84, i32* %2, align 4
  br label %97

85:                                               ; preds = %70
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %87 = icmp ne %struct.gpio_desc* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %90 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %89, i32 1)
  %91 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %92 = call i32 @gpiod_put(%struct.gpio_desc* %91)
  %93 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %94

94:                                               ; preds = %88, %85
  br label %95

95:                                               ; preds = %94, %34
  br label %96

96:                                               ; preds = %95, %1
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %82, %67, %45
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @guid_parse(i32, i32*) #1

declare dso_local i32 @dwc3_byt_enable_ulpi_refclock(%struct.pci_dev*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @gpiod_add_lookup_table(i32*) #1

declare dso_local %struct.gpio_desc* @gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpiod_put(%struct.gpio_desc*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
