; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_rh_port_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_rh_port_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { i32 }
%struct.vhci_hcd = type { i32*, %struct.vhci* }
%struct.vhci = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"rh_port_disconnect %d\0A\00", align 1
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhci_device*)* @rh_port_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rh_port_disconnect(%struct.vhci_device* %0) #0 {
  %2 = alloca %struct.vhci_device*, align 8
  %3 = alloca %struct.vhci_hcd*, align 8
  %4 = alloca %struct.vhci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %2, align 8
  %8 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %9 = call %struct.vhci_hcd* @vdev_to_vhci_hcd(%struct.vhci_device* %8)
  store %struct.vhci_hcd* %9, %struct.vhci_hcd** %3, align 8
  %10 = load %struct.vhci_hcd*, %struct.vhci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %10, i32 0, i32 1
  %12 = load %struct.vhci*, %struct.vhci** %11, align 8
  store %struct.vhci* %12, %struct.vhci** %4, align 8
  %13 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %14 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @usbip_dbg_vhci_rh(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.vhci*, %struct.vhci** %4, align 8
  %19 = getelementptr inbounds %struct.vhci, %struct.vhci* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.vhci_hcd*, %struct.vhci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.vhci_hcd*, %struct.vhci_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.vhci*, %struct.vhci** %4, align 8
  %45 = getelementptr inbounds %struct.vhci, %struct.vhci* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.vhci_hcd*, %struct.vhci_hcd** %3, align 8
  %49 = call i32 @vhci_hcd_to_hcd(%struct.vhci_hcd* %48)
  %50 = call i32 @usb_hcd_poll_rh_status(i32 %49)
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
