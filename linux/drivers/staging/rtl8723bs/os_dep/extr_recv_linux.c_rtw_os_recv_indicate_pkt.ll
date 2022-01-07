; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_os_recv_indicate_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_os_recv_indicate_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_11__, %struct.net_device*, i32, %struct.sta_priv, %struct.mlme_priv }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sta_priv = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.TYPE_12__ = type { i8*, %struct.net_device*, i32 }
%struct.rx_pkt_attrib = type { i32, i32, i32 }
%struct.sta_info = type { i32 }

@WIFI_AP_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i8* null, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_os_recv_indicate_pkt(%struct.adapter* %0, %struct.TYPE_12__* %1, %struct.rx_pkt_attrib* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.rx_pkt_attrib*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca %struct.sta_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.rx_pkt_attrib* %2, %struct.rx_pkt_attrib** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 4
  store %struct.mlme_priv* %15, %struct.mlme_priv** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %134

18:                                               ; preds = %3
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %20 = load i32, i32* @WIFI_AP_STATE, align 4
  %21 = call i32 @check_fwstate(%struct.mlme_priv* %19, i32 %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %97

23:                                               ; preds = %18
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store %struct.sta_info* null, %struct.sta_info** %10, align 8
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 3
  store %struct.sta_priv* %25, %struct.sta_priv** %11, align 8
  %26 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %27 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_MCAST(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %31 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 2
  %35 = call i32 @myid(i32* %34)
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i64 @memcmp(i32 %32, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %23
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = call %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter* %43)
  store %struct.sta_info* %44, %struct.sta_info** %10, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = call %struct.TYPE_12__* @rtw_skb_clone(%struct.TYPE_12__* %45)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %9, align 8
  br label %53

47:                                               ; preds = %39
  %48 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %49 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %50 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %48, i32 %51)
  store %struct.sta_info* %52, %struct.sta_info** %10, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %55 = icmp ne %struct.sta_info* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load %struct.adapter*, %struct.adapter** %4, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 1
  %59 = load %struct.net_device*, %struct.net_device** %58, align 8
  store %struct.net_device* %59, %struct.net_device** %13, align 8
  %60 = load %struct.net_device*, %struct.net_device** %13, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store %struct.net_device* %60, %struct.net_device** %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = call i32 @rtw_recv_select_queue(%struct.TYPE_12__* %64)
  %66 = call i32 @skb_set_queue_mapping(%struct.TYPE_12__* %63, i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load %struct.net_device*, %struct.net_device** %13, align 8
  %69 = call i32 @_rtw_xmit_entry(%struct.TYPE_12__* %67, %struct.net_device* %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %56
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = icmp ne %struct.TYPE_12__* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %5, align 8
  %77 = load %struct.adapter*, %struct.adapter** %4, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @DBG_COUNTER(i32 %80)
  br label %88

82:                                               ; preds = %72, %56
  %83 = load %struct.adapter*, %struct.adapter** %4, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DBG_COUNTER(i32 %86)
  br label %134

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %53
  br label %96

90:                                               ; preds = %23
  %91 = load %struct.adapter*, %struct.adapter** %4, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @DBG_COUNTER(i32 %94)
  br label %96

96:                                               ; preds = %90, %89
  br label %97

97:                                               ; preds = %96, %18
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = load %struct.adapter*, %struct.adapter** %4, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 1
  %101 = load %struct.net_device*, %struct.net_device** %100, align 8
  %102 = call i32 @eth_type_trans(%struct.TYPE_12__* %98, %struct.net_device* %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.adapter*, %struct.adapter** %4, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 1
  %107 = load %struct.net_device*, %struct.net_device** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store %struct.net_device* %107, %struct.net_device** %109, align 8
  %110 = load i8*, i8** @CHECKSUM_NONE, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.adapter*, %struct.adapter** %4, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 1
  %115 = load %struct.net_device*, %struct.net_device** %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = call i32 @rtw_netif_rx(%struct.net_device* %115, %struct.TYPE_12__* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @NET_RX_SUCCESS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %97
  %122 = load %struct.adapter*, %struct.adapter** %4, align 8
  %123 = getelementptr inbounds %struct.adapter, %struct.adapter* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @DBG_COUNTER(i32 %125)
  br label %133

127:                                              ; preds = %97
  %128 = load %struct.adapter*, %struct.adapter** %4, align 8
  %129 = getelementptr inbounds %struct.adapter, %struct.adapter* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @DBG_COUNTER(i32 %131)
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %82, %133, %3
  ret void
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @IS_MCAST(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @myid(i32*) #1

declare dso_local %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter*) #1

declare dso_local %struct.TYPE_12__* @rtw_skb_clone(%struct.TYPE_12__*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rtw_recv_select_queue(%struct.TYPE_12__*) #1

declare dso_local i32 @_rtw_xmit_entry(%struct.TYPE_12__*, %struct.net_device*) #1

declare dso_local i32 @DBG_COUNTER(i32) #1

declare dso_local i32 @eth_type_trans(%struct.TYPE_12__*, %struct.net_device*) #1

declare dso_local i32 @rtw_netif_rx(%struct.net_device*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
