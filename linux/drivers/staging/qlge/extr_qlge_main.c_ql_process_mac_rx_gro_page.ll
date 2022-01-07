; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_gro_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_gro_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.rx_ring = type { i32, i32, i32, i32, %struct.napi_struct }
%struct.napi_struct = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't get an skb, exiting.\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i32, i32)* @ql_process_mac_rx_gro_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_rx_gro_page(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.rx_ring*, align 8
  %8 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.bq_desc*, align 8
  %13 = alloca %struct.napi_struct*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %7, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %15 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %16 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %14, %struct.rx_ring* %15)
  store %struct.bq_desc* %16, %struct.bq_desc** %12, align 8
  %17 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %18 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %17, i32 0, i32 4
  store %struct.napi_struct* %18, %struct.napi_struct** %13, align 8
  %19 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %20 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %27 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %28 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %31 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %26, i32 %29, %struct.rx_ring* %30)
  %32 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %33 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @put_page(i32 %36)
  br label %137

38:                                               ; preds = %5
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.napi_struct*, %struct.napi_struct** %13, align 8
  %43 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.napi_struct*, %struct.napi_struct** %13, align 8
  %45 = call %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %11, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %38
  %49 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %50 = load i32, i32* @drv, align 4
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_err(%struct.ql_adapter* %49, i32 %50, i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %56 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %60 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @put_page(i32 %63)
  br label %137

65:                                               ; preds = %38
  %66 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %67 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @prefetch(i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %74 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %78 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %83 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @__skb_fill_page_desc(%struct.sk_buff* %72, i32 %76, i32 %81, i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %105 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %110 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %115 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %123 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @skb_record_rx_queue(%struct.sk_buff* %121, i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 65535
  br i1 %127, label %128, label %134

128:                                              ; preds = %65
  %129 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %130 = load i32, i32* @ETH_P_8021Q, align 4
  %131 = call i32 @htons(i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %129, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %65
  %135 = load %struct.napi_struct*, %struct.napi_struct** %13, align 8
  %136 = call i32 @napi_gro_frags(%struct.napi_struct* %135)
  br label %137

137:                                              ; preds = %134, %48, %25
  ret void
}

declare dso_local %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @__skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_frags(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
