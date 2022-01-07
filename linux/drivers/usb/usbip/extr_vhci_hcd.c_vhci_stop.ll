; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.vhci_hcd = type { %struct.vhci_device* }
%struct.vhci_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"stop VHCI controller\0A\00", align 1
@vhci_attr_group = common dso_local global i32 0, align 4
@VHCI_HC_PORTS = common dso_local global i32 0, align 4
@VDEV_EVENT_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @vhci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.vhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhci_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = call %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd* %7)
  store %struct.vhci_hcd* %8, %struct.vhci_hcd** %3, align 8
  %9 = call i32 @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %11 = call i32 @hcd_name(%struct.usb_hcd* %10)
  %12 = call i32 @hcd_name_to_id(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %17 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %21 = call %struct.TYPE_2__* @hcd_dev(%struct.usb_hcd* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @sysfs_remove_group(i32* %22, i32* @vhci_attr_group)
  %24 = call i32 (...) @vhci_finish_attr_group()
  br label %25

25:                                               ; preds = %19, %15, %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VHCI_HC_PORTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.vhci_hcd*, %struct.vhci_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %31, i32 0, i32 0
  %33 = load %struct.vhci_device*, %struct.vhci_device** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %33, i64 %35
  store %struct.vhci_device* %36, %struct.vhci_device** %6, align 8
  %37 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %38 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %37, i32 0, i32 0
  %39 = load i32, i32* @VDEV_EVENT_REMOVED, align 4
  %40 = call i32 @usbip_event_add(i32* %38, i32 %39)
  %41 = load %struct.vhci_device*, %struct.vhci_device** %6, align 8
  %42 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %41, i32 0, i32 0
  %43 = call i32 @usbip_stop_eh(i32* %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %26

47:                                               ; preds = %26
  ret void
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*) #1

declare dso_local i32 @hcd_name_to_id(i32) #1

declare dso_local i32 @hcd_name(%struct.usb_hcd*) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @hcd_dev(%struct.usb_hcd*) #1

declare dso_local i32 @vhci_finish_attr_group(...) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @usbip_stop_eh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
