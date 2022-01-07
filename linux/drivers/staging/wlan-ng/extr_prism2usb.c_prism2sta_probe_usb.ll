; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2usb.c_prism2sta_probe_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2usb.c_prism2sta_probe_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.wlandevice = type { i32, i32, %struct.wlandevice*, %struct.wlandevice* }
%struct.hfa384x = type { i32, i32, %struct.hfa384x*, %struct.hfa384x* }

@.str = private unnamed_addr constant [28 x i8] c"Memory allocation failure.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"wlan_setup() failed.\0A\00", align 1
@prism2_doreset = common dso_local global i64 0, align 8
@prism2_reset_holdtime = common dso_local global i32 0, align 4
@prism2_reset_settletime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"hfa384x_corereset() failed.\0A\00", align 1
@WLAN_MSD_HWPRESENT = common dso_local global i32 0, align 4
@P80211ENUM_ifstate_enable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"register_wlandev() failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @prism2sta_probe_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2sta_probe_usb(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.wlandevice*, align 8
  %7 = alloca %struct.hfa384x*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  store %struct.wlandevice* null, %struct.wlandevice** %6, align 8
  store %struct.hfa384x* null, %struct.hfa384x** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %5, align 8
  %11 = call %struct.wlandevice* (...) @create_wlan()
  store %struct.wlandevice* %11, %struct.wlandevice** %6, align 8
  %12 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %13 = icmp ne %struct.wlandevice* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %22 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %21, i32 0, i32 3
  %23 = load %struct.wlandevice*, %struct.wlandevice** %22, align 8
  %24 = bitcast %struct.wlandevice* %23 to %struct.hfa384x*
  store %struct.hfa384x* %24, %struct.hfa384x** %7, align 8
  %25 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 0
  %28 = call i64 @wlan_setup(%struct.wlandevice* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %96

36:                                               ; preds = %20
  %37 = load %struct.hfa384x*, %struct.hfa384x** %7, align 8
  %38 = bitcast %struct.hfa384x* %37 to %struct.wlandevice*
  %39 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %40 = call i32 @hfa384x_create(%struct.wlandevice* %38, %struct.usb_device* %39)
  %41 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %42 = bitcast %struct.wlandevice* %41 to %struct.hfa384x*
  %43 = load %struct.hfa384x*, %struct.hfa384x** %7, align 8
  %44 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %43, i32 0, i32 2
  store %struct.hfa384x* %42, %struct.hfa384x** %44, align 8
  %45 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %46 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 0
  %50 = call i32 @SET_NETDEV_DEV(i32 %47, i32* %49)
  %51 = load i64, i64* @prism2_doreset, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %36
  %54 = load %struct.hfa384x*, %struct.hfa384x** %7, align 8
  %55 = bitcast %struct.hfa384x* %54 to %struct.wlandevice*
  %56 = load i32, i32* @prism2_reset_holdtime, align 4
  %57 = load i32, i32* @prism2_reset_settletime, align 4
  %58 = call i32 @hfa384x_corereset(%struct.wlandevice* %55, i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %93

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %70 = call i32 @usb_get_dev(%struct.usb_device* %69)
  %71 = load i32, i32* @WLAN_MSD_HWPRESENT, align 4
  %72 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %73 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %75 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %76 = call i32 @prism2_fwtry(%struct.usb_device* %74, %struct.wlandevice* %75)
  %77 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %78 = load i32, i32* @P80211ENUM_ifstate_enable, align 4
  %79 = call i32 @prism2sta_ifstate(%struct.wlandevice* %77, i32 %78)
  %80 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %81 = call i64 @register_wlandev(%struct.wlandevice* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %68
  %84 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %85 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %90

89:                                               ; preds = %68
  br label %102

90:                                               ; preds = %83
  %91 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %92 = call i32 @usb_put_dev(%struct.usb_device* %91)
  br label %93

93:                                               ; preds = %90, %61
  %94 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %95 = call i32 @wlan_unsetup(%struct.wlandevice* %94)
  br label %96

96:                                               ; preds = %93, %30, %14
  %97 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %98 = call i32 @kfree(%struct.wlandevice* %97)
  %99 = load %struct.hfa384x*, %struct.hfa384x** %7, align 8
  %100 = bitcast %struct.hfa384x* %99 to %struct.wlandevice*
  %101 = call i32 @kfree(%struct.wlandevice* %100)
  store %struct.wlandevice* null, %struct.wlandevice** %6, align 8
  br label %102

102:                                              ; preds = %96, %89
  %103 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %104 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %105 = call i32 @usb_set_intfdata(%struct.usb_interface* %103, %struct.wlandevice* %104)
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.wlandevice* @create_wlan(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @wlan_setup(%struct.wlandevice*, i32*) #1

declare dso_local i32 @hfa384x_create(%struct.wlandevice*, %struct.usb_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(i32, i32*) #1

declare dso_local i32 @hfa384x_corereset(%struct.wlandevice*, i32, i32, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @prism2_fwtry(%struct.usb_device*, %struct.wlandevice*) #1

declare dso_local i32 @prism2sta_ifstate(%struct.wlandevice*, i32) #1

declare dso_local i64 @register_wlandev(%struct.wlandevice*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @wlan_unsetup(%struct.wlandevice*) #1

declare dso_local i32 @kfree(%struct.wlandevice*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.wlandevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
