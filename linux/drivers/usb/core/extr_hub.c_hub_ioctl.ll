; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32, i32 }
%struct.usb_hub = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usbdevfs_hub_portinfo = type { i32, i32* }

@device_state_lock = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32, i8*)* @hub_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_ioctl(%struct.usb_interface* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_hub*, align 8
  %10 = alloca %struct.usbdevfs_hub_portinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %8, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %15 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %14)
  store %struct.usb_hub* %15, %struct.usb_hub** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %87 [
    i32 128, label %17
  ]

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.usbdevfs_hub_portinfo*
  store %struct.usbdevfs_hub_portinfo* %19, %struct.usbdevfs_hub_portinfo** %10, align 8
  %20 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %21 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %10, align 8
  %27 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %81

28:                                               ; preds = %17
  %29 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %10, align 8
  %33 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %77, %28
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %10, align 8
  %37 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  %41 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %42 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp eq %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %10, align 8
  %53 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 0, i32* %57, align 4
  br label %76

58:                                               ; preds = %40
  %59 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %60 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %10, align 8
  %71 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %58, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %34

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80, %25
  %82 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  %83 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %10, align 8
  %84 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %3
  %88 = load i32, i32* @ENOSYS, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
