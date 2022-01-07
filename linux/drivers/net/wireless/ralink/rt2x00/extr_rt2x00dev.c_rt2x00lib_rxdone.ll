; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i64, %struct.sk_buff*, %struct.TYPE_7__* }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_12__*, i64, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*, %struct.rxdone_entry_desc*)* }
%struct.rxdone_entry_desc = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wrong frame size %d max %d\0A\00", align 1
@RXDONE_CRYPTO_IV = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RXDONE_L2PAD = common dso_local global i32 0, align 4
@RATE_MODE_HT_MIX = common dso_local global i64 0, align 8
@RATE_MODE_HT_GREENFIELD = common dso_local global i64 0, align 8
@RX_ENC_HT = common dso_local global i32 0, align 4
@DUMP_FRAME_RXDONE = common dso_local global i32 0, align 4
@Q_INDEX_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_rxdone(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rxdone_entry_desc, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %2
  br label %236

28:                                               ; preds = %21
  %29 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %30 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %31 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %236

35:                                               ; preds = %28
  %36 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.sk_buff* @rt2x00queue_alloc_rxskb(%struct.queue_entry* %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %236

42:                                               ; preds = %35
  %43 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %44 = call i32 @rt2x00queue_unmap_skb(%struct.queue_entry* %43)
  %45 = call i32 @memset(%struct.rxdone_entry_desc* %6, i32 0, i32 72)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32 (%struct.queue_entry*, %struct.rxdone_entry_desc*)*, i32 (%struct.queue_entry*, %struct.rxdone_entry_desc*)** %51, align 8
  %53 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %54 = call i32 %52(%struct.queue_entry* %53, %struct.rxdone_entry_desc* %6)
  %55 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %62 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ugt i32 %60, %65
  br label %67

67:                                               ; preds = %58, %42
  %68 = phi i1 [ true, %42 ], [ %66, %58 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %74 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %77 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @rt2x00_err(%struct.rt2x00_dev* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %80)
  %82 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %83 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %82, i32 0, i32 1
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = call i32 @dev_kfree_skb(%struct.sk_buff* %84)
  br label %232

86:                                               ; preds = %67
  %87 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %88 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %87, i32 0, i32 1
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  %90 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %89)
  store i32 %90, i32* %9, align 4
  %91 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RXDONE_CRYPTO_IV, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %104 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %103, i32 0, i32 1
  %105 = load %struct.sk_buff*, %struct.sk_buff** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @rt2x00crypto_rx_insert_iv(%struct.sk_buff* %105, i32 %106, %struct.rxdone_entry_desc* %6)
  br label %129

108:                                              ; preds = %96, %86
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RXDONE_L2PAD, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %124 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %123, i32 0, i32 1
  %125 = load %struct.sk_buff*, %struct.sk_buff** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @rt2x00queue_remove_l2pad(%struct.sk_buff* %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %116, %111, %108
  br label %129

129:                                              ; preds = %128, %102
  %130 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %131 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %130, i32 0, i32 1
  %132 = load %struct.sk_buff*, %struct.sk_buff** %131, align 8
  %133 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @skb_trim(%struct.sk_buff* %132, i32 %134)
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %137 = call i32 @rt2x00lib_rxdone_read_signal(%struct.rt2x00_dev* %136, %struct.rxdone_entry_desc* %6)
  store i32 %137, i32* %10, align 4
  %138 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @RATE_MODE_HT_MIX, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RATE_MODE_HT_GREENFIELD, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142, %129
  %148 = load i32, i32* @RX_ENC_HT, align 4
  %149 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 8
  store i32 %148, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %152 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %153 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %152, i32 0, i32 1
  %154 = load %struct.sk_buff*, %struct.sk_buff** %153, align 8
  %155 = call i32 @rt2x00lib_rxdone_check_ps(%struct.rt2x00_dev* %151, %struct.sk_buff* %154, %struct.rxdone_entry_desc* %6)
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %157 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %158 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %157, i32 0, i32 1
  %159 = load %struct.sk_buff*, %struct.sk_buff** %158, align 8
  %160 = call i32 @rt2x00lib_rxdone_check_ba(%struct.rt2x00_dev* %156, %struct.sk_buff* %159, %struct.rxdone_entry_desc* %6)
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %162 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %163 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %162, i32 0, i32 1
  %164 = load %struct.sk_buff*, %struct.sk_buff** %163, align 8
  %165 = call i32 @rt2x00link_update_stats(%struct.rt2x00_dev* %161, %struct.sk_buff* %164, %struct.rxdone_entry_desc* %6)
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %167 = call i32 @rt2x00debug_update_crypto(%struct.rt2x00_dev* %166, %struct.rxdone_entry_desc* %6)
  %168 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %169 = load i32, i32* @DUMP_FRAME_RXDONE, align 4
  %170 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %171 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %168, i32 %169, %struct.queue_entry* %170)
  %172 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %173 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %172, i32 0, i32 1
  %174 = load %struct.sk_buff*, %struct.sk_buff** %173, align 8
  %175 = call %struct.rxdone_entry_desc* @IEEE80211_SKB_RXCB(%struct.sk_buff* %174)
  %176 = bitcast %struct.rxdone_entry_desc* %175 to %struct.ieee80211_rx_status*
  store %struct.ieee80211_rx_status* %176, %struct.ieee80211_rx_status** %8, align 8
  %177 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %178 = bitcast %struct.ieee80211_rx_status* %177 to %struct.rxdone_entry_desc*
  %179 = call i32 @memset(%struct.rxdone_entry_desc* %178, i32 0, i32 72)
  %180 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 14
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %183 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %182, i32 0, i32 15
  store i32 %181, i32* %183, align 4
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %185 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %188 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %187, i32 0, i32 13
  store i32 %186, i32* %188, align 4
  %189 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %190 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %193 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %192, i32 0, i32 12
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %196 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 10
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %200 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %199, i32 0, i32 11
  store i32 %198, i32* %200, align 4
  %201 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %204 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 4
  %205 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %208 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %212 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %211, i32 0, i32 8
  store i32 %210, i32* %212, align 8
  %213 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %216 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 4
  %217 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %218 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %224 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %226 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %229 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %228, i32 0, i32 1
  %230 = load %struct.sk_buff*, %struct.sk_buff** %229, align 8
  %231 = call i32 @ieee80211_rx_ni(i32 %227, %struct.sk_buff* %230)
  br label %232

232:                                              ; preds = %150, %72
  %233 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %234 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %235 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %234, i32 0, i32 1
  store %struct.sk_buff* %233, %struct.sk_buff** %235, align 8
  br label %236

236:                                              ; preds = %232, %41, %34, %27
  %237 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %238 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  %239 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %240 = load i32, i32* @Q_INDEX_DONE, align 4
  %241 = call i32 @rt2x00queue_index_inc(%struct.queue_entry* %239, i32 %240)
  %242 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %243 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %244 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %243, i32 0, i32 1
  %245 = call i64 @test_bit(i32 %242, i64* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %236
  %248 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %249 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %250 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %249, i32 0, i32 1
  %251 = call i64 @test_bit(i32 %248, i64* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %247
  %254 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %255 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %254, i32 0, i32 0
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*)** %259, align 8
  %261 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %262 = call i32 %260(%struct.queue_entry* %261)
  br label %263

263:                                              ; preds = %253, %247, %236
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local %struct.sk_buff* @rt2x00queue_alloc_rxskb(%struct.queue_entry*, i32) #1

declare dso_local i32 @rt2x00queue_unmap_skb(%struct.queue_entry*) #1

declare dso_local i32 @memset(%struct.rxdone_entry_desc*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @rt2x00crypto_rx_insert_iv(%struct.sk_buff*, i32, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00queue_remove_l2pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @rt2x00lib_rxdone_read_signal(%struct.rt2x00_dev*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00lib_rxdone_check_ps(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00lib_rxdone_check_ba(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00link_update_stats(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00debug_update_crypto(%struct.rt2x00_dev*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.queue_entry*) #1

declare dso_local %struct.rxdone_entry_desc* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_ni(i32, %struct.sk_buff*) #1

declare dso_local i32 @rt2x00queue_index_inc(%struct.queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
