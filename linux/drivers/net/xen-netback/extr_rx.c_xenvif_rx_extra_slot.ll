; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_extra_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_extra_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32 }
%struct.xenvif_pkt_state = type { i64, %struct.xen_netif_extra_info* }
%struct.xen_netif_extra_info = type { i64, i32 }
%struct.xen_netif_rx_request = type { i32 }
%struct.xen_netif_rx_response = type { i32 }

@XEN_NETIF_EXTRA_FLAG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*, %struct.xenvif_pkt_state*, %struct.xen_netif_rx_request*, %struct.xen_netif_rx_response*)* @xenvif_rx_extra_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_rx_extra_slot(%struct.xenvif_queue* %0, %struct.xenvif_pkt_state* %1, %struct.xen_netif_rx_request* %2, %struct.xen_netif_rx_response* %3) #0 {
  %5 = alloca %struct.xenvif_queue*, align 8
  %6 = alloca %struct.xenvif_pkt_state*, align 8
  %7 = alloca %struct.xen_netif_rx_request*, align 8
  %8 = alloca %struct.xen_netif_rx_response*, align 8
  %9 = alloca %struct.xen_netif_extra_info*, align 8
  %10 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %5, align 8
  store %struct.xenvif_pkt_state* %1, %struct.xenvif_pkt_state** %6, align 8
  store %struct.xen_netif_rx_request* %2, %struct.xen_netif_rx_request** %7, align 8
  store %struct.xen_netif_rx_response* %3, %struct.xen_netif_rx_response** %8, align 8
  %11 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %8, align 8
  %12 = bitcast %struct.xen_netif_rx_response* %11 to i8*
  %13 = bitcast i8* %12 to %struct.xen_netif_extra_info*
  store %struct.xen_netif_extra_info* %13, %struct.xen_netif_extra_info** %9, align 8
  %14 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %15 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %64, %4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %21 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %20, i32 0, i32 1
  %22 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.xen_netif_extra_info* %22)
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %18
  %26 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %27 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %26, i32 0, i32 1
  %28 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %28, i64 %30
  %32 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %25
  %36 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %9, align 8
  %37 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %38 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %37, i32 0, i32 1
  %39 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %39, i64 %41
  %43 = bitcast %struct.xen_netif_extra_info* %36 to i8*
  %44 = bitcast %struct.xen_netif_extra_info* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  %45 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %46 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %35
  %50 = load i32, i32* @XEN_NETIF_EXTRA_FLAG_MORE, align 4
  %51 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %9, align 8
  %52 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %35
  %56 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %57 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %56, i32 0, i32 1
  %58 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %58, i64 %60
  %62 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %69

63:                                               ; preds = %25
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %18

67:                                               ; preds = %18
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %67, %55
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.xen_netif_extra_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
