; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_sta2ap_data_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_sta2ap_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32 }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32, i32 }
%struct.sta_info = type { i32 }

@WIFI_AP_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %union.recv_frame*, %struct.sta_info**)* @sta2ap_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2ap_data_frame(%struct._adapter* %0, %union.recv_frame* %1, %struct.sta_info** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %union.recv_frame*, align 8
  %7 = alloca %struct.sta_info**, align 8
  %8 = alloca %struct.rx_pkt_attrib*, align 8
  %9 = alloca %struct.sta_priv*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca i8*, align 8
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store %union.recv_frame* %1, %union.recv_frame** %6, align 8
  store %struct.sta_info** %2, %struct.sta_info*** %7, align 8
  %12 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %13 = bitcast %union.recv_frame* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.rx_pkt_attrib* %15, %struct.rx_pkt_attrib** %8, align 8
  %16 = load %struct._adapter*, %struct._adapter** %5, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 1
  store %struct.sta_priv* %17, %struct.sta_priv** %9, align 8
  %18 = load %struct._adapter*, %struct._adapter** %5, align 8
  %19 = getelementptr inbounds %struct._adapter, %struct._adapter* %18, i32 0, i32 0
  store %struct.mlme_priv* %19, %struct.mlme_priv** %10, align 8
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %21 = call i8* @get_bssid(%struct.mlme_priv* %20)
  store i8* %21, i8** %11, align 8
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %23 = load i32, i32* @WIFI_AP_STATE, align 4
  %24 = call i64 @check_fwstate(%struct.mlme_priv* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %3
  %27 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %8, align 8
  %28 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i64 @memcmp(i32 %29, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @_FAIL, align 4
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %26
  %37 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %38 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %8, align 8
  %39 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %37, i32 %40)
  %42 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %41, %struct.sta_info** %42, align 8
  %43 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  %44 = load %struct.sta_info*, %struct.sta_info** %43, align 8
  %45 = icmp eq %struct.sta_info* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @_FAIL, align 4
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* @_SUCCESS, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %46, %34
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i8* @get_bssid(%struct.mlme_priv*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
