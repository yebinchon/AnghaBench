; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_alloc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_alloc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vnt_rx_desc = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.vnt_rd_info* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.vnt_rd_info = type { i32, i32* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@OWNED_BY_NIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, %struct.vnt_rx_desc*)* @device_alloc_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_alloc_rx_buf(%struct.vnt_private* %0, %struct.vnt_rx_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca %struct.vnt_rx_desc*, align 8
  %6 = alloca %struct.vnt_rd_info*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store %struct.vnt_rx_desc* %1, %struct.vnt_rx_desc** %5, align 8
  %7 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %8 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %7, i32 0, i32 3
  %9 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %8, align 8
  store %struct.vnt_rd_info* %9, %struct.vnt_rd_info** %6, align 8
  %10 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32* @dev_alloc_skb(i32 %13)
  %15 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %16 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %18 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %28 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %31 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @skb_tailroom(i32* %32)
  %34 = call i32 @skb_put(i32* %29, i32 %33)
  %35 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_map_single(i32* %26, i32 %34, i64 %37, i32 %38)
  %40 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %41 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %47 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @dma_mapping_error(i32* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %22
  %52 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %53 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @dev_kfree_skb(i32* %54)
  %56 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %57 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  store i32 0, i32* %3, align 4
  br label %86

58:                                               ; preds = %22
  %59 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %60 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %59, i32 0, i32 2
  %61 = bitcast %struct.TYPE_5__* %60 to i32*
  store i32 0, i32* %61, align 8
  %62 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %63 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @cpu_to_le16(i64 %64)
  %66 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %67 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  %69 = load i32, i32* @OWNED_BY_NIC, align 4
  %70 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %71 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %74 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @cpu_to_le16(i64 %75)
  %77 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %78 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %81 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @cpu_to_le32(i32 %82)
  %84 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %85 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %58, %51, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32* @dev_alloc_skb(i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i64, i32) #1

declare dso_local i32 @skb_put(i32*, i32) #1

declare dso_local i32 @skb_tailroom(i32*) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
