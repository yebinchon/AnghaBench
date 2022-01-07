; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_net.c_net_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_net.c_net_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i64 }
%struct.net_local = type { i64, i64, i32, %struct.sk_buff** }
%struct.TYPE_2__ = type { i32 }

@MAX_SKB_BUFFERS = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @net_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_send_packet(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_local*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = bitcast %struct.net_device* %6 to %struct.net_local*
  store %struct.net_local* %7, %struct.net_local** %5, align 8
  %8 = load %struct.net_local*, %struct.net_local** %5, align 8
  %9 = getelementptr inbounds %struct.net_local, %struct.net_local* %8, i32 0, i32 2
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = load %struct.net_local*, %struct.net_local** %5, align 8
  %13 = getelementptr inbounds %struct.net_local, %struct.net_local* %12, i32 0, i32 3
  %14 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %15 = load %struct.net_local*, %struct.net_local** %5, align 8
  %16 = getelementptr inbounds %struct.net_local, %struct.net_local* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %14, i64 %17
  store %struct.sk_buff* %11, %struct.sk_buff** %19, align 8
  %20 = load %struct.net_local*, %struct.net_local** %5, align 8
  %21 = getelementptr inbounds %struct.net_local, %struct.net_local* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX_SKB_BUFFERS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.net_local*, %struct.net_local** %5, align 8
  %27 = getelementptr inbounds %struct.net_local, %struct.net_local* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.net_local*, %struct.net_local** %5, align 8
  %30 = getelementptr inbounds %struct.net_local, %struct.net_local* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netif_trans_update(%struct.net_device* %33)
  %35 = load %struct.net_local*, %struct.net_local** %5, align 8
  %36 = getelementptr inbounds %struct.net_local, %struct.net_local* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAX_SKB_BUFFERS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netif_stop_queue(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %40, %28
  %44 = load %struct.net_local*, %struct.net_local** %5, align 8
  %45 = getelementptr inbounds %struct.net_local, %struct.net_local* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.net_local*, %struct.net_local** %5, align 8
  %48 = getelementptr inbounds %struct.net_local, %struct.net_local* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @schedule_work(i32* %56)
  br label %58

58:                                               ; preds = %51, %43
  %59 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
