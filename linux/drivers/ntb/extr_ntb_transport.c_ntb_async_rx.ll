; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_async_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_async_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_queue_entry = type { i64, i32, %struct.ntb_transport_qp* }
%struct.ntb_transport_qp = type { i32, i32, %struct.dma_chan* }
%struct.dma_chan = type { i32 }

@copy_bytes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_queue_entry*, i8*)* @ntb_async_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_async_rx(%struct.ntb_queue_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.ntb_queue_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ntb_transport_qp*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.ntb_queue_entry* %0, %struct.ntb_queue_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %8, i32 0, i32 2
  %10 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %9, align 8
  store %struct.ntb_transport_qp* %10, %struct.ntb_transport_qp** %5, align 8
  %11 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %12 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %11, i32 0, i32 2
  %13 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  store %struct.dma_chan* %13, %struct.dma_chan** %6, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %15 = icmp ne %struct.dma_chan* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %19 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @copy_bytes, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %42

24:                                               ; preds = %17
  %25 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @ntb_async_rx_submit(%struct.ntb_queue_entry* %25, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %42

31:                                               ; preds = %24
  %32 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %33 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %31
  br label %50

42:                                               ; preds = %30, %23, %16
  %43 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @ntb_memcpy_rx(%struct.ntb_queue_entry* %43, i8* %44)
  %46 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %5, align 8
  %47 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @ntb_async_rx_submit(%struct.ntb_queue_entry*, i8*) #1

declare dso_local i32 @ntb_memcpy_rx(%struct.ntb_queue_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
