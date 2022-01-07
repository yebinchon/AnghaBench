; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.phy_dev = type { i32, %struct.usb_interface*, %struct.usb_device*, i32, i32, i32, i32, i8* }
%struct.usb_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.lte_udev = type { i32, %struct.usb_interface*, %struct.usb_device*, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [31 x i8] c"net vid = 0x%04x pid = 0x%04x\0A\00", align 1
@NETWORK_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"not a network device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gdm_usb_hci_send = common dso_local global i32 0, align 4
@gdm_usb_sdu_send = common dso_local global i32 0, align 4
@gdm_usb_recv = common dso_local global i32 0, align 4
@gdm_usb_get_endian = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"init_usb func failed\0A\00", align 1
@AUTO_SUSPEND_TIMER = common dso_local global i32 0, align 4
@PID_GDM7243 = common dso_local global i64 0, align 8
@ENDIANNESS_BIG = common dso_local global i32 0, align 4
@ENDIANNESS_LITTLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"request Mac address failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @gdm_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy_dev*, align 8
  %8 = alloca %struct.lte_udev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.phy_dev* null, %struct.phy_dev** %7, align 8
  store %struct.lte_udev* null, %struct.lte_udev** %8, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %12, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @__le16_to_cpu(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @__le16_to_cpu(i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @NETWORK_INTERFACE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %142

41:                                               ; preds = %2
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.phy_dev* @kzalloc(i32 48, i32 %42)
  store %struct.phy_dev* %43, %struct.phy_dev** %7, align 8
  %44 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %45 = icmp ne %struct.phy_dev* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %142

49:                                               ; preds = %41
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.phy_dev* @kzalloc(i32 48, i32 %50)
  %52 = bitcast %struct.phy_dev* %51 to %struct.lte_udev*
  store %struct.lte_udev* %52, %struct.lte_udev** %8, align 8
  %53 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %54 = icmp ne %struct.lte_udev* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %138

58:                                               ; preds = %49
  %59 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %60 = bitcast %struct.lte_udev* %59 to i8*
  %61 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %62 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @gdm_usb_hci_send, align 4
  %64 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %65 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @gdm_usb_sdu_send, align 4
  %67 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %68 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @gdm_usb_recv, align 4
  %70 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %71 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @gdm_usb_get_endian, align 4
  %73 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %74 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %76 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %77 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %76, i32 0, i32 2
  store %struct.usb_device* %75, %struct.usb_device** %77, align 8
  %78 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %79 = bitcast %struct.lte_udev* %78 to %struct.phy_dev*
  %80 = call i32 @init_usb(%struct.phy_dev* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %58
  %84 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %85 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %134

88:                                               ; preds = %58
  %89 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %90 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %91 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %90, i32 0, i32 1
  store %struct.usb_interface* %89, %struct.usb_interface** %91, align 8
  %92 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %93 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %95 = call i32 @usb_enable_autosuspend(%struct.usb_device* %94)
  %96 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %97 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %96, i32 0, i32 0
  %98 = load i32, i32* @AUTO_SUSPEND_TIMER, align 4
  %99 = call i32 @pm_runtime_set_autosuspend_delay(i32* %97, i32 %98)
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @PID_GDM7243, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load i32, i32* @ENDIANNESS_BIG, align 4
  %105 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %106 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %111

107:                                              ; preds = %88
  %108 = load i32, i32* @ENDIANNESS_LITTLE, align 4
  %109 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %110 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %113 = bitcast %struct.lte_udev* %112 to %struct.phy_dev*
  %114 = call i32 @request_mac_address(%struct.phy_dev* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %119 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %130

122:                                              ; preds = %111
  %123 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %124 = call i32 @start_rx_proc(%struct.phy_dev* %123)
  %125 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %126 = call i32 @usb_get_dev(%struct.usb_device* %125)
  %127 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %128 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %129 = call i32 @usb_set_intfdata(%struct.usb_interface* %127, %struct.phy_dev* %128)
  store i32 0, i32* %3, align 4
  br label %142

130:                                              ; preds = %117
  %131 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %132 = bitcast %struct.lte_udev* %131 to %struct.phy_dev*
  %133 = call i32 @release_usb(%struct.phy_dev* %132)
  br label %134

134:                                              ; preds = %130, %83
  %135 = load %struct.lte_udev*, %struct.lte_udev** %8, align 8
  %136 = bitcast %struct.lte_udev* %135 to %struct.phy_dev*
  %137 = call i32 @kfree(%struct.phy_dev* %136)
  br label %138

138:                                              ; preds = %134, %55
  %139 = load %struct.phy_dev*, %struct.phy_dev** %7, align 8
  %140 = call i32 @kfree(%struct.phy_dev* %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %122, %46, %37
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.phy_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @init_usb(%struct.phy_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usb_enable_autosuspend(%struct.usb_device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @request_mac_address(%struct.phy_dev*) #1

declare dso_local i32 @start_rx_proc(%struct.phy_dev*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.phy_dev*) #1

declare dso_local i32 @release_usb(%struct.phy_dev*) #1

declare dso_local i32 @kfree(%struct.phy_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
