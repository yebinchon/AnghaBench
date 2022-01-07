; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_finish_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_finish_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.xhci_td = type { i64 }
%struct.xhci_transfer_event = type { i32, i32, i32 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_ep_ctx = type { i32 }
%struct.xhci_ring = type { i64, i32 }

@COMP_STOPPED_LENGTH_INVALID = common dso_local global i64 0, align 8
@COMP_STOPPED = common dso_local global i64 0, align 8
@COMP_STOPPED_SHORT_PACKET = common dso_local global i64 0, align 8
@COMP_STALL_ERROR = common dso_local global i64 0, align 8
@EP_HARD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*)* @finish_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %struct.xhci_transfer_event* %2, %struct.xhci_virt_ep* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_td*, align 8
  %9 = alloca %struct.xhci_transfer_event*, align 8
  %10 = alloca %struct.xhci_virt_ep*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.xhci_virt_device*, align 8
  %13 = alloca %struct.xhci_ep_ctx*, align 8
  %14 = alloca %struct.xhci_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %8, align 8
  store %struct.xhci_transfer_event* %2, %struct.xhci_transfer_event** %9, align 8
  store %struct.xhci_virt_ep* %3, %struct.xhci_virt_ep** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %9, align 8
  %19 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = call i32 @TRB_TO_SLOT_ID(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %23, i32 0, i32 0
  %25 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %24, align 8
  %26 = load i32, i32* %15, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %25, i64 %27
  %29 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %28, align 8
  store %struct.xhci_virt_device* %29, %struct.xhci_virt_device** %12, align 8
  %30 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %9, align 8
  %31 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = call i32 @TRB_TO_EP_ID(i32 %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %17, align 4
  %36 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %37 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %9, align 8
  %38 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le64_to_cpu(i32 %39)
  %41 = call %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %36, i32 %40)
  store %struct.xhci_ring* %41, %struct.xhci_ring** %14, align 8
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %43 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %12, align 8
  %44 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %42, i32 %45, i32 %46)
  store %struct.xhci_ep_ctx* %47, %struct.xhci_ep_ctx** %13, align 8
  %48 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %9, align 8
  %49 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = call i64 @GET_COMP_CODE(i32 %51)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* @COMP_STOPPED_LENGTH_INVALID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %5
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* @COMP_STOPPED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* @COMP_STOPPED_SHORT_PACKET, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56, %5
  store i32 0, i32* %6, align 4
  br label %108

65:                                               ; preds = %60
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @COMP_STALL_ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %71 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %13, align 8
  %72 = load i64, i64* %16, align 8
  %73 = call i64 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd* %70, %struct.xhci_ep_ctx* %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %69, %65
  %76 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.xhci_ring*, %struct.xhci_ring** %14, align 8
  %80 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %83 = load i32, i32* @EP_HARD_RESET, align 4
  %84 = call i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd* %76, i32 %77, i32 %78, i32 %81, %struct.xhci_td* %82, i32 %83)
  br label %102

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %94, %85
  %87 = load %struct.xhci_ring*, %struct.xhci_ring** %14, align 8
  %88 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %91 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %96 = load %struct.xhci_ring*, %struct.xhci_ring** %14, align 8
  %97 = call i32 @inc_deq(%struct.xhci_hcd* %95, %struct.xhci_ring* %96)
  br label %86

98:                                               ; preds = %86
  %99 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %100 = load %struct.xhci_ring*, %struct.xhci_ring** %14, align 8
  %101 = call i32 @inc_deq(%struct.xhci_hcd* %99, %struct.xhci_ring* %100)
  br label %102

102:                                              ; preds = %98, %75
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %104 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %105 = load %struct.xhci_ring*, %struct.xhci_ring** %14, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @xhci_td_cleanup(%struct.xhci_hcd* %103, %struct.xhci_td* %104, %struct.xhci_ring* %105, i32* %106)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %102, %64
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TRB_TO_EP_ID(i32) #1

declare dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i64 @GET_COMP_CODE(i32) #1

declare dso_local i64 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd*, %struct.xhci_ep_ctx*, i64) #1

declare dso_local i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd*, i32, i32, i32, %struct.xhci_td*, i32) #1

declare dso_local i32 @inc_deq(%struct.xhci_hcd*, %struct.xhci_ring*) #1

declare dso_local i32 @xhci_td_cleanup(%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_ring*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
