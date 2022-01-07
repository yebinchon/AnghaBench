; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_giveback_urb_in_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_giveback_urb_in_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32 }
%struct.xhci_td = type { %struct.urb* }
%struct.urb = type { i32, %struct.TYPE_4__*, %struct.urb_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.urb_priv = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PIPE_ISOCHRONOUS = common dso_local global i64 0, align 8
@XHCI_AMD_PLL_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_td*, i32)* @xhci_giveback_urb_in_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_giveback_urb_in_irq(%struct.xhci_hcd* %0, %struct.xhci_td* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.urb_priv*, align 8
  %9 = alloca %struct.usb_hcd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %11 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %10, i32 0, i32 0
  %12 = load %struct.urb*, %struct.urb** %11, align 8
  store %struct.urb* %12, %struct.urb** %7, align 8
  %13 = load %struct.urb*, %struct.urb** %7, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 2
  %15 = load %struct.urb_priv*, %struct.urb_priv** %14, align 8
  store %struct.urb_priv* %15, %struct.urb_priv** %8, align 8
  %16 = load %struct.urb*, %struct.urb** %7, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.usb_hcd* @bus_to_hcd(i32 %20)
  store %struct.usb_hcd* %21, %struct.usb_hcd** %9, align 8
  %22 = load %struct.urb*, %struct.urb** %7, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @usb_pipetype(i32 %24)
  %26 = load i64, i64* @PIPE_ISOCHRONOUS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %3
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %30 = call %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %36 = call %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %28
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @XHCI_AMD_PLL_FIX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 (...) @usb_amd_quirk_pll_enable()
  br label %50

50:                                               ; preds = %48, %41
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.urb_priv*, %struct.urb_priv** %8, align 8
  %54 = call i32 @xhci_urb_free_priv(%struct.urb_priv* %53)
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %56 = load %struct.urb*, %struct.urb** %7, align 8
  %57 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %55, %struct.urb* %56)
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %59 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.urb*, %struct.urb** %7, align 8
  %62 = call i32 @trace_xhci_urb_giveback(%struct.urb* %61)
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %64 = load %struct.urb*, %struct.urb** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %63, %struct.urb* %64, i32 %65)
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %68 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %67, i32 0, i32 1
  %69 = call i32 @spin_lock(i32* %68)
  ret void
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @usb_amd_quirk_pll_enable(...) #1

declare dso_local i32 @xhci_urb_free_priv(%struct.urb_priv*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_xhci_urb_giveback(%struct.urb*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
