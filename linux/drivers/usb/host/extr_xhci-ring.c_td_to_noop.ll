; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_td_to_noop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_td_to_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32 }
%struct.xhci_td = type { %union.xhci_trb*, %union.xhci_trb*, %struct.xhci_segment* }
%union.xhci_trb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.xhci_segment = type { i32 }

@TRB_TR_NOOP = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_td*, i32)* @td_to_noop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td_to_noop(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, %struct.xhci_td* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_ring*, align 8
  %7 = alloca %struct.xhci_td*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_segment*, align 8
  %10 = alloca %union.xhci_trb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %6, align 8
  store %struct.xhci_td* %2, %struct.xhci_td** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %12 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %11, i32 0, i32 2
  %13 = load %struct.xhci_segment*, %struct.xhci_segment** %12, align 8
  store %struct.xhci_segment* %13, %struct.xhci_segment** %9, align 8
  %14 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %15 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %14, i32 0, i32 1
  %16 = load %union.xhci_trb*, %union.xhci_trb** %15, align 8
  store %union.xhci_trb* %16, %union.xhci_trb** %10, align 8
  br label %17

17:                                               ; preds = %4, %52
  %18 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %19 = load i32, i32* @TRB_TR_NOOP, align 4
  %20 = call i32 @trb_to_noop(%union.xhci_trb* %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %25 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %26 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %25, i32 0, i32 1
  %27 = load %union.xhci_trb*, %union.xhci_trb** %26, align 8
  %28 = icmp ne %union.xhci_trb* %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %31 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %32 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %31, i32 0, i32 0
  %33 = load %union.xhci_trb*, %union.xhci_trb** %32, align 8
  %34 = icmp ne %union.xhci_trb* %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32, i32* @TRB_CYCLE, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %39 = bitcast %union.xhci_trb* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, %37
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %35, %29, %23, %17
  %46 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %47 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %48 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %47, i32 0, i32 0
  %49 = load %union.xhci_trb*, %union.xhci_trb** %48, align 8
  %50 = icmp eq %union.xhci_trb* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %56

52:                                               ; preds = %45
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %54 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %55 = call i32 @next_trb(%struct.xhci_hcd* %53, %struct.xhci_ring* %54, %struct.xhci_segment** %9, %union.xhci_trb** %10)
  br label %17

56:                                               ; preds = %51
  ret void
}

declare dso_local i32 @trb_to_noop(%union.xhci_trb*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @next_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment**, %union.xhci_trb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
