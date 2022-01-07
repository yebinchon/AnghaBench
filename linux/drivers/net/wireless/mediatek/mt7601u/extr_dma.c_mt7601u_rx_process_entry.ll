; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_process_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_process_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt7601u_dma_buf_rx = type { %struct.page*, %struct.TYPE_2__* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MT7601U_STATE_INITIALIZED = common dso_local global i32 0, align 4
@MT_RX_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, %struct.mt7601u_dma_buf_rx*)* @mt7601u_rx_process_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_rx_process_entry(%struct.mt7601u_dev* %0, %struct.mt7601u_dma_buf_rx* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.mt7601u_dma_buf_rx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store %struct.mt7601u_dma_buf_rx* %1, %struct.mt7601u_dma_buf_rx** %4, align 8
  %10 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dma_buf_rx, %struct.mt7601u_dma_buf_rx* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dma_buf_rx, %struct.mt7601u_dma_buf_rx* %15, i32 0, i32 0
  %17 = load %struct.page*, %struct.page** %16, align 8
  %18 = call i32* @page_address(%struct.page* %17)
  store i32* %18, i32** %7, align 8
  store %struct.page* null, %struct.page** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @MT7601U_STATE_INITIALIZED, align 4
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %20, i32 0, i32 0
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %84

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 512
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @MT_RX_ORDER, align 4
  %30 = call %struct.page* @dev_alloc_pages(i32 %29)
  store %struct.page* %30, %struct.page** %8, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mt7601u_rx_next_seg_len(i32* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.page*, %struct.page** %8, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %45 = getelementptr inbounds %struct.mt7601u_dma_buf_rx, %struct.mt7601u_dma_buf_rx* %44, i32 0, i32 0
  %46 = load %struct.page*, %struct.page** %45, align 8
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi %struct.page* [ %46, %43 ], [ null, %47 ]
  %50 = call i32 @mt7601u_rx_process_seg(%struct.mt7601u_dev* %38, i32* %39, i32 %40, %struct.page* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.page*, %struct.page** %8, align 8
  %67 = icmp ne %struct.page* %66, null
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @trace_mt_rx_dma_aggr(%struct.mt7601u_dev* %64, i32 %65, i32 %70)
  br label %72

72:                                               ; preds = %63, %60
  %73 = load %struct.page*, %struct.page** %8, align 8
  %74 = icmp ne %struct.page* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %77 = getelementptr inbounds %struct.mt7601u_dma_buf_rx, %struct.mt7601u_dma_buf_rx* %76, i32 0, i32 0
  %78 = load %struct.page*, %struct.page** %77, align 8
  %79 = load i32, i32* @MT_RX_ORDER, align 4
  %80 = call i32 @__free_pages(%struct.page* %78, i32 %79)
  %81 = load %struct.page*, %struct.page** %8, align 8
  %82 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %83 = getelementptr inbounds %struct.mt7601u_dma_buf_rx, %struct.mt7601u_dma_buf_rx* %82, i32 0, i32 0
  store %struct.page* %81, %struct.page** %83, align 8
  br label %84

84:                                               ; preds = %24, %75, %72
  ret void
}

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.page* @dev_alloc_pages(i32) #1

declare dso_local i32 @mt7601u_rx_next_seg_len(i32*, i32) #1

declare dso_local i32 @mt7601u_rx_process_seg(%struct.mt7601u_dev*, i32*, i32, %struct.page*) #1

declare dso_local i32 @trace_mt_rx_dma_aggr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
