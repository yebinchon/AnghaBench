; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_data_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_data_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32 }
%struct.xenvif_pkt_state = type { i64, i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.xen_netif_rx_request = type { i32 }
%struct.xen_netif_rx_response = type { i32, i64, i32, i32 }

@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@XEN_NETRXF_more_data = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@XEN_NETRXF_csum_blank = common dso_local global i32 0, align 4
@XEN_NETRXF_data_validated = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@XEN_NETRXF_extra_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*, %struct.xenvif_pkt_state*, %struct.xen_netif_rx_request*, %struct.xen_netif_rx_response*)* @xenvif_rx_data_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_rx_data_slot(%struct.xenvif_queue* %0, %struct.xenvif_pkt_state* %1, %struct.xen_netif_rx_request* %2, %struct.xen_netif_rx_response* %3) #0 {
  %5 = alloca %struct.xenvif_queue*, align 8
  %6 = alloca %struct.xenvif_pkt_state*, align 8
  %7 = alloca %struct.xen_netif_rx_request*, align 8
  %8 = alloca %struct.xen_netif_rx_response*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %5, align 8
  store %struct.xenvif_pkt_state* %1, %struct.xenvif_pkt_state** %6, align 8
  store %struct.xen_netif_rx_request* %2, %struct.xen_netif_rx_request** %7, align 8
  store %struct.xen_netif_rx_response* %3, %struct.xen_netif_rx_response** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %44, %4
  %15 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %16 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @xenvif_rx_next_chunk(%struct.xenvif_queue* %15, %struct.xenvif_pkt_state* %16, i32 %17, i8** %12, i64* %11)
  %19 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %20 = load %struct.xen_netif_rx_request*, %struct.xen_netif_rx_request** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @xenvif_rx_copy_add(%struct.xenvif_queue* %19, %struct.xen_netif_rx_request* %20, i32 %21, i8* %22, i64 %23)
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %32 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %41 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %14, label %46

46:                                               ; preds = %44
  %47 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %48 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @XEN_NETRXF_more_data, align 4
  store i32 %52, i32* %10, align 4
  br label %54

53:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %56 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %54
  %60 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %61 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %60, i32 0, i32 3
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %13, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load i32, i32* @XEN_NETRXF_csum_blank, align 4
  %70 = load i32, i32* @XEN_NETRXF_data_validated, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %85

74:                                               ; preds = %59
  %75 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @XEN_NETRXF_data_validated, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.xenvif_pkt_state*, %struct.xenvif_pkt_state** %6, align 8
  %87 = getelementptr inbounds %struct.xenvif_pkt_state, %struct.xenvif_pkt_state* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @XEN_NETRXF_extra_info, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %54
  %96 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %8, align 8
  %97 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %8, align 8
  %100 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.xen_netif_rx_request*, %struct.xen_netif_rx_request** %7, align 8
  %102 = getelementptr inbounds %struct.xen_netif_rx_request, %struct.xen_netif_rx_request* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %8, align 8
  %105 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %8, align 8
  %109 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  ret void
}

declare dso_local i32 @xenvif_rx_next_chunk(%struct.xenvif_queue*, %struct.xenvif_pkt_state*, i32, i8**, i64*) #1

declare dso_local i32 @xenvif_rx_copy_add(%struct.xenvif_queue*, %struct.xen_netif_rx_request*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
