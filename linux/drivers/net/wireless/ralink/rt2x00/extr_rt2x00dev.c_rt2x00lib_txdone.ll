; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_txdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.txdone_entry_desc = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.skb_frame_desc = type { i32 }

@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@REQUIRE_L2PAD = common dso_local global i32 0, align 4
@DUMP_FRAME_TXDONE = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_UNKNOWN = common dso_local global i32 0, align 4
@SKBDESC_NOT_MAC80211 = common dso_local global i32 0, align 4
@REQUIRE_TASKLET_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_txdone(%struct.queue_entry* %0, %struct.txdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.skb_frame_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txdone_entry_desc* %1, %struct.txdone_entry_desc** %4, align 8
  %11 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %5, align 8
  %16 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %17 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %6, align 8
  %20 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %22)
  store %struct.skb_frame_desc* %23, %struct.skb_frame_desc** %7, align 8
  %24 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %25 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %28 = call i32 @rt2x00queue_unmap_skb(%struct.queue_entry* %27)
  %29 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %30 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @skb_pull(i32 %31, i32 %34)
  %36 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %39 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ieee80211_get_hdrlen_from_skb(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = load i32, i32* @REQUIRE_L2PAD, align 4
  %48 = call i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %2
  %51 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %52 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rt2x00queue_remove_l2pad(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %2
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %58 = call i64 @rt2x00_has_cap_hw_crypto(%struct.rt2x00_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %62 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @rt2x00crypto_tx_insert_iv(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %68 = load i32, i32* @DUMP_FRAME_TXDONE, align 4
  %69 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %70 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %67, i32 %68, %struct.queue_entry* %69)
  %71 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %72 = call i64 @rt2x00lib_txdone_bar_status(%struct.queue_entry* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @TXDONE_SUCCESS, align 4
  %76 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %77 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %76, i32 0, i32 0
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @TXDONE_UNKNOWN, align 4
  %82 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %83 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %82, i32 0, i32 0
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %80, %74, %66
  %87 = phi i1 [ true, %74 ], [ true, %66 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %91 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %101 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %99
  store i32 %105, i32* %103, align 4
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %107 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %108 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %109 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @rt2x00lib_fill_tx_status(%struct.rt2x00_dev* %106, %struct.ieee80211_tx_info* %107, %struct.skb_frame_desc* %108, %struct.txdone_entry_desc* %109, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @SKBDESC_NOT_MAC80211, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %138, label %116

116:                                              ; preds = %86
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %118 = load i32, i32* @REQUIRE_TASKLET_CONTEXT, align 4
  %119 = call i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %123 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %126 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ieee80211_tx_status(i32 %124, i32 %127)
  br label %137

129:                                              ; preds = %116
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %131 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %134 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @ieee80211_tx_status_ni(i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %129, %121
  br label %143

138:                                              ; preds = %86
  %139 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %140 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_kfree_skb_any(i32 %141)
  br label %143

143:                                              ; preds = %138, %137
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %145 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %146 = call i32 @rt2x00lib_clear_entry(%struct.rt2x00_dev* %144, %struct.queue_entry* %145)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00queue_unmap_skb(%struct.queue_entry*) #1

declare dso_local i32 @skb_pull(i32, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(i32) #1

declare dso_local i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00queue_remove_l2pad(i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_hw_crypto(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00crypto_tx_insert_iv(i32, i32) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.queue_entry*) #1

declare dso_local i64 @rt2x00lib_txdone_bar_status(%struct.queue_entry*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_fill_tx_status(%struct.rt2x00_dev*, %struct.ieee80211_tx_info*, %struct.skb_frame_desc*, %struct.txdone_entry_desc*, i32) #1

declare dso_local i32 @ieee80211_tx_status(i32, i32) #1

declare dso_local i32 @ieee80211_tx_status_ni(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @rt2x00lib_clear_entry(%struct.rt2x00_dev*, %struct.queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
