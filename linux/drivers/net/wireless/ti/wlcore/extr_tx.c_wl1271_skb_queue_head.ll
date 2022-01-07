; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_skb_queue_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_skb_queue_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.wl12xx_vif = type { i64, i32* }
%struct.sk_buff = type { i32 }

@WL1271_FLAG_DUMMY_PACKET_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64)* @wl1271_skb_queue_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_skb_queue_head(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %11)
  %13 = call i32 @wl1271_tx_get_queue(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i64 @wl12xx_is_dummy_packet(%struct.wl1271* %14, %struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* @WL1271_FLAG_DUMMY_PACKET_PENDING, align 4
  %20 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 4
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  br label %48

23:                                               ; preds = %4
  %24 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @skb_queue_head(i32* %33, %struct.sk_buff* %34)
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = sub i64 %40, 1
  %42 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = urem i64 %41, %44
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %47 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %23, %18
  %49 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %50 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %49, i32 0, i32 1
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %62 = icmp ne %struct.wl12xx_vif* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %48
  %64 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %65 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63, %48
  %73 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 1
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  ret void
}

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
