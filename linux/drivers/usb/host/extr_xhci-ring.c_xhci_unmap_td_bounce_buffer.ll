; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_unmap_td_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_unmap_td_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32 }
%struct.xhci_td = type { %struct.urb*, %struct.xhci_segment* }
%struct.urb = type { i32, i32 }
%struct.xhci_segment = type { i64, i64, i32, i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WARN Wrong bounce buffer read length: %zu != %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_td*)* @xhci_unmap_td_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_unmap_td_bounce_buffer(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, %struct.xhci_td* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_ring*, align 8
  %6 = alloca %struct.xhci_td*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.xhci_segment*, align 8
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %5, align 8
  store %struct.xhci_td* %2, %struct.xhci_td** %6, align 8
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %12 = call %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %17 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %16, i32 0, i32 1
  %18 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  store %struct.xhci_segment* %18, %struct.xhci_segment** %8, align 8
  %19 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %20 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %19, i32 0, i32 0
  %21 = load %struct.urb*, %struct.urb** %20, align 8
  store %struct.urb* %21, %struct.urb** %9, align 8
  %22 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %23 = icmp ne %struct.xhci_ring* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %26 = icmp ne %struct.xhci_segment* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.urb*, %struct.urb** %9, align 8
  %29 = icmp ne %struct.urb* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24, %3
  br label %88

31:                                               ; preds = %27
  %32 = load %struct.urb*, %struct.urb** %9, align 8
  %33 = call i64 @usb_urb_dir_out(%struct.urb* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %38 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %41 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(%struct.device* %36, i32 %39, i32 %42, i32 %43)
  br label %88

45:                                               ; preds = %31
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %48 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %51 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i32 @dma_unmap_single(%struct.device* %46, i32 %49, i32 %52, i32 %53)
  %55 = load %struct.urb*, %struct.urb** %9, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.urb*, %struct.urb** %9, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %62 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %65 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %68 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @sg_pcopy_from_buffer(i32 %57, i32 %60, i32 %63, i64 %66, i64 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %73 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %45
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %80 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @xhci_warn(%struct.xhci_hcd* %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %81)
  br label %83

83:                                               ; preds = %76, %45
  %84 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %85 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %87 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %35, %30
  ret void
}

declare dso_local %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i64 @usb_urb_dir_out(%struct.urb*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @sg_pcopy_from_buffer(i32, i32, i32, i64, i64) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
