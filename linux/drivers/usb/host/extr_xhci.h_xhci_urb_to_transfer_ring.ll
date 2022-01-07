; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.h_xhci_urb_to_transfer_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.h_xhci_urb_to_transfer_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ring = type { i32 }
%struct.xhci_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_ring* (%struct.xhci_hcd*, %struct.urb*)* @xhci_urb_to_transfer_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.urb*, %struct.urb** %4, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @xhci_get_endpoint_index(i32* %14)
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.xhci_ring* @xhci_triad_to_transfer_ring(%struct.xhci_hcd* %5, i32 %10, i32 %15, i32 %18)
  ret %struct.xhci_ring* %19
}

declare dso_local %struct.xhci_ring* @xhci_triad_to_transfer_ring(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local i32 @xhci_get_endpoint_index(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
