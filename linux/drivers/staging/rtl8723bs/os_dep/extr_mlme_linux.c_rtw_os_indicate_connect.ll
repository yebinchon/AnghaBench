; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_mlme_linux.c_rtw_os_indicate_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_mlme_linux.c_rtw_os_indicate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64*, i32, %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_os_indicate_connect(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 2
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %8 = call i32 @check_fwstate(%struct.mlme_priv* %6, i32 %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %12 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %13 = call i32 @check_fwstate(%struct.mlme_priv* %11, i32 %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %1
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = call i32 @rtw_cfg80211_ibss_indicate_connect(%struct.adapter* %16)
  br label %21

18:                                               ; preds = %10
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = call i32 @rtw_cfg80211_indicate_connect(%struct.adapter* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = call i32 @rtw_indicate_wx_assoc_event(%struct.adapter* %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netif_carrier_on(i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @SIGALRM, align 4
  %41 = call i32 @rtw_signal_process(i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_cfg80211_ibss_indicate_connect(%struct.adapter*) #1

declare dso_local i32 @rtw_cfg80211_indicate_connect(%struct.adapter*) #1

declare dso_local i32 @rtw_indicate_wx_assoc_event(%struct.adapter*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @rtw_signal_process(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
