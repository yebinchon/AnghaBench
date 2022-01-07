; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_mux_rx_netchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_mux_rx_netchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.gsm_mux_net = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_dlci*, i8*, i32)* @gsm_mux_rx_netchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_mux_rx_netchar(%struct.gsm_dlci* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gsm_dlci*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.gsm_mux_net*, align 8
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %11 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.gsm_mux_net* @netdev_priv(%struct.net_device* %13)
  store %struct.gsm_mux_net* %14, %struct.gsm_mux_net** %9, align 8
  %15 = load %struct.gsm_mux_net*, %struct.gsm_mux_net** %9, align 8
  %16 = call i32 @muxnet_get(%struct.gsm_mux_net* %15)
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @NET_IP_ALIGN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call %struct.sk_buff* @dev_alloc_skb(i64 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.gsm_mux_net*, %struct.gsm_mux_net** %9, align 8
  %31 = call i32 @muxnet_put(%struct.gsm_mux_net* %30)
  br label %62

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load i64, i64* @NET_IP_ALIGN, align 8
  %35 = call i32 @skb_reserve(%struct.sk_buff* %33, i64 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @skb_put_data(%struct.sk_buff* %36, i8* %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store %struct.net_device* %40, %struct.net_device** %42, align 8
  %43 = load i32, i32* @ETH_P_IP, align 4
  %44 = call i32 @htons(i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @netif_rx(%struct.sk_buff* %47)
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.gsm_mux_net*, %struct.gsm_mux_net** %9, align 8
  %61 = call i32 @muxnet_put(%struct.gsm_mux_net* %60)
  br label %62

62:                                               ; preds = %32, %24
  ret void
}

declare dso_local %struct.gsm_mux_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @muxnet_get(%struct.gsm_mux_net*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @muxnet_put(%struct.gsm_mux_net*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
