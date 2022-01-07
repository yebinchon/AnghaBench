; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_intr_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_intr_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }
%struct.xhci_ep_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_queue_intr_tx(%struct.xhci_hcd* %0, i32 %1, %struct.urb* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xhci_ep_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.urb* %2, %struct.urb** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %14 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %12, i32 %21, i32 %22)
  store %struct.xhci_ep_ctx* %23, %struct.xhci_ep_ctx** %11, align 8
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %25 = load %struct.urb*, %struct.urb** %8, align 8
  %26 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %11, align 8
  %27 = call i32 @check_interval(%struct.xhci_hcd* %24, %struct.urb* %25, %struct.xhci_ep_ctx* %26)
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.urb*, %struct.urb** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @xhci_queue_bulk_tx(%struct.xhci_hcd* %28, i32 %29, %struct.urb* %30, i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @check_interval(%struct.xhci_hcd*, %struct.urb*, %struct.xhci_ep_ctx*) #1

declare dso_local i32 @xhci_queue_bulk_tx(%struct.xhci_hcd*, i32, %struct.urb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
