; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.xenvif_queue = type { i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xenvif_queue*)* @xenvif_rx_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xenvif_rx_dequeue(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %5 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %6 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %10 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %9, i32 0, i32 2
  %11 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_4__* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %19 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %23 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %26 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %14
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %31 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %36 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %34, i32 %37)
  store %struct.netdev_queue* %38, %struct.netdev_queue** %4, align 8
  %39 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %40 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %39)
  br label %41

41:                                               ; preds = %29, %14
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %44 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %47
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_4__*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
