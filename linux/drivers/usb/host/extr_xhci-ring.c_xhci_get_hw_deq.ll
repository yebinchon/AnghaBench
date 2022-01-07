; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_get_hw_deq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_get_hw_deq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { i32, %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xhci_stream_ctx* }
%struct.xhci_stream_ctx = type { i32 }
%struct.xhci_ep_ctx = type { i32 }

@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_virt_device*, i32, i32)* @xhci_get_hw_deq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_get_hw_deq(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.xhci_virt_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_ep_ctx*, align 8
  %11 = alloca %struct.xhci_stream_ctx*, align 8
  %12 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %14 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %13, i32 0, i32 1
  %15 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %15, i64 %17
  store %struct.xhci_virt_ep* %18, %struct.xhci_virt_ep** %12, align 8
  %19 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %20 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EP_HAS_STREAMS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %27 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.xhci_stream_ctx, %struct.xhci_stream_ctx* %30, i64 %32
  store %struct.xhci_stream_ctx* %33, %struct.xhci_stream_ctx** %11, align 8
  %34 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %11, align 8
  %35 = getelementptr inbounds %struct.xhci_stream_ctx, %struct.xhci_stream_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le64_to_cpu(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %49

38:                                               ; preds = %4
  %39 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %40 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %41 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %39, i32 %42, i32 %43)
  store %struct.xhci_ep_ctx* %44, %struct.xhci_ep_ctx** %10, align 8
  %45 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %38, %25
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
