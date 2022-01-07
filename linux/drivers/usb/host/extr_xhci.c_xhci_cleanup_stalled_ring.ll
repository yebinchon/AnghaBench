; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_cleanup_stalled_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_cleanup_stalled_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_td = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.xhci_dequeue_state = type { i32, i32 }

@trace_xhci_dbg_reset_ep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cleaning up stalled endpoint ring\00", align 1
@XHCI_RESET_EP_QUIRK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Queueing new dequeue state\00", align 1
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Setting up input context for configure endpoint command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_cleanup_stalled_ring(%struct.xhci_hcd* %0, i32 %1, i32 %2, %struct.xhci_td* %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_td*, align 8
  %9 = alloca %struct.xhci_dequeue_state, align 4
  %10 = alloca %struct.usb_device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.xhci_td* %3, %struct.xhci_td** %8, align 8
  %11 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %12 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %17 = load i32, i32* @trace_xhci_dbg_reset_ep, align 4
  %18 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %16, i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %26 = call i32 @xhci_find_new_dequeue_state(%struct.xhci_hcd* %19, i32 %22, i32 %23, i32 %24, %struct.xhci_td* %25, %struct.xhci_dequeue_state* %9)
  %27 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %4
  br label %62

35:                                               ; preds = %30
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XHCI_RESET_EP_QUIRK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %44 = load i32, i32* @trace_xhci_dbg_reset_ep, align 4
  %45 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @xhci_queue_new_dequeue_state(%struct.xhci_hcd* %46, i32 %49, i32 %50, %struct.xhci_dequeue_state* %9)
  br label %62

52:                                               ; preds = %35
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %54 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %55 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %53, i32 %54, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @xhci_setup_input_ctx_for_quirk(%struct.xhci_hcd* %56, i32 %59, i32 %60, %struct.xhci_dequeue_state* %9)
  br label %62

62:                                               ; preds = %34, %52, %42
  ret void
}

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

declare dso_local i32 @xhci_find_new_dequeue_state(%struct.xhci_hcd*, i32, i32, i32, %struct.xhci_td*, %struct.xhci_dequeue_state*) #1

declare dso_local i32 @xhci_queue_new_dequeue_state(%struct.xhci_hcd*, i32, i32, %struct.xhci_dequeue_state*) #1

declare dso_local i32 @xhci_setup_input_ctx_for_quirk(%struct.xhci_hcd*, i32, i32, %struct.xhci_dequeue_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
