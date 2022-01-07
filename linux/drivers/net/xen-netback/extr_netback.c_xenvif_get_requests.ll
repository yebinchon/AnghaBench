; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_get_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_get_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i64*, i32 }
%struct.xen_netif_tx_request = type { i32 }
%struct.gnttab_map_grant_ref = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i32, %struct.sk_buff*, i32* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gnttab_map_grant_ref* (%struct.xenvif_queue*, %struct.sk_buff*, %struct.xen_netif_tx_request*, %struct.gnttab_map_grant_ref*, i32, %struct.sk_buff*)* @xenvif_get_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gnttab_map_grant_ref* @xenvif_get_requests(%struct.xenvif_queue* %0, %struct.sk_buff* %1, %struct.xen_netif_tx_request* %2, %struct.gnttab_map_grant_ref* %3, i32 %4, %struct.sk_buff* %5) #0 {
  %7 = alloca %struct.xenvif_queue*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.xen_netif_tx_request*, align 8
  %10 = alloca %struct.gnttab_map_grant_ref*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.skb_shared_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.xen_netif_tx_request* %2, %struct.xen_netif_tx_request** %9, align 8
  store %struct.gnttab_map_grant_ref* %3, %struct.gnttab_map_grant_ref** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %19)
  store %struct.skb_shared_info* %20, %struct.skb_shared_info** %13, align 8
  %21 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %22 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call %struct.TYPE_2__* @XENVIF_TX_CB(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %15, align 8
  %28 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %29 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %18, align 4
  %31 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %32 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i64 @frag_get_pending_idx(i32* %34)
  %36 = load i64, i64* %15, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %41 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %73, %6
  %43 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %44 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %42
  %49 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %50 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = call i64 @pending_index(i32 %51)
  store i64 %53, i64* %17, align 8
  %54 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %55 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %15, align 8
  %60 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %9, align 8
  %63 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %10, align 8
  %64 = call i32 @xenvif_tx_create_map_op(%struct.xenvif_queue* %60, i64 %61, %struct.xen_netif_tx_request* %62, i32 0, %struct.gnttab_map_grant_ref* %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %67 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i64, i64* %15, align 8
  %72 = call i32 @frag_set_pending_idx(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %48
  %74 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %75 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %9, align 8
  %79 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %78, i32 1
  store %struct.xen_netif_tx_request* %79, %struct.xen_netif_tx_request** %9, align 8
  %80 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %10, align 8
  %81 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %80, i32 1
  store %struct.gnttab_map_grant_ref* %81, %struct.gnttab_map_grant_ref** %10, align 8
  br label %42

82:                                               ; preds = %42
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %82
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %86)
  store %struct.skb_shared_info* %87, %struct.skb_shared_info** %13, align 8
  %88 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %89 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %14, align 8
  %91 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %92 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %124, %85
  %94 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %95 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %93
  %100 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %101 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = call i64 @pending_index(i32 %102)
  store i64 %104, i64* %17, align 8
  %105 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %106 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %17, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %15, align 8
  %111 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %9, align 8
  %114 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %10, align 8
  %115 = call i32 @xenvif_tx_create_map_op(%struct.xenvif_queue* %111, i64 %112, %struct.xen_netif_tx_request* %113, i32 0, %struct.gnttab_map_grant_ref* %114)
  %116 = load i32*, i32** %14, align 8
  %117 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %118 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i64, i64* %15, align 8
  %123 = call i32 @frag_set_pending_idx(i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %99
  %125 = load %struct.skb_shared_info*, %struct.skb_shared_info** %13, align 8
  %126 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %9, align 8
  %130 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %129, i32 1
  store %struct.xen_netif_tx_request* %130, %struct.xen_netif_tx_request** %9, align 8
  %131 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %10, align 8
  %132 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %131, i32 1
  store %struct.gnttab_map_grant_ref* %132, %struct.gnttab_map_grant_ref** %10, align 8
  br label %93

133:                                              ; preds = %93
  %134 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %135)
  %137 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %136, i32 0, i32 1
  store %struct.sk_buff* %134, %struct.sk_buff** %137, align 8
  br label %138

138:                                              ; preds = %133, %82
  %139 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %10, align 8
  ret %struct.gnttab_map_grant_ref* %139
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @XENVIF_TX_CB(%struct.sk_buff*) #1

declare dso_local i64 @frag_get_pending_idx(i32*) #1

declare dso_local i64 @pending_index(i32) #1

declare dso_local i32 @xenvif_tx_create_map_op(%struct.xenvif_queue*, i64, %struct.xen_netif_tx_request*, i32, %struct.gnttab_map_grant_ref*) #1

declare dso_local i32 @frag_set_pending_idx(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
