; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.zd_usb = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.zd_usb }

@DEVICE_INSTALLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown USB speed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"couldn't reset usb device. Error number %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DEVICE_ZD1211B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"couldn't initialize mac. Error number %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"couldn't register device. Error number %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.zd_usb*, align 8
  %9 = alloca %struct.ieee80211_hw*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %9, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %13 = call i32 @print_id(%struct.usb_device* %12)
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DEVICE_INSTALLER, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = call i32 @eject_installer(%struct.usb_interface* %21)
  store i32 %22, i32* %3, align 4
  br label %111

23:                                               ; preds = %2
  %24 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %23, %23, %23
  br label %34

28:                                               ; preds = %23
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_dbg_f(i32* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %97

34:                                               ; preds = %27
  %35 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %36 = call i32 @usb_reset_device(%struct.usb_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %97

44:                                               ; preds = %34
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = call %struct.ieee80211_hw* @zd_mac_alloc_hw(%struct.usb_interface* %45)
  store %struct.ieee80211_hw* %46, %struct.ieee80211_hw** %9, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %48 = icmp eq %struct.ieee80211_hw* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %97

52:                                               ; preds = %44
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %54 = call %struct.TYPE_5__* @zd_hw_mac(%struct.ieee80211_hw* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.zd_usb* %56, %struct.zd_usb** %8, align 8
  %57 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DEVICE_ZD1211B, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load %struct.zd_usb*, %struct.zd_usb** %8, align 8
  %66 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %68 = call i32 @zd_mac_preinit_hw(%struct.ieee80211_hw* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %52
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_dbg_f(i32* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %97

76:                                               ; preds = %52
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %78 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %83 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %82, i32 0, i32 0
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32*, i8*, ...) @dev_dbg_f(i32* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %97

86:                                               ; preds = %76
  %87 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %88 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_dbg_f(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 0
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @wiphy_name(i32 %94)
  %96 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  store i32 0, i32* %3, align 4
  br label %111

97:                                               ; preds = %81, %71, %49, %39, %28
  %98 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %99 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %98)
  %100 = call i32 @usb_reset_device(%struct.usb_device* %99)
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %102 = icmp ne %struct.ieee80211_hw* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %105 = call %struct.TYPE_5__* @zd_hw_mac(%struct.ieee80211_hw* %104)
  %106 = call i32 @zd_mac_clear(%struct.TYPE_5__* %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %108 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %107)
  br label %109

109:                                              ; preds = %103, %97
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %86, %20
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @print_id(%struct.usb_device*) #1

declare dso_local i32 @eject_installer(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg_f(i32*, i8*, ...) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.ieee80211_hw* @zd_mac_alloc_hw(%struct.usb_interface*) #1

declare dso_local %struct.TYPE_5__* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @zd_mac_preinit_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @zd_mac_clear(%struct.TYPE_5__*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
