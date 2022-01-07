; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_sta2ap_data_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_sta2ap_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32 }
%struct.sta_priv = type { i32 }
%struct.recv_frame = type { %struct.TYPE_2__*, %struct.rx_pkt_attrib }
%struct.TYPE_2__ = type { i8* }
%struct.rx_pkt_attrib = type { i32, i32, i32 }
%struct.sta_info = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't get psta under AP_MODE; drop pkt\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"issue_deauth to sta=%pM for the reason(7)\0A\00", align 1
@WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA = common dso_local global i32 0, align 4
@RTW_RX_HANDLED = common dso_local global i32 0, align 4
@WIFI_QOS_DATA_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*, %struct.sta_info**)* @sta2ap_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2ap_data_frame(%struct.adapter* %0, %struct.recv_frame* %1, %struct.sta_info** %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_frame*, align 8
  %6 = alloca %struct.sta_info**, align 8
  %7 = alloca %struct.rx_pkt_attrib*, align 8
  %8 = alloca %struct.sta_priv*, align 8
  %9 = alloca %struct.mlme_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %5, align 8
  store %struct.sta_info** %2, %struct.sta_info*** %6, align 8
  %14 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %15 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %14, i32 0, i32 1
  store %struct.rx_pkt_attrib* %15, %struct.rx_pkt_attrib** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 2
  store %struct.sta_priv* %17, %struct.sta_priv** %8, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  store %struct.mlme_priv* %19, %struct.mlme_priv** %9, align 8
  %20 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %21 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %26 = call i8* @get_bssid(%struct.mlme_priv* %25)
  store i8* %26, i8** %11, align 8
  %27 = load i32, i32* @_SUCCESS, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %29 = load i32, i32* @WIFI_AP_STATE, align 4
  %30 = call i64 @check_fwstate(%struct.mlme_priv* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %3
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i64 @memcmp(i32 %35, i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @_FAIL, align 4
  store i32 %41, i32* %12, align 4
  br label %121

42:                                               ; preds = %32
  %43 = load %struct.sta_priv*, %struct.sta_priv** %8, align 8
  %44 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %45 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %43, i32 %46)
  %48 = load %struct.sta_info**, %struct.sta_info*** %6, align 8
  store %struct.sta_info* %47, %struct.sta_info** %48, align 8
  %49 = load %struct.sta_info**, %struct.sta_info*** %6, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %49, align 8
  %51 = icmp ne %struct.sta_info* %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %54 = load i32, i32* @_drv_err_, align 4
  %55 = call i32 @RT_TRACE(i32 %53, i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %57 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DBG_88E(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %4, align 8
  %61 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %62 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA, align 4
  %65 = call i32 @issue_deauth(%struct.adapter* %60, i32 %63, i32 %64)
  %66 = load i32, i32* @RTW_RX_HANDLED, align 4
  store i32 %66, i32* %12, align 4
  br label %121

67:                                               ; preds = %42
  %68 = load %struct.adapter*, %struct.adapter** %4, align 8
  %69 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %70 = call i32 @process_pwrbit_data(%struct.adapter* %68, %struct.recv_frame* %69)
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @GetFrameSubType(i8* %71)
  %73 = load i32, i32* @WIFI_QOS_DATA_TYPE, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @WIFI_QOS_DATA_TYPE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.adapter*, %struct.adapter** %4, align 8
  %79 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %80 = call i32 @process_wmmps_data(%struct.adapter* %78, %struct.recv_frame* %79)
  br label %81

81:                                               ; preds = %77, %67
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @GetFrameSubType(i8* %82)
  %84 = call i32 @BIT(i32 6)
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.adapter*, %struct.adapter** %4, align 8
  %89 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %90 = load %struct.sta_info**, %struct.sta_info*** %6, align 8
  %91 = load %struct.sta_info*, %struct.sta_info** %90, align 8
  %92 = call i32 @count_rx_stats(%struct.adapter* %88, %struct.recv_frame* %89, %struct.sta_info* %91)
  %93 = load i32, i32* @RTW_RX_HANDLED, align 4
  store i32 %93, i32* %12, align 4
  br label %121

94:                                               ; preds = %81
  br label %120

95:                                               ; preds = %3
  %96 = load %struct.adapter*, %struct.adapter** %4, align 8
  %97 = getelementptr inbounds %struct.adapter, %struct.adapter* %96, i32 0, i32 0
  %98 = call i8* @myid(i32* %97)
  store i8* %98, i8** %13, align 8
  %99 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %100 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %13, align 8
  %103 = load i32, i32* @ETH_ALEN, align 4
  %104 = call i64 @memcmp(i32 %101, i8* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* @RTW_RX_HANDLED, align 4
  store i32 %107, i32* %12, align 4
  br label %121

108:                                              ; preds = %95
  %109 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %110 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DBG_88E(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.adapter*, %struct.adapter** %4, align 8
  %114 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %115 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA, align 4
  %118 = call i32 @issue_deauth(%struct.adapter* %113, i32 %116, i32 %117)
  %119 = load i32, i32* @RTW_RX_HANDLED, align 4
  store i32 %119, i32* %12, align 4
  br label %121

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %120, %108, %106, %87, %52, %40
  %122 = load i32, i32* %12, align 4
  ret i32 %122
}

declare dso_local i8* @get_bssid(%struct.mlme_priv*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @DBG_88E(i8*, i32) #1

declare dso_local i32 @issue_deauth(%struct.adapter*, i32, i32) #1

declare dso_local i32 @process_pwrbit_data(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @GetFrameSubType(i8*) #1

declare dso_local i32 @process_wmmps_data(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @count_rx_stats(%struct.adapter*, %struct.recv_frame*, %struct.sta_info*) #1

declare dso_local i8* @myid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
