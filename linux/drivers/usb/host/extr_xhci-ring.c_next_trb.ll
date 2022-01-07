; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_next_trb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_next_trb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32 }
%struct.xhci_segment = type { %union.xhci_trb*, %struct.xhci_segment* }
%union.xhci_trb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment**, %union.xhci_trb**)* @next_trb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_trb(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, %struct.xhci_segment** %2, %union.xhci_trb** %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_ring*, align 8
  %7 = alloca %struct.xhci_segment**, align 8
  %8 = alloca %union.xhci_trb**, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %6, align 8
  store %struct.xhci_segment** %2, %struct.xhci_segment*** %7, align 8
  store %union.xhci_trb** %3, %union.xhci_trb*** %8, align 8
  %9 = load %union.xhci_trb**, %union.xhci_trb*** %8, align 8
  %10 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %11 = call i64 @trb_is_link(%union.xhci_trb* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.xhci_segment**, %struct.xhci_segment*** %7, align 8
  %15 = load %struct.xhci_segment*, %struct.xhci_segment** %14, align 8
  %16 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %15, i32 0, i32 1
  %17 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %18 = load %struct.xhci_segment**, %struct.xhci_segment*** %7, align 8
  store %struct.xhci_segment* %17, %struct.xhci_segment** %18, align 8
  %19 = load %struct.xhci_segment**, %struct.xhci_segment*** %7, align 8
  %20 = load %struct.xhci_segment*, %struct.xhci_segment** %19, align 8
  %21 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %20, i32 0, i32 0
  %22 = load %union.xhci_trb*, %union.xhci_trb** %21, align 8
  %23 = load %union.xhci_trb**, %union.xhci_trb*** %8, align 8
  store %union.xhci_trb* %22, %union.xhci_trb** %23, align 8
  br label %28

24:                                               ; preds = %4
  %25 = load %union.xhci_trb**, %union.xhci_trb*** %8, align 8
  %26 = load %union.xhci_trb*, %union.xhci_trb** %25, align 8
  %27 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %26, i32 1
  store %union.xhci_trb* %27, %union.xhci_trb** %25, align 8
  br label %28

28:                                               ; preds = %24, %13
  ret void
}

declare dso_local i64 @trb_is_link(%union.xhci_trb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
