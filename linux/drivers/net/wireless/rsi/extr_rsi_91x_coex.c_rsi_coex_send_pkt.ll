; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_coex.c_rsi_coex_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_coex.c_rsi_coex_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.rsi_common = type { i32, i64, i64 }
%struct.rsi_coex_ctrl_block = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.skb_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RSI_COEX_Q_INVALID = common dso_local global i32 0, align 4
@ERR_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid coex queue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RSI_COEX_Q_COMMON = common dso_local global i32 0, align 4
@RSI_COEX_Q_WLAN = common dso_local global i32 0, align 4
@INTERNAL_MGMT_PKT = common dso_local global i32 0, align 4
@MGMT_SOFT_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsi_coex_send_pkt(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsi_common*, align 8
  %9 = alloca %struct.rsi_coex_ctrl_block*, align 8
  %10 = alloca %struct.skb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.rsi_common*
  store %struct.rsi_common* %14, %struct.rsi_common** %8, align 8
  %15 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %16 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.rsi_coex_ctrl_block*
  store %struct.rsi_coex_ctrl_block* %18, %struct.rsi_coex_ctrl_block** %9, align 8
  store %struct.skb_info* null, %struct.skb_info** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @rsi_map_coex_q(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @RSI_COEX_Q_INVALID, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @ERR_ZONE, align 4
  %26 = call i32 @rsi_dbg(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %91

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @RSI_COEX_Q_COMMON, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @RSI_COEX_Q_WLAN, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.rsi_coex_ctrl_block*, %struct.rsi_coex_ctrl_block** %9, align 8
  %39 = getelementptr inbounds %struct.rsi_coex_ctrl_block, %struct.rsi_coex_ctrl_block* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @skb_queue_tail(i32* %43, %struct.sk_buff* %44)
  %46 = load %struct.rsi_coex_ctrl_block*, %struct.rsi_coex_ctrl_block** %9, align 8
  %47 = getelementptr inbounds %struct.rsi_coex_ctrl_block, %struct.rsi_coex_ctrl_block* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @rsi_set_event(i32* %48)
  store i32 0, i32* %4, align 4
  br label %91

50:                                               ; preds = %33, %29
  %51 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %52 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call %struct.TYPE_4__* @IEEE80211_SKB_CB(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = bitcast i32* %58 to %struct.skb_info*
  store %struct.skb_info* %59, %struct.skb_info** %10, align 8
  %60 = load %struct.skb_info*, %struct.skb_info** %10, align 8
  %61 = getelementptr inbounds %struct.skb_info, %struct.skb_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @INTERNAL_MGMT_PKT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %55
  %67 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %68 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @rsi_indicate_tx_status(i32 %69, %struct.sk_buff* %70, i32 %72)
  store i32 0, i32* %4, align 4
  br label %91

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MGMT_SOFT_Q, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @rsi_send_mgmt_pkt(%struct.rsi_common* %82, %struct.sk_buff* %83)
  store i32 %84, i32* %12, align 4
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @rsi_send_data_pkt(%struct.rsi_common* %86, %struct.sk_buff* %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %66, %37, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @rsi_map_coex_q(i32) #1

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rsi_set_event(i32*) #1

declare dso_local %struct.TYPE_4__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rsi_indicate_tx_status(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @rsi_send_mgmt_pkt(%struct.rsi_common*, %struct.sk_buff*) #1

declare dso_local i32 @rsi_send_data_pkt(%struct.rsi_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
