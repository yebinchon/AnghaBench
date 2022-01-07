; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_ring_doorbell_for_active_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_ring_doorbell_for_active_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.xhci_stream_info*, %struct.TYPE_5__* }
%struct.xhci_stream_info = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, i32)* @ring_doorbell_for_active_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_doorbell_for_active_rings(%struct.xhci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_virt_ep*, align 8
  %9 = alloca %struct.xhci_stream_info*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %18, i64 %20
  store %struct.xhci_virt_ep* %21, %struct.xhci_virt_ep** %8, align 8
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %23 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EP_HAS_STREAMS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %3
  %29 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %35 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @list_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd* %41, i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %33, %28
  br label %79

46:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %50 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %49, i32 0, i32 1
  %51 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %50, align 8
  %52 = getelementptr inbounds %struct.xhci_stream_info, %struct.xhci_stream_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %48, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %47
  %56 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %57 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %56, i32 0, i32 1
  %58 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %57, align 8
  store %struct.xhci_stream_info* %58, %struct.xhci_stream_info** %9, align 8
  %59 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %9, align 8
  %60 = getelementptr inbounds %struct.xhci_stream_info, %struct.xhci_stream_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @list_empty(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %55
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd* %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %47

79:                                               ; preds = %45, %47
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
