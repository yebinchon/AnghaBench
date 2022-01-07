; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_cleanup_halted_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_cleanup_halted_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_td = type { i32 }
%struct.xhci_command = type { i32 }

@VDEV_PORT_ERROR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EP_HALTED = common dso_local global i32 0, align 4
@EP_HARD_RESET = common dso_local global i32 0, align 4
@EP_HARD_CLEAR_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, i32, i32, %struct.xhci_td*, i32)* @xhci_cleanup_halted_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_cleanup_halted_endpoint(%struct.xhci_hcd* %0, i32 %1, i32 %2, i32 %3, %struct.xhci_td* %4, i32 %5) #0 {
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xhci_td*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xhci_virt_ep*, align 8
  %14 = alloca %struct.xhci_command*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xhci_td* %4, %struct.xhci_td** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %23, i64 %25
  store %struct.xhci_virt_ep* %26, %struct.xhci_virt_ep** %13, align 8
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %28 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VDEV_PORT_ERROR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  br label %80

40:                                               ; preds = %6
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %41, i32 0, i32 %42)
  store %struct.xhci_command* %43, %struct.xhci_command** %14, align 8
  %44 = load %struct.xhci_command*, %struct.xhci_command** %14, align 8
  %45 = icmp ne %struct.xhci_command* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %80

47:                                               ; preds = %40
  %48 = load i32, i32* @EP_HALTED, align 4
  %49 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %50 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %54 = load %struct.xhci_command*, %struct.xhci_command** %14, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @xhci_queue_reset_ep(%struct.xhci_hcd* %53, %struct.xhci_command* %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @EP_HARD_RESET, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %47
  %63 = load i32, i32* @EP_HARD_CLEAR_TOGGLE, align 4
  %64 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %65 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.xhci_td*, %struct.xhci_td** %11, align 8
  %72 = call i32 @xhci_cleanup_stalled_ring(%struct.xhci_hcd* %68, i32 %69, i32 %70, %struct.xhci_td* %71)
  %73 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %74 = load %struct.xhci_td*, %struct.xhci_td** %11, align 8
  %75 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %76 = call i32 @xhci_clear_hub_tt_buffer(%struct.xhci_hcd* %73, %struct.xhci_td* %74, %struct.xhci_virt_ep* %75)
  br label %77

77:                                               ; preds = %62, %47
  %78 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %79 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %78)
  br label %80

80:                                               ; preds = %77, %46, %39
  ret void
}

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_queue_reset_ep(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32) #1

declare dso_local i32 @xhci_cleanup_stalled_ring(%struct.xhci_hcd*, i32, i32, %struct.xhci_td*) #1

declare dso_local i32 @xhci_clear_hub_tt_buffer(%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_virt_ep*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
