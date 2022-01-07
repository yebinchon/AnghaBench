; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_info_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_info_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i32, i32 }
%struct.sk_buff = type { i32 }

@COEX_RESP_ACK_BY_WL_FW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_info_response(%struct.rtw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca i64*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_coex* %8, %struct.rtw_coex** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64* @get_payload_from_coex_resp(%struct.sk_buff* %9)
  store i64* %10, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @COEX_RESP_ACK_BY_WL_FW, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_queue_tail(i32* %19, %struct.sk_buff* %20)
  %22 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %22, i32 0, i32 0
  %24 = call i32 @wake_up(i32* %23)
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64* @get_payload_from_coex_resp(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
