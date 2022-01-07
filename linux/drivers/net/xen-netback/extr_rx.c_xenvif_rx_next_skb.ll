; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_next_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_next_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.xenvif_pkt_state = type { i32, i32, %struct.xen_netif_extra_info*, i64, %struct.sk_buff*, %struct.sk_buff* }
%struct.xen_netif_extra_info = type { i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i32 }
%struct.sk_buff = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_HASH = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_HASH_ALGORITHM_TOEPLITZ = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@_XEN_NETIF_CTRL_HASH_TYPE_IPV4_TCP = common dso_local global i32 0, align 4
@_XEN_NETIF_CTRL_HASH_TYPE_IPV6_TCP = common dso_local global i32 0, align 4
@_XEN_NETIF_CTRL_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@_XEN_NETIF_CTRL_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*, %struct.xenvif_pkt_state*)* @xenvif_rx_next_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_rx_next_skb(%struct.xenvif_queue* %0, %struct.xenvif_pkt_state* %1) #0 {
  %3 = alloca %struct.xenvif_queue*, align 8
  %4 = alloca %struct.xenvif_pkt_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_netif_extra_info*, align 8
  %8 = alloca %struct.xen_netif_extra_info*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %3, align 8
  store %struct.xenvif_pkt_state* %1, %struct.xenvif_pkt_state** %4, align 8
  %9 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %10 = call %struct.sk_buff* @xenvif_rx_dequeue(%struct.xenvif_queue* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %15 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %13
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %22 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %27 = call i32 @memset(%struct.xenvif_pkt_state* %26, i32 0, i32 40)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %30 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %29, i32 0, i32 5
  store %struct.sk_buff* %28, %struct.sk_buff** %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %33 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %32, i32 0, i32 4
  store %struct.sk_buff* %31, %struct.sk_buff** %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %38 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %40 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @xenvif_gso_type(%struct.sk_buff* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %46 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %2
  %53 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %54 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %53, i32 0, i32 2
  %55 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %54, align 8
  %56 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %55, i64 %58
  store %struct.xen_netif_extra_info* %59, %struct.xen_netif_extra_info** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %62 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %70 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 8
  %73 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %74 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %78 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %82 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %83 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %85 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %87 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %52, %2
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %164

95:                                               ; preds = %90
  %96 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %97 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %96, i32 0, i32 2
  %98 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %97, align 8
  %99 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_HASH, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %98, i64 %101
  store %struct.xen_netif_extra_info* %102, %struct.xen_netif_extra_info** %8, align 8
  %103 = load i32, i32* @XEN_NETIF_CTRL_HASH_ALGORITHM_TOEPLITZ, align 4
  %104 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %8, align 8
  %105 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  store i32 %103, i32* %107, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %95
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @ETH_P_IP, align 4
  %117 = call i64 @htons(i32 %116)
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @_XEN_NETIF_CTRL_HASH_TYPE_IPV4_TCP, align 4
  br label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @_XEN_NETIF_CTRL_HASH_TYPE_IPV6_TCP, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %8, align 8
  %126 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 8
  br label %146

129:                                              ; preds = %95
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @ETH_P_IP, align 4
  %134 = call i64 @htons(i32 %133)
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @_XEN_NETIF_CTRL_HASH_TYPE_IPV4, align 4
  br label %140

138:                                              ; preds = %129
  %139 = load i32, i32* @_XEN_NETIF_CTRL_HASH_TYPE_IPV6, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  %142 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %8, align 8
  %143 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 %141, i32* %145, align 8
  br label %146

146:                                              ; preds = %140, %123
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = call i32 @skb_get_hash_raw(%struct.sk_buff* %147)
  %149 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %8, align 8
  %150 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  store i32 %148, i32* %154, align 4
  %155 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_HASH, align 4
  %156 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %8, align 8
  %157 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %8, align 8
  %159 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %4, align 8
  %161 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %146, %90
  ret void
}

declare dso_local %struct.sk_buff* @xenvif_rx_dequeue(%struct.xenvif_queue*) #1

declare dso_local i32 @memset(%struct.xenvif_pkt_state*, i32, i32) #1

declare dso_local i32 @xenvif_gso_type(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_get_hash_raw(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
