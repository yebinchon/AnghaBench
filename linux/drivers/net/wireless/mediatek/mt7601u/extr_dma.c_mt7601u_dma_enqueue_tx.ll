; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_dma_enqueue_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_dma_enqueue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mt76_wcid = type { i32 }

@MT_TXD_PKT_INFO_80211 = common dso_local global i32 0, align 4
@MT_TXD_PKT_INFO_WIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_dma_enqueue_tx(%struct.mt7601u_dev* %0, %struct.sk_buff* %1, %struct.mt76_wcid* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mt76_wcid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.mt76_wcid* %2, %struct.mt76_wcid** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @q2ep(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @MT_TXD_PKT_INFO_80211, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.mt76_wcid*, %struct.mt76_wcid** %8, align 8
  %17 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @MT_TXD_PKT_INFO_WIV, align 4
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ep2dmaq(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mt7601u_dma_skb_wrap_pkt(%struct.sk_buff* %25, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @mt7601u_dma_submit_tx(%struct.mt7601u_dev* %35, %struct.sk_buff* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %43 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @ieee80211_free_txskb(i32 %44, %struct.sk_buff* %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %41, %32
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @q2ep(i32) #1

declare dso_local i32 @mt7601u_dma_skb_wrap_pkt(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ep2dmaq(i32) #1

declare dso_local i32 @mt7601u_dma_submit_tx(%struct.mt7601u_dev*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
