; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_process_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_process_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mt7601u_rxwi = type { i64* }

@MT_FCE_INFO_LEN = common dso_local global i32 0, align 4
@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error: RXWI zero fields are set\0A\00", align 1
@MT_RXD_INFO_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error: RX path seen a non-pkt urb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32*, i32, %struct.page*)* @mt7601u_rx_process_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_rx_process_seg(%struct.mt7601u_dev* %0, i32* %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.mt7601u_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mt7601u_rxwi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page* %3, %struct.page** %8, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* @MT_FCE_INFO_LEN, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = call i32 @get_unaligned_le32(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @MT_FCE_INFO_LEN, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  store i32* %28, i32** %6, align 8
  %29 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to %struct.mt7601u_rxwi*
  store %struct.mt7601u_rxwi* %35, %struct.mt7601u_rxwi** %10, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %10, align 8
  %43 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %4
  %49 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %10, align 8
  %50 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %10, align 8
  %57 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %55, %48, %4
  %63 = phi i1 [ true, %48 ], [ true, %4 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %69 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err_once(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @MT_RXD_INFO_TYPE, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @FIELD_GET(i32 %73, i32 %74)
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %80 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err_once(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %72
  %84 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %85 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @trace_mt_rx(%struct.mt7601u_dev* %84, %struct.mt7601u_rxwi* %85, i32 %86)
  %88 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %89 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %10, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.page*, %struct.page** %8, align 8
  %94 = call %struct.sk_buff* @mt7601u_rx_skb_from_seg(%struct.mt7601u_dev* %88, %struct.mt7601u_rxwi* %89, i32* %90, i32 %91, i32 %92, %struct.page* %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %83
  br label %110

98:                                               ; preds = %83
  %99 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %100 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %99, i32 0, i32 0
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %103 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = call i32 @ieee80211_rx(i32 %104, %struct.sk_buff* %105)
  %107 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %108 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  br label %110

110:                                              ; preds = %98, %97
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err_once(i32, i8*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @trace_mt_rx(%struct.mt7601u_dev*, %struct.mt7601u_rxwi*, i32) #1

declare dso_local %struct.sk_buff* @mt7601u_rx_skb_from_seg(%struct.mt7601u_dev*, %struct.mt7601u_rxwi*, i32*, i32, i32, %struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
