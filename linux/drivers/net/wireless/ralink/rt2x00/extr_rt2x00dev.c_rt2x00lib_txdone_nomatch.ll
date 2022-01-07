; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_txdone_nomatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_txdone_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.txdone_entry_desc = type { i32 }
%struct.skb_frame_desc = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32 }

@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@DUMP_FRAME_TXDONE = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_txdone_nomatch(%struct.queue_entry* %0, %struct.txdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.skb_frame_desc*, align 8
  %7 = alloca %struct.ieee80211_tx_info, align 4
  %8 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txdone_entry_desc* %1, %struct.txdone_entry_desc** %4, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %5, align 8
  %14 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %16)
  store %struct.skb_frame_desc* %17, %struct.skb_frame_desc** %6, align 8
  %18 = bitcast %struct.ieee80211_tx_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %20 = call i32 @rt2x00queue_unmap_skb(%struct.queue_entry* %19)
  %21 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %24 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %28 = load i32, i32* @DUMP_FRAME_TXDONE, align 4
  %29 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %30 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %27, i32 %28, %struct.queue_entry* %29)
  %31 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %32 = call i64 @rt2x00lib_txdone_bar_status(%struct.queue_entry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @TXDONE_SUCCESS, align 4
  %36 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %37 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %34, %2
  %41 = phi i1 [ true, %2 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @TXDONE_UNKNOWN, align 4
  %44 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %45 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %44, i32 0, i32 0
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %49
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %61 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %59
  store i32 %65, i32* %63, align 4
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %68 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @rt2x00lib_fill_tx_status(%struct.rt2x00_dev* %66, %struct.ieee80211_tx_info* %7, %struct.skb_frame_desc* %67, %struct.txdone_entry_desc* %68, i32 %69)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %72 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %75 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ieee80211_tx_status_noskb(i32 %73, i32 %76, %struct.ieee80211_tx_info* %7)
  br label %78

78:                                               ; preds = %48, %40
  %79 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %80 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_kfree_skb_any(i32 %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %84 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %85 = call i32 @rt2x00lib_clear_entry(%struct.rt2x00_dev* %83, %struct.queue_entry* %84)
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rt2x00queue_unmap_skb(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.queue_entry*) #1

declare dso_local i64 @rt2x00lib_txdone_bar_status(%struct.queue_entry*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_fill_tx_status(%struct.rt2x00_dev*, %struct.ieee80211_tx_info*, %struct.skb_frame_desc*, %struct.txdone_entry_desc*, i32) #1

declare dso_local i32 @ieee80211_tx_status_noskb(i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @rt2x00lib_clear_entry(%struct.rt2x00_dev*, %struct.queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
