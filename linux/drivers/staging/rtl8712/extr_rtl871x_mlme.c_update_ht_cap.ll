; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_update_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_update_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.registry_priv, %struct.mlme_priv }
%struct.registry_priv = type { i32 }
%struct.mlme_priv = type { %struct.wlan_network, %struct.ht_priv }
%struct.wlan_network = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ht_priv = type { i32, i32, i32 }
%struct.sta_info = type { %struct.recv_reorder_ctrl* }
%struct.recv_reorder_ctrl = type { i32, i32 }
%struct.ieee80211_ht_cap = type { i32 }

@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_AMPDU_FACTOR = common dso_local global i32 0, align 4
@_HT_ADD_INFO_IE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32*, i64)* @update_ht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ht_cap(%struct._adapter* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca %struct.sta_info*, align 8
  %13 = alloca %struct.ieee80211_ht_cap*, align 8
  %14 = alloca %struct.recv_reorder_ctrl*, align 8
  %15 = alloca %struct.mlme_priv*, align 8
  %16 = alloca %struct.ht_priv*, align 8
  %17 = alloca %struct.registry_priv*, align 8
  %18 = alloca %struct.wlan_network*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load %struct._adapter*, %struct._adapter** %4, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 2
  store %struct.mlme_priv* %20, %struct.mlme_priv** %15, align 8
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 1
  store %struct.ht_priv* %22, %struct.ht_priv** %16, align 8
  %23 = load %struct._adapter*, %struct._adapter** %4, align 8
  %24 = getelementptr inbounds %struct._adapter, %struct._adapter* %23, i32 0, i32 1
  store %struct.registry_priv* %24, %struct.registry_priv** %17, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 0
  store %struct.wlan_network* %26, %struct.wlan_network** %18, align 8
  %27 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %28 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %132

32:                                               ; preds = %3
  %33 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %34 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.registry_priv*, %struct.registry_priv** %17, align 8
  %39 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %44 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37, %32
  store i64 0, i64* %10, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 4
  %51 = call i32* @r8712_get_ie(i32* %47, i32 %48, i64* %10, i64 %50)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = load i64, i64* %10, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = bitcast i32* %59 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %60, %struct.ieee80211_ht_cap** %13, align 8
  %61 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %13, align 8
  %62 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_FACTOR, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 3
  %68 = shl i32 1, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %71 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %57, %54, %45
  %73 = load %struct._adapter*, %struct._adapter** %4, align 8
  %74 = call %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter* %73)
  store %struct.sta_info* %74, %struct.sta_info** %11, align 8
  %75 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %76 = icmp ne %struct.sta_info* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 0
  %84 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %84, i64 %86
  store %struct.recv_reorder_ctrl* %87, %struct.recv_reorder_ctrl** %14, align 8
  %88 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %14, align 8
  %89 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %88, i32 0, i32 0
  store i32 65535, i32* %89, align 4
  %90 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %14, align 8
  %91 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %90, i32 0, i32 1
  store i32 65535, i32* %91, align 4
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %78

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %72
  %97 = load %struct._adapter*, %struct._adapter** %4, align 8
  %98 = getelementptr inbounds %struct._adapter, %struct._adapter* %97, i32 0, i32 0
  %99 = load %struct.wlan_network*, %struct.wlan_network** %18, align 8
  %100 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.sta_info* @r8712_get_stainfo(i32* %98, i32 %102)
  store %struct.sta_info* %103, %struct.sta_info** %12, align 8
  %104 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %105 = icmp ne %struct.sta_info* %104, null
  br i1 %105, label %106, label %125

106:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %121, %106
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 16
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %112 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %111, i32 0, i32 0
  %113 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %113, i64 %115
  store %struct.recv_reorder_ctrl* %116, %struct.recv_reorder_ctrl** %14, align 8
  %117 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %14, align 8
  %118 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %117, i32 0, i32 0
  store i32 65535, i32* %118, align 4
  %119 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %14, align 8
  %120 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %119, i32 0, i32 1
  store i32 65535, i32* %120, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %107

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %124, %96
  store i64 0, i64* %10, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %129 = load i64, i64* %6, align 8
  %130 = sub i64 %129, 4
  %131 = call i32* @r8712_get_ie(i32* %127, i32 %128, i64* %10, i64 %130)
  store i32* %131, i32** %7, align 8
  br label %132

132:                                              ; preds = %125, %31
  ret void
}

declare dso_local i32* @r8712_get_ie(i32*, i32, i64*, i64) #1

declare dso_local %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter*) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
