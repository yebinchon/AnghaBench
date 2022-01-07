; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_rxskb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_rxskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.queue_entry = type { %struct.data_queue* }
%struct.data_queue = type { i32, i32, i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.skb_frame_desc = type { i32, i32 }

@REQUIRE_DMA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SKBDESC_DMA_MAPPED_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @rt2x00queue_alloc_rxskb(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.data_queue*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.skb_frame_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 0
  %16 = load %struct.data_queue*, %struct.data_queue** %15, align 8
  store %struct.data_queue* %16, %struct.data_queue** %6, align 8
  %17 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %18 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %17, i32 0, i32 3
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %18, align 8
  store %struct.rt2x00_dev* %19, %struct.rt2x00_dev** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %21 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %24 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %22, %25
  %27 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %28 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %26, %29
  store i32 %30, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %32 = call i64 @rt2x00_has_cap_hw_crypto(%struct.rt2x00_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %37, 8
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.sk_buff* @__dev_alloc_skb(i32 %44, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %98

50:                                               ; preds = %39
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @skb_reserve(%struct.sk_buff* %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @skb_put(%struct.sk_buff* %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %57)
  store %struct.skb_frame_desc* %58, %struct.skb_frame_desc** %9, align 8
  %59 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %60 = call i32 @memset(%struct.skb_frame_desc* %59, i32 0, i32 8)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %62 = load i32, i32* @REQUIRE_DMA, align 4
  %63 = call i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %50
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %76 = call i32 @dma_map_single(i32 %68, i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %78 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dma_mapping_error(i32 %79, i32 %80)
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %65
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %85)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %98

87:                                               ; preds = %65
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %90 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @SKBDESC_DMA_MAPPED_RX, align 4
  %92 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %93 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %87, %50
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %97, %struct.sk_buff** %3, align 8
  br label %98

98:                                               ; preds = %96, %84, %49
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %99
}

declare dso_local i64 @rt2x00_has_cap_hw_crypto(%struct.rt2x00_dev*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_frame_desc*, i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
