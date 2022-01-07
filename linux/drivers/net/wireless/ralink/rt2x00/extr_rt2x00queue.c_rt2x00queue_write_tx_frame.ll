; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_write_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_write_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.queue_entry = type { i32, %struct.sk_buff* }
%struct.txentry_desc = type { i32, i32 }
%struct.skb_frame_desc = type { i32, i8*, i8* }

@SKBDESC_NOT_MAC80211 = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_IV = common dso_local global i32 0, align 4
@REQUIRE_COPY_IV = common dso_local global i32 0, align 4
@REQUIRE_L2PAD = common dso_local global i32 0, align 4
@REQUIRE_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Dropping frame due to full tx queue %d\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@Q_INDEX = common dso_local global i32 0, align 4
@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Arrived at non-free entry in the non-full queue %d\0APlease file bug report to %s\0A\00", align 1
@DRV_PROJECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENTRY_DATA_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00queue_write_tx_frame(%struct.data_queue* %0, %struct.sk_buff* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.data_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.queue_entry*, align 8
  %11 = alloca %struct.txentry_desc, align 4
  %12 = alloca %struct.skb_frame_desc*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %17 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %21 = call i32 @rt2x00queue_create_tx_descriptor(i32 %18, %struct.sk_buff* %19, %struct.txentry_desc* %11, %struct.ieee80211_sta* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %9, align 8
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %14, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %38)
  store %struct.skb_frame_desc* %39, %struct.skb_frame_desc** %12, align 8
  %40 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %12, align 8
  %41 = call i32 @memset(%struct.skb_frame_desc* %40, i32 0, i32 24)
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %12, align 8
  %44 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %12, align 8
  %47 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %4
  %51 = load i32, i32* @SKBDESC_NOT_MAC80211, align 4
  %52 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %12, align 8
  %53 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %4
  %57 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %58 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %11, i32 0, i32 1
  %59 = call i64 @test_bit(i32 %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load i32, i32* @ENTRY_TXD_ENCRYPT_IV, align 4
  %63 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %11, i32 0, i32 1
  %64 = call i64 @test_bit(i32 %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %61
  %67 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %68 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @REQUIRE_COPY_IV, align 4
  %71 = call i64 @rt2x00_has_cap_flag(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @rt2x00crypto_tx_copy_iv(%struct.sk_buff* %74, %struct.txentry_desc* %11)
  br label %79

76:                                               ; preds = %66
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @rt2x00crypto_tx_remove_iv(%struct.sk_buff* %77, %struct.txentry_desc* %11)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %61, %56
  %81 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %82 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @REQUIRE_L2PAD, align 4
  %85 = call i64 @rt2x00_has_cap_flag(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rt2x00queue_insert_l2pad(%struct.sk_buff* %88, i32 %90)
  br label %103

92:                                               ; preds = %80
  %93 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %94 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @REQUIRE_DMA, align 4
  %97 = call i64 @rt2x00_has_cap_flag(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @rt2x00queue_align_frame(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %92
  br label %103

103:                                              ; preds = %102, %87
  %104 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %105 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %108 = call i32 @rt2x00queue_full(%struct.data_queue* %107)
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %113 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %116 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @rt2x00_dbg(i32 %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ENOBUFS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %15, align 4
  br label %173

121:                                              ; preds = %103
  %122 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %123 = load i32, i32* @Q_INDEX, align 4
  %124 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %122, i32 %123)
  store %struct.queue_entry* %124, %struct.queue_entry** %10, align 8
  %125 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %126 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %127 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %126, i32 0, i32 0
  %128 = call i32 @test_and_set_bit(i32 %125, i32* %127)
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %121
  %132 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %133 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %136 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @DRV_PROJECT, align 4
  %139 = call i32 @rt2x00_err(i32 %134, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %15, align 4
  br label %173

142:                                              ; preds = %121
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %145 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %144, i32 0, i32 1
  store %struct.sk_buff* %143, %struct.sk_buff** %145, align 8
  %146 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %147 = call i32 @rt2x00queue_write_tx_data(%struct.queue_entry* %146, %struct.txentry_desc* %11)
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %152 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %153 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %152, i32 0, i32 0
  %154 = call i32 @clear_bit(i32 %151, i32* %153)
  %155 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %156 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %155, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %156, align 8
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %15, align 4
  br label %173

159:                                              ; preds = %142
  %160 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %161 = call i32 @rt2x00queue_bar_check(%struct.queue_entry* %160)
  %162 = load i32, i32* @ENTRY_DATA_PENDING, align 4
  %163 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %164 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %163, i32 0, i32 0
  %165 = call i32 @set_bit(i32 %162, i32* %164)
  %166 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %167 = load i32, i32* @Q_INDEX, align 4
  %168 = call i32 @rt2x00queue_index_inc(%struct.queue_entry* %166, i32 %167)
  %169 = load %struct.queue_entry*, %struct.queue_entry** %10, align 8
  %170 = call i32 @rt2x00queue_write_tx_descriptor(%struct.queue_entry* %169, %struct.txentry_desc* %11)
  %171 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %172 = call i32 @rt2x00queue_kick_tx_queue(%struct.data_queue* %171, %struct.txentry_desc* %11)
  br label %173

173:                                              ; preds = %159, %150, %131, %111
  %174 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %175 = call i64 @rt2x00queue_threshold(%struct.data_queue* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %179 = call i32 @rt2x00queue_pause_queue(%struct.data_queue* %178)
  br label %180

180:                                              ; preds = %177, %173
  %181 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %182 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %181, i32 0, i32 0
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load i32, i32* %15, align 4
  ret i32 %184
}

declare dso_local i32 @rt2x00queue_create_tx_descriptor(i32, %struct.sk_buff*, %struct.txentry_desc*, %struct.ieee80211_sta*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_frame_desc*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_has_cap_flag(i32, i32) #1

declare dso_local i32 @rt2x00crypto_tx_copy_iv(%struct.sk_buff*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00crypto_tx_remove_iv(%struct.sk_buff*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00queue_insert_l2pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @rt2x00queue_align_frame(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00queue_full(%struct.data_queue*) #1

declare dso_local i32 @rt2x00_dbg(i32, i8*, i32) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_err(i32, i8*, i32, i32) #1

declare dso_local i32 @rt2x00queue_write_tx_data(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_bar_check(%struct.queue_entry*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_index_inc(%struct.queue_entry*, i32) #1

declare dso_local i32 @rt2x00queue_write_tx_descriptor(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00queue_kick_tx_queue(%struct.data_queue*, %struct.txentry_desc*) #1

declare dso_local i64 @rt2x00queue_threshold(%struct.data_queue*) #1

declare dso_local i32 @rt2x00queue_pause_queue(%struct.data_queue*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
