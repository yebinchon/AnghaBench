; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_skip_isoc_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_skip_isoc_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_td = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_iso_packet_descriptor*, %struct.urb_priv* }
%struct.usb_iso_packet_descriptor = type { i64, i32 }
%struct.urb_priv = type { i32 }
%struct.xhci_transfer_event = type { i32 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_ring = type { i64 }

@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*)* @skip_isoc_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_isoc_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %struct.xhci_transfer_event* %2, %struct.xhci_virt_ep* %3, i32* %4) #0 {
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.xhci_td*, align 8
  %8 = alloca %struct.xhci_transfer_event*, align 8
  %9 = alloca %struct.xhci_virt_ep*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.xhci_ring*, align 8
  %12 = alloca %struct.urb_priv*, align 8
  %13 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %14 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %7, align 8
  store %struct.xhci_transfer_event* %2, %struct.xhci_transfer_event** %8, align 8
  store %struct.xhci_virt_ep* %3, %struct.xhci_virt_ep** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %9, align 8
  %16 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %8, align 8
  %17 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le64_to_cpu(i32 %18)
  %20 = call %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %15, i32 %19)
  store %struct.xhci_ring* %20, %struct.xhci_ring** %11, align 8
  %21 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %22 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.urb_priv*, %struct.urb_priv** %24, align 8
  store %struct.urb_priv* %25, %struct.urb_priv** %12, align 8
  %26 = load %struct.urb_priv*, %struct.urb_priv** %12, align 8
  %27 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %30 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %33, i64 %35
  store %struct.usb_iso_packet_descriptor* %36, %struct.usb_iso_packet_descriptor** %13, align 8
  %37 = load i32, i32* @EXDEV, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %40 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %42 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %51, %5
  %44 = load %struct.xhci_ring*, %struct.xhci_ring** %11, align 8
  %45 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %48 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %53 = load %struct.xhci_ring*, %struct.xhci_ring** %11, align 8
  %54 = call i32 @inc_deq(%struct.xhci_hcd* %52, %struct.xhci_ring* %53)
  br label %43

55:                                               ; preds = %43
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %57 = load %struct.xhci_ring*, %struct.xhci_ring** %11, align 8
  %58 = call i32 @inc_deq(%struct.xhci_hcd* %56, %struct.xhci_ring* %57)
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %60 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %61 = load %struct.xhci_ring*, %struct.xhci_ring** %11, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @xhci_td_cleanup(%struct.xhci_hcd* %59, %struct.xhci_td* %60, %struct.xhci_ring* %61, i32* %62)
  ret i32 %63
}

declare dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @inc_deq(%struct.xhci_hcd*, %struct.xhci_ring*) #1

declare dso_local i32 @xhci_td_cleanup(%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_ring*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
