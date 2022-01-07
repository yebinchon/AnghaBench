; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_rh_port_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_rh_port_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { i32 }
%struct.vhci_hcd = type { i32*, %struct.vhci* }
%struct.vhci = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"rh_port_connect %d\0A\00", align 1
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rh_port_connect(%struct.vhci_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vhci_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhci_hcd*, align 8
  %6 = alloca %struct.vhci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %11 = call %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device* %10)
  store %struct.vhci_hcd* %11, %struct.vhci_hcd** %5, align 8
  %12 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %13 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %12, i32 0, i32 1
  %14 = load %struct.vhci*, %struct.vhci** %13, align 8
  store %struct.vhci* %14, %struct.vhci** %6, align 8
  %15 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %16 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @usbip_dbg_vhci_rh(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.vhci*, %struct.vhci** %6, align 8
  %21 = getelementptr inbounds %struct.vhci, %struct.vhci* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %25 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %32 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %46 [
    i32 129, label %38
    i32 128, label %42
  ]

38:                                               ; preds = %2
  %39 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %2
  %43 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %42, %38
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %50 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.vhci*, %struct.vhci** %6, align 8
  %56 = getelementptr inbounds %struct.vhci, %struct.vhci* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %60 = call i32 @vhci_hcd_to_hcd(%struct.vhci_hcd* %59)
  %61 = call i32 @usb_hcd_poll_rh_status(i32 %60)
  ret void
}

declare dso_local %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device*) #1

declare dso_local i32 @usbip_dbg_vhci_rh(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_poll_rh_status(i32) #1

declare dso_local i32 @vhci_hcd_to_hcd(%struct.vhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
