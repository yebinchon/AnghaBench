; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_HT_info_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_HT_info_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.mlme_ext_priv }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32 }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.ndis_80211_var_ie = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HT_info_handler(%struct.adapter* %0, %struct.ndis_80211_var_ie* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ndis_80211_var_ie*, align 8
  %5 = alloca %struct.mlme_ext_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.ht_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.ndis_80211_var_ie* %1, %struct.ndis_80211_var_ie** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %5, align 8
  %11 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %11, i32 0, i32 0
  store %struct.mlme_ext_info* %12, %struct.mlme_ext_info** %6, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store %struct.mlme_priv* %14, %struct.mlme_priv** %7, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 0
  store %struct.ht_priv* %16, %struct.ht_priv** %8, align 8
  %17 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %18 = icmp ne %struct.ndis_80211_var_ie* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %45

26:                                               ; preds = %20
  %27 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %28 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %45

33:                                               ; preds = %26
  %34 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %37 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %36, i32 0, i32 1
  %38 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %39 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %42 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32* %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %33, %32, %25, %19
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
