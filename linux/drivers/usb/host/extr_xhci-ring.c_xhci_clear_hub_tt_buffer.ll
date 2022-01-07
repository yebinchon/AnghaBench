; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_clear_hub_tt_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_clear_hub_tt_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_td = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.xhci_virt_ep = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@EP_CLEARING_TT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_virt_ep*)* @xhci_clear_hub_tt_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_clear_hub_tt_buffer(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %struct.xhci_virt_ep* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_td*, align 8
  %6 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %5, align 8
  store %struct.xhci_virt_ep* %2, %struct.xhci_virt_ep** %6, align 8
  %7 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %8 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %76

15:                                               ; preds = %3
  %16 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %17 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_pipeint(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %76, label %23

23:                                               ; preds = %15
  %24 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %25 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %34 = call %struct.TYPE_11__* @xhci_to_hcd(%struct.xhci_hcd* %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %32, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %23
  %40 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %6, align 8
  %41 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EP_CLEARING_TT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @EP_CLEARING_TT, align 4
  %48 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %6, align 8
  %49 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %53 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %58 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %62, align 8
  %63 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %64 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = call i64 @usb_hub_clear_tt_buffer(%struct.TYPE_12__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %46
  %69 = load i32, i32* @EP_CLEARING_TT, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %6, align 8
  %72 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %46
  br label %76

76:                                               ; preds = %75, %39, %23, %15, %3
  ret void
}

declare dso_local i32 @usb_pipeint(i32) #1

declare dso_local %struct.TYPE_11__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i64 @usb_hub_clear_tt_buffer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
