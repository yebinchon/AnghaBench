; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_prepare_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_prepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { i32 }
%struct.urb = type { %struct.TYPE_2__*, %struct.urb_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.urb_priv = type { %struct.xhci_td* }
%struct.xhci_td = type { i32, i32, i32, %struct.urb*, i32 }
%struct.xhci_ring = type { i32, i32, i32 }
%struct.xhci_ep_ctx = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Can't prepare ring for bad stream ID %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_virt_device*, i32, i32, i32, %struct.urb*, i32, i32)* @prepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_transfer(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, i32 %2, i32 %3, i32 %4, %struct.urb* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_hcd*, align 8
  %11 = alloca %struct.xhci_virt_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.urb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.urb_priv*, align 8
  %20 = alloca %struct.xhci_td*, align 8
  %21 = alloca %struct.xhci_ring*, align 8
  %22 = alloca %struct.xhci_ep_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %10, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.urb* %5, %struct.urb** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %10, align 8
  %24 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %11, align 8
  %25 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %23, i32 %26, i32 %27)
  store %struct.xhci_ep_ctx* %28, %struct.xhci_ep_ctx** %22, align 8
  %29 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.xhci_ring* @xhci_stream_id_to_ring(%struct.xhci_virt_device* %29, i32 %30, i32 %31)
  store %struct.xhci_ring* %32, %struct.xhci_ring** %21, align 8
  %33 = load %struct.xhci_ring*, %struct.xhci_ring** %21, align 8
  %34 = icmp ne %struct.xhci_ring* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %8
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %10, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @xhci_dbg(%struct.xhci_hcd* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %105

41:                                               ; preds = %8
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %10, align 8
  %43 = load %struct.xhci_ring*, %struct.xhci_ring** %21, align 8
  %44 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %22, align 8
  %45 = call i32 @GET_EP_CTX_STATE(%struct.xhci_ep_ctx* %44)
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @prepare_ring(%struct.xhci_hcd* %42, %struct.xhci_ring* %43, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %9, align 4
  br label %105

53:                                               ; preds = %41
  %54 = load %struct.urb*, %struct.urb** %15, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 1
  %56 = load %struct.urb_priv*, %struct.urb_priv** %55, align 8
  store %struct.urb_priv* %56, %struct.urb_priv** %19, align 8
  %57 = load %struct.urb_priv*, %struct.urb_priv** %19, align 8
  %58 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %57, i32 0, i32 0
  %59 = load %struct.xhci_td*, %struct.xhci_td** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %59, i64 %61
  store %struct.xhci_td* %62, %struct.xhci_td** %20, align 8
  %63 = load %struct.xhci_td*, %struct.xhci_td** %20, align 8
  %64 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %63, i32 0, i32 2
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.xhci_td*, %struct.xhci_td** %20, align 8
  %67 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %66, i32 0, i32 4
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %53
  %72 = load %struct.urb*, %struct.urb** %15, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bus_to_hcd(i32 %76)
  %78 = load %struct.urb*, %struct.urb** %15, align 8
  %79 = call i32 @usb_hcd_link_urb_to_ep(i32 %77, %struct.urb* %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %9, align 4
  br label %105

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.urb*, %struct.urb** %15, align 8
  %88 = load %struct.xhci_td*, %struct.xhci_td** %20, align 8
  %89 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %88, i32 0, i32 3
  store %struct.urb* %87, %struct.urb** %89, align 8
  %90 = load %struct.xhci_td*, %struct.xhci_td** %20, align 8
  %91 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %90, i32 0, i32 2
  %92 = load %struct.xhci_ring*, %struct.xhci_ring** %21, align 8
  %93 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %92, i32 0, i32 2
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.xhci_ring*, %struct.xhci_ring** %21, align 8
  %96 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.xhci_td*, %struct.xhci_td** %20, align 8
  %99 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.xhci_ring*, %struct.xhci_ring** %21, align 8
  %101 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.xhci_td*, %struct.xhci_td** %20, align 8
  %104 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %86, %83, %51, %35
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local %struct.xhci_ring* @xhci_stream_id_to_ring(%struct.xhci_virt_device*, i32, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @prepare_ring(%struct.xhci_hcd*, %struct.xhci_ring*, i32, i32, i32) #1

declare dso_local i32 @GET_EP_CTX_STATE(%struct.xhci_ep_ctx*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(i32, %struct.urb*) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
