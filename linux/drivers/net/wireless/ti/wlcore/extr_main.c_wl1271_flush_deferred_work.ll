; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_flush_deferred_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_flush_deferred_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*)* @wl1271_flush_deferred_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_flush_deferred_work(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %6 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %5, i32 0, i32 2
  %7 = call %struct.sk_buff* @skb_dequeue(i32* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @ieee80211_rx_ni(i32 %12, %struct.sk_buff* %13)
  br label %4

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 1
  %19 = call %struct.sk_buff* @skb_dequeue(i32* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @ieee80211_tx_status_ni(i32 %24, %struct.sk_buff* %25)
  br label %16

27:                                               ; preds = %16
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_rx_ni(i32, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_status_ni(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
