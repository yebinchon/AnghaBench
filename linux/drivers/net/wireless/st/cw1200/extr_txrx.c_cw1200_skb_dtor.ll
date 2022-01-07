; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_skb_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_skb_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cw1200_txpriv = type { i64, i32, i32, i32 }

@CW1200_INVALID_RATE_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_skb_dtor(%struct.cw1200_common* %0, %struct.sk_buff* %1, %struct.cw1200_txpriv* %2) #0 {
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cw1200_txpriv*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.cw1200_txpriv* %2, %struct.cw1200_txpriv** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = load %struct.cw1200_txpriv*, %struct.cw1200_txpriv** %6, align 8
  %9 = getelementptr inbounds %struct.cw1200_txpriv, %struct.cw1200_txpriv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @skb_pull(%struct.sk_buff* %7, i32 %10)
  %12 = load %struct.cw1200_txpriv*, %struct.cw1200_txpriv** %6, align 8
  %13 = getelementptr inbounds %struct.cw1200_txpriv, %struct.cw1200_txpriv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CW1200_INVALID_RATE_ID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load %struct.cw1200_txpriv*, %struct.cw1200_txpriv** %6, align 8
  %21 = getelementptr inbounds %struct.cw1200_txpriv, %struct.cw1200_txpriv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cw1200_txpriv*, %struct.cw1200_txpriv** %6, align 8
  %24 = getelementptr inbounds %struct.cw1200_txpriv, %struct.cw1200_txpriv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cw1200_notify_buffered_tx(%struct.cw1200_common* %18, %struct.sk_buff* %19, i32 %22, i32 %25)
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %28 = load %struct.cw1200_txpriv*, %struct.cw1200_txpriv** %6, align 8
  %29 = getelementptr inbounds %struct.cw1200_txpriv, %struct.cw1200_txpriv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @tx_policy_put(%struct.cw1200_common* %27, i64 %30)
  br label %32

32:                                               ; preds = %17, %3
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @ieee80211_tx_status(i32 %35, %struct.sk_buff* %36)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @cw1200_notify_buffered_tx(%struct.cw1200_common*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tx_policy_put(%struct.cw1200_common*, i64) #1

declare dso_local i32 @ieee80211_tx_status(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
