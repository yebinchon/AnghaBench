; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_reset_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_reset_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%union.xhci_trb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.xhci_ep_ctx = type { i32 }
%struct.xhci_command = type { i32 }

@trace_xhci_dbg_reset_ep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Ignoring reset ep completion code of %u\00", align 1
@XHCI_RESET_EP_QUIRK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Queueing configure endpoint command\00", align 1
@EP_HALTED = common dso_local global i32 0, align 4
@TRB_TSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, %union.xhci_trb*, i32)* @xhci_handle_cmd_reset_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_handle_cmd_reset_ep(%struct.xhci_hcd* %0, i32 %1, %union.xhci_trb* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.xhci_trb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_virt_device*, align 8
  %10 = alloca %struct.xhci_ep_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_command*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.xhci_trb* %2, %union.xhci_trb** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %14 = bitcast %union.xhci_trb* %13 to %struct.TYPE_6__*
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = call i32 @TRB_TO_EP_INDEX(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 1
  %23 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %23, i64 %25
  %27 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %26, align 8
  store %struct.xhci_virt_device* %27, %struct.xhci_virt_device** %9, align 8
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %29 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %9, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %28, i32 %31, i32 %32)
  store %struct.xhci_ep_ctx* %33, %struct.xhci_ep_ctx** %10, align 8
  %34 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %35 = call i32 @trace_xhci_handle_cmd_reset_ep(%struct.xhci_ep_ctx* %34)
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %37 = load i32, i32* @trace_xhci_dbg_reset_ep, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %36, i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XHCI_RESET_EP_QUIRK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %4
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %47, i32 0, i32 %48)
  store %struct.xhci_command* %49, %struct.xhci_command** %12, align 8
  %50 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %51 = icmp ne %struct.xhci_command* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %108

53:                                               ; preds = %46
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %55 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %56 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %54, i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %58 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %60 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %59, i32 0, i32 1
  %61 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %61, i64 %63
  %65 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %64, align 8
  %66 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @xhci_queue_configure_endpoint(%struct.xhci_hcd* %57, %struct.xhci_command* %58, i32 %69, i32 %70, i32 0)
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %73 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %72)
  br label %92

74:                                               ; preds = %4
  %75 = load i32, i32* @EP_HALTED, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %78 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %77, i32 0, i32 1
  %79 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %79, i64 %81
  %83 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %82, align 8
  %84 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %76
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %74, %53
  %93 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %94 = bitcast %union.xhci_trb* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = load i32, i32* @TRB_TSP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ring_doorbell_for_active_rings(%struct.xhci_hcd* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %52, %103, %92
  ret void
}

declare dso_local i32 @TRB_TO_EP_INDEX(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @trace_xhci_handle_cmd_reset_ep(%struct.xhci_ep_ctx*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, ...) #1

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_queue_configure_endpoint(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @ring_doorbell_for_active_rings(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
