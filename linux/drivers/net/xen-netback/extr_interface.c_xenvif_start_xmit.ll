; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.xenvif = type { %struct.TYPE_6__*, %struct.TYPE_4__, i64, i64, %struct.xenvif_queue*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.xenvif_queue = type { i32*, i32* }
%struct.xenvif_rx_cb = type { i64 }
%struct.ethhdr = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Invalid queue %hu for packet on interface %s\0A\00", align 1
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@XEN_NETIF_CTRL_HASH_ALGORITHM_NONE = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xenvif_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xenvif*, align 8
  %7 = alloca %struct.xenvif_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xenvif_rx_cb*, align 8
  %11 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.xenvif* @netdev_priv(%struct.net_device* %12)
  store %struct.xenvif* %13, %struct.xenvif** %6, align 8
  store %struct.xenvif_queue* null, %struct.xenvif_queue** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp ne %struct.net_device* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %22 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @READ_ONCE(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %116

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %37 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = urem i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %34, %28
  %46 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %47 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %46, i32 0, i32 4
  %48 = load %struct.xenvif_queue*, %struct.xenvif_queue** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %48, i64 %50
  store %struct.xenvif_queue* %51, %struct.xenvif_queue** %7, align 8
  %52 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %53 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %45
  %57 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %58 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %63 = call i32 @xenvif_schedulable(%struct.xenvif* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %56, %45
  br label %116

66:                                               ; preds = %61
  %67 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %68 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PACKET_MULTICAST, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.ethhdr*
  store %struct.ethhdr* %81, %struct.ethhdr** %11, align 8
  %82 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %83 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %84 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @xenvif_mcast_match(%struct.xenvif* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %77
  br label %116

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %71, %66
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call %struct.xenvif_rx_cb* @XENVIF_RX_CB(%struct.sk_buff* %91)
  store %struct.xenvif_rx_cb* %92, %struct.xenvif_rx_cb** %10, align 8
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %95 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.xenvif_rx_cb*, %struct.xenvif_rx_cb** %10, align 8
  %99 = getelementptr inbounds %struct.xenvif_rx_cb, %struct.xenvif_rx_cb* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %101 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @XEN_NETIF_CTRL_HASH_ALGORITHM_NONE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %90
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @skb_clear_hash(%struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %106, %90
  %110 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call i32 @xenvif_rx_queue_tail(%struct.xenvif_queue* %110, %struct.sk_buff* %111)
  %113 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %114 = call i32 @xenvif_kick_thread(%struct.xenvif_queue* %113)
  %115 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %115, i32* %3, align 4
  br label %127

116:                                              ; preds = %88, %65, %27
  %117 = load %struct.xenvif*, %struct.xenvif** %6, align 8
  %118 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = call i32 @dev_kfree_skb(%struct.sk_buff* %124)
  %126 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %116, %109
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.xenvif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @xenvif_schedulable(%struct.xenvif*) #1

declare dso_local i32 @xenvif_mcast_match(%struct.xenvif*, i32) #1

declare dso_local %struct.xenvif_rx_cb* @XENVIF_RX_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

declare dso_local i32 @xenvif_rx_queue_tail(%struct.xenvif_queue*, %struct.sk_buff*) #1

declare dso_local i32 @xenvif_kick_thread(%struct.xenvif_queue*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
