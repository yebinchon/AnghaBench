; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xenvif_pkt_state = type { i64, i64, i64 }
%struct.xen_netif_rx_request = type { i32 }
%struct.xen_netif_rx_response = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*)* @xenvif_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_rx_skb(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  %3 = alloca %struct.xenvif_pkt_state, align 8
  %4 = alloca %struct.xen_netif_rx_request*, align 8
  %5 = alloca %struct.xen_netif_rx_response*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %6 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %7 = call i32 @xenvif_rx_next_skb(%struct.xenvif_queue* %6, %struct.xenvif_pkt_state* %3)
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %10 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %60, %1
  %12 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %13 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %12, i32 0, i32 0
  %14 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %15 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.xen_netif_rx_request* @RING_GET_REQUEST(%struct.TYPE_3__* %13, i32 %17)
  store %struct.xen_netif_rx_request* %18, %struct.xen_netif_rx_request** %4, align 8
  %19 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %20 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %19, i32 0, i32 0
  %21 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %22 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_3__* %20, i32 %24)
  store %struct.xen_netif_rx_response* %25, %struct.xen_netif_rx_response** %5, align 8
  %26 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %3, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %3, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %35 = load %struct.xen_netif_rx_request*, %struct.xen_netif_rx_request** %4, align 8
  %36 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %5, align 8
  %37 = call i32 @xenvif_rx_extra_slot(%struct.xenvif_queue* %34, %struct.xenvif_pkt_state* %3, %struct.xen_netif_rx_request* %35, %struct.xen_netif_rx_response* %36)
  br label %43

38:                                               ; preds = %29, %11
  %39 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %40 = load %struct.xen_netif_rx_request*, %struct.xen_netif_rx_request** %4, align 8
  %41 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %5, align 8
  %42 = call i32 @xenvif_rx_data_slot(%struct.xenvif_queue* %39, %struct.xenvif_pkt_state* %3, %struct.xen_netif_rx_request* %40, %struct.xen_netif_rx_response* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %45 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %3, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %3, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %3, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ true, %52 ], [ %59, %56 ]
  br i1 %61, label %11, label %62

62:                                               ; preds = %60
  %63 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %64 = call i32 @xenvif_rx_complete(%struct.xenvif_queue* %63, %struct.xenvif_pkt_state* %3)
  ret void
}

declare dso_local i32 @xenvif_rx_next_skb(%struct.xenvif_queue*, %struct.xenvif_pkt_state*) #1

declare dso_local %struct.xen_netif_rx_request* @RING_GET_REQUEST(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @xenvif_rx_extra_slot(%struct.xenvif_queue*, %struct.xenvif_pkt_state*, %struct.xen_netif_rx_request*, %struct.xen_netif_rx_response*) #1

declare dso_local i32 @xenvif_rx_data_slot(%struct.xenvif_queue*, %struct.xenvif_pkt_state*, %struct.xen_netif_rx_request*, %struct.xen_netif_rx_response*) #1

declare dso_local i32 @xenvif_rx_complete(%struct.xenvif_queue*, %struct.xenvif_pkt_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
