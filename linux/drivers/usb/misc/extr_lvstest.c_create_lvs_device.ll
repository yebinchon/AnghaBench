; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_create_lvs_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_create_lvs_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.usb_hcd*, %struct.usb_device*)* }
%struct.lvs_rh = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"No LVS device is present\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not allocate lvs udev\0A\00", align 1
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Failed to enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_device* (%struct.usb_interface*)* @create_lvs_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_device* @create_lvs_device(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca %struct.lvs_rh*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = call %struct.lvs_rh* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.lvs_rh* %9, %struct.lvs_rh** %7, align 8
  %10 = load %struct.lvs_rh*, %struct.lvs_rh** %7, align 8
  %11 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_device* null, %struct.usb_device** %2, align 8
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %20 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %19)
  store %struct.usb_device* %20, %struct.usb_device** %5, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.usb_hcd* @bus_to_hcd(i32 %23)
  store %struct.usb_hcd* %24, %struct.usb_hcd** %6, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lvs_rh*, %struct.lvs_rh** %7, align 8
  %30 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.usb_device* @usb_alloc_dev(%struct.usb_device* %25, i32 %28, i32 %31)
  store %struct.usb_device* %32, %struct.usb_device** %4, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = icmp ne %struct.usb_device* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_device* null, %struct.usb_device** %2, align 8
  br label %76

39:                                               ; preds = %18
  %40 = load i32, i32* @USB_SPEED_SUPER, align 4
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = call i32 @cpu_to_le16(i32 512)
  %44 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %50 = call i32 @usb_set_device_state(%struct.usb_device* %48, i32 %49)
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64 (%struct.usb_hcd*, %struct.usb_device*)*, i64 (%struct.usb_hcd*, %struct.usb_device*)** %54, align 8
  %56 = icmp ne i64 (%struct.usb_hcd*, %struct.usb_device*)* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %39
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64 (%struct.usb_hcd*, %struct.usb_device*)*, i64 (%struct.usb_hcd*, %struct.usb_device*)** %61, align 8
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %64 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %65 = call i64 %62(%struct.usb_hcd* %63, %struct.usb_device* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %69 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %72 = call i32 @usb_put_dev(%struct.usb_device* %71)
  store %struct.usb_device* null, %struct.usb_device** %2, align 8
  br label %76

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  store %struct.usb_device* %75, %struct.usb_device** %2, align 8
  br label %76

76:                                               ; preds = %74, %67, %35, %14
  %77 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  ret %struct.usb_device* %77
}

declare dso_local %struct.lvs_rh* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.usb_device* @usb_alloc_dev(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
