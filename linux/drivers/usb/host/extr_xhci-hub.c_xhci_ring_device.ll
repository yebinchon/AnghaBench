; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_ring_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_ring_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@LAST_EP_INDEX = common dso_local global i32 0, align 4
@EP_HAS_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_ring_device(%struct.xhci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %70, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LAST_EP_INDEX, align 4
  %11 = add nsw i32 %10, 1
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %73

13:                                               ; preds = %8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %22, i64 %24
  store %struct.xhci_virt_ep* %25, %struct.xhci_virt_ep** %7, align 8
  %26 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %27 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EP_HAS_STREAMS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %36 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %33

50:                                               ; preds = %33
  br label %69

51:                                               ; preds = %13
  %52 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %53 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %58 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd* %64, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %63, %56, %51
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %8

73:                                               ; preds = %8
  ret void
}

declare dso_local i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
