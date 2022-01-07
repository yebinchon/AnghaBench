; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_cmd.c_ConstructNullFunctionData.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_cmd.c_ConstructNullFunctionData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i64* }
%struct.mlme_priv = type { %struct.wlan_network }
%struct.wlan_network = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i64 }
%struct.ieee80211_qos_hdr = type { i32 }

@WIFI_QOS_DATA_NULL = common dso_local global i32 0, align 4
@WIFI_DATA_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64*, i32*, i64*, i64, i64, i64, i64)* @ConstructNullFunctionData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConstructNullFunctionData(%struct.adapter* %0, i64* %1, i32* %2, i64* %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ieee80211_hdr*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mlme_priv*, align 8
  %21 = alloca %struct.wlan_network*, align 8
  %22 = alloca %struct.mlme_ext_priv*, align 8
  %23 = alloca %struct.mlme_ext_info*, align 8
  %24 = alloca %struct.wlan_bssid_ex*, align 8
  %25 = alloca %struct.ieee80211_qos_hdr*, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %26 = load %struct.adapter*, %struct.adapter** %9, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 2
  store %struct.mlme_priv* %27, %struct.mlme_priv** %20, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %20, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 0
  store %struct.wlan_network* %29, %struct.wlan_network** %21, align 8
  %30 = load %struct.adapter*, %struct.adapter** %9, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  store %struct.mlme_ext_priv* %31, %struct.mlme_ext_priv** %22, align 8
  %32 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %22, align 8
  %33 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %32, i32 0, i32 0
  store %struct.mlme_ext_info* %33, %struct.mlme_ext_info** %23, align 8
  %34 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %23, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %34, i32 0, i32 0
  store %struct.wlan_bssid_ex* %35, %struct.wlan_bssid_ex** %24, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = bitcast i64* %36 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %37, %struct.ieee80211_hdr** %17, align 8
  %38 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %38, i32 0, i32 3
  store i64* %39, i64** %18, align 8
  %40 = load i64*, i64** %18, align 8
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %8
  %44 = load i64*, i64** %18, align 8
  %45 = call i32 @SetPwrMgt(i64* %44)
  br label %46

46:                                               ; preds = %43, %8
  %47 = load %struct.wlan_network*, %struct.wlan_network** %21, align 8
  %48 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %96 [
    i32 128, label %51
    i32 130, label %73
    i32 129, label %95
  ]

51:                                               ; preds = %46
  %52 = load i64*, i64** %18, align 8
  %53 = call i32 @SetToDs(i64* %52)
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %24, align 8
  %58 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = call i32 @ether_addr_copy(i32 %56, i64* %59)
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.adapter*, %struct.adapter** %9, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = call i64* @myid(i32* %65)
  %67 = call i32 @ether_addr_copy(i32 %63, i64* %66)
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64*, i64** %12, align 8
  %72 = call i32 @ether_addr_copy(i32 %70, i64* %71)
  br label %116

73:                                               ; preds = %46
  %74 = load i64*, i64** %18, align 8
  %75 = call i32 @SetFrDs(i64* %74)
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64*, i64** %12, align 8
  %80 = call i32 @ether_addr_copy(i32 %78, i64* %79)
  %81 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %82 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %24, align 8
  %85 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = call i32 @ether_addr_copy(i32 %83, i64* %86)
  %88 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %89 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.adapter*, %struct.adapter** %9, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = call i64* @myid(i32* %92)
  %94 = call i32 @ether_addr_copy(i32 %90, i64* %93)
  br label %116

95:                                               ; preds = %46
  br label %96

96:                                               ; preds = %46, %95
  %97 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i64*, i64** %12, align 8
  %101 = call i32 @ether_addr_copy(i32 %99, i64* %100)
  %102 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %103 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.adapter*, %struct.adapter** %9, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 0
  %107 = call i64* @myid(i32* %106)
  %108 = call i32 @ether_addr_copy(i32 %104, i64* %107)
  %109 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %110 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %24, align 8
  %113 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = call i32 @ether_addr_copy(i32 %111, i64* %114)
  br label %116

116:                                              ; preds = %96, %73, %51
  %117 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %118 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %117, i32 0)
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load i64*, i64** %10, align 8
  %123 = load i32, i32* @WIFI_QOS_DATA_NULL, align 4
  %124 = call i32 @SetFrameSubType(i64* %122, i32 %123)
  %125 = load i64*, i64** %10, align 8
  %126 = bitcast i64* %125 to %struct.ieee80211_qos_hdr*
  store %struct.ieee80211_qos_hdr* %126, %struct.ieee80211_qos_hdr** %25, align 8
  %127 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %25, align 8
  %128 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %127, i32 0, i32 0
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @SetPriority(i32* %128, i64 %129)
  %131 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %25, align 8
  %132 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %131, i32 0, i32 0
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @SetEOSP(i32* %132, i64 %133)
  store i32 4, i32* %19, align 4
  br label %139

135:                                              ; preds = %116
  %136 = load i64*, i64** %10, align 8
  %137 = load i32, i32* @WIFI_DATA_NULL, align 4
  %138 = call i32 @SetFrameSubType(i64* %136, i32 %137)
  store i32 4, i32* %19, align 4
  br label %139

139:                                              ; preds = %135, %121
  %140 = load i32, i32* %19, align 4
  %141 = load i32*, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  ret void
}

declare dso_local i32 @SetPwrMgt(i64*) #1

declare dso_local i32 @SetToDs(i64*) #1

declare dso_local i32 @ether_addr_copy(i32, i64*) #1

declare dso_local i64* @myid(i32*) #1

declare dso_local i32 @SetFrDs(i64*) #1

declare dso_local i32 @SetSeqNum(%struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @SetFrameSubType(i64*, i32) #1

declare dso_local i32 @SetPriority(i32*, i64) #1

declare dso_local i32 @SetEOSP(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
