; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_sum_trb_lengths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_sum_trb_lengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { %struct.xhci_segment*, %union.xhci_trb* }
%struct.xhci_segment = type { i32 }
%union.xhci_trb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_ring*, %union.xhci_trb*)* @sum_trb_lengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sum_trb_lengths(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, %union.xhci_trb* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_ring*, align 8
  %6 = alloca %union.xhci_trb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.xhci_trb*, align 8
  %9 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %5, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %6, align 8
  %10 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %11 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %10, i32 0, i32 1
  %12 = load %union.xhci_trb*, %union.xhci_trb** %11, align 8
  store %union.xhci_trb* %12, %union.xhci_trb** %8, align 8
  %13 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %14 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %13, i32 0, i32 0
  %15 = load %struct.xhci_segment*, %struct.xhci_segment** %14, align 8
  store %struct.xhci_segment* %15, %struct.xhci_segment** %9, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %40, %3
  %17 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %18 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %19 = icmp ne %union.xhci_trb* %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %22 = call i32 @trb_is_noop(%union.xhci_trb* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %26 = call i32 @trb_is_link(%union.xhci_trb* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %30 = bitcast %union.xhci_trb* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @TRB_LEN(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %28, %24, %20
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %43 = call i32 @next_trb(%struct.xhci_hcd* %41, %struct.xhci_ring* %42, %struct.xhci_segment** %9, %union.xhci_trb** %8)
  br label %16

44:                                               ; preds = %16
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @trb_is_noop(%union.xhci_trb*) #1

declare dso_local i32 @trb_is_link(%union.xhci_trb*) #1

declare dso_local i32 @TRB_LEN(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @next_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment**, %union.xhci_trb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
