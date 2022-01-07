; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.data_queue = type { i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@REQUIRE_ATIM_QUEUE = common dso_local global i32 0, align 4
@QID_ATIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Attempt to send packet over invalid queue %d\0APlease file bug report to %s\0A\00", align 1
@DRV_PROJECT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00mac_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.data_queue*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  store %struct.data_queue* null, %struct.data_queue** %10, align 8
  %18 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %20 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %112

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %33 = load i32, i32* @REQUIRE_ATIM_QUEUE, align 4
  %34 = call i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @QID_ATIM, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %31, %24
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %39, i32 %40)
  store %struct.data_queue* %41, %struct.data_queue** %10, align 8
  %42 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %43 = icmp ne %struct.data_queue* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @DRV_PROJECT, align 4
  %52 = call i32 @rt2x00_err(%struct.rt2x00_dev* %49, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %112

53:                                               ; preds = %38
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %55 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %101, label %62

62:                                               ; preds = %53
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %71 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %62
  %76 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %77 = call i32 @rt2x00queue_available(%struct.data_queue* %76)
  %78 = icmp sle i32 %77, 1
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %81 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %84 = call i64 @rt2x00queue_threshold(%struct.data_queue* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %88 = call i32 @rt2x00queue_pause_queue(%struct.data_queue* %87)
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %91 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  br label %112

93:                                               ; preds = %75
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %95 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i64 @rt2x00mac_tx_rts_cts(%struct.rt2x00_dev* %94, %struct.data_queue* %95, %struct.sk_buff* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %112

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %62, %53
  %102 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rt2x00queue_write_tx_frame(%struct.data_queue* %102, %struct.sk_buff* %103, i32 %106, i32 0)
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %112

111:                                              ; preds = %101
  br label %116

112:                                              ; preds = %110, %99, %89, %48, %23
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %113, %struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %112, %111
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

declare dso_local i32 @rt2x00queue_available(%struct.data_queue*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @rt2x00queue_threshold(%struct.data_queue*) #1

declare dso_local i32 @rt2x00queue_pause_queue(%struct.data_queue*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @rt2x00mac_tx_rts_cts(%struct.rt2x00_dev*, %struct.data_queue*, %struct.sk_buff*) #1

declare dso_local i32 @rt2x00queue_write_tx_frame(%struct.data_queue*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
