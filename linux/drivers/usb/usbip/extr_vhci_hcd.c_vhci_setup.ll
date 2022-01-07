; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vhci = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.vhci* }
%struct.TYPE_5__ = type { %struct.vhci* }

@HCD_USB2 = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@HCD_USB3 = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @vhci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.vhci*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @dev_get_platdata(i32 %7)
  %9 = inttoptr i64 %8 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.vhci*
  store %struct.vhci* %11, %struct.vhci** %3, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %13 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %17 = call i8* @hcd_to_vhci_hcd(%struct.usb_hcd* %16)
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  %19 = load %struct.vhci*, %struct.vhci** %3, align 8
  %20 = getelementptr inbounds %struct.vhci, %struct.vhci* %19, i32 0, i32 1
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %20, align 8
  %21 = load %struct.vhci*, %struct.vhci** %3, align 8
  %22 = load %struct.vhci*, %struct.vhci** %3, align 8
  %23 = getelementptr inbounds %struct.vhci, %struct.vhci* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.vhci* %21, %struct.vhci** %25, align 8
  %26 = load i32, i32* @HCD_USB2, align 4
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @USB_SPEED_HIGH, align 4
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  br label %55

35:                                               ; preds = %1
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %37 = call i8* @hcd_to_vhci_hcd(%struct.usb_hcd* %36)
  %38 = bitcast i8* %37 to %struct.TYPE_6__*
  %39 = load %struct.vhci*, %struct.vhci** %3, align 8
  %40 = getelementptr inbounds %struct.vhci, %struct.vhci* %39, i32 0, i32 0
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.vhci*, %struct.vhci** %3, align 8
  %42 = load %struct.vhci*, %struct.vhci** %3, align 8
  %43 = getelementptr inbounds %struct.vhci, %struct.vhci* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.vhci* %41, %struct.vhci** %45, align 8
  %46 = load i32, i32* @HCD_USB3, align 4
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @USB_SPEED_SUPER, align 4
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %35, %15
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 32, i32* %58, align 8
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %60 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  ret i32 0
}

declare dso_local i64 @dev_get_platdata(i32) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i8* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
