; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_ConstructNullFunctionData.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_ConstructNullFunctionData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.mlme_priv = type { %struct.wlan_network }
%struct.wlan_network = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i64 }
%struct.ieee80211_qos_hdr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
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
  %24 = alloca %struct.ieee80211_qos_hdr*, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %25 = load %struct.adapter*, %struct.adapter** %9, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 2
  store %struct.mlme_priv* %26, %struct.mlme_priv** %20, align 8
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %20, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 0
  store %struct.wlan_network* %28, %struct.wlan_network** %21, align 8
  %29 = load %struct.adapter*, %struct.adapter** %9, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 1
  store %struct.mlme_ext_priv* %30, %struct.mlme_ext_priv** %22, align 8
  %31 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %22, align 8
  %32 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %31, i32 0, i32 0
  store %struct.mlme_ext_info* %32, %struct.mlme_ext_info** %23, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = bitcast i64* %33 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %34, %struct.ieee80211_hdr** %17, align 8
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 3
  store i64* %36, i64** %18, align 8
  %37 = load i64*, i64** %18, align 8
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %8
  %41 = load i64*, i64** %18, align 8
  %42 = call i32 @SetPwrMgt(i64* %41)
  br label %43

43:                                               ; preds = %40, %8
  %44 = load %struct.wlan_network*, %struct.wlan_network** %21, align 8
  %45 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %99 [
    i32 128, label %48
    i32 130, label %73
    i32 129, label %98
  ]

48:                                               ; preds = %43
  %49 = load i64*, i64** %18, align 8
  %50 = call i32 @SetToDs(i64* %49)
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %23, align 8
  %55 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %54, i32 0, i32 0
  %56 = call i64* @get_my_bssid(i32* %55)
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32 %53, i64* %56, i32 %57)
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.adapter*, %struct.adapter** %9, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = call i64* @myid(i32* %63)
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32 %61, i64* %64, i32 %65)
  %67 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(i32 %69, i64* %70, i32 %71)
  br label %122

73:                                               ; preds = %43
  %74 = load i64*, i64** %18, align 8
  %75 = call i32 @SetFrDs(i64* %74)
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64*, i64** %12, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @memcpy(i32 %78, i64* %79, i32 %80)
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %23, align 8
  %86 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %85, i32 0, i32 0
  %87 = call i64* @get_my_bssid(i32* %86)
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32 %84, i64* %87, i32 %88)
  %90 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %91 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.adapter*, %struct.adapter** %9, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = call i64* @myid(i32* %94)
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcpy(i32 %92, i64* %95, i32 %96)
  br label %122

98:                                               ; preds = %43
  br label %99

99:                                               ; preds = %43, %98
  %100 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %101 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i64*, i64** %12, align 8
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i32 %102, i64* %103, i32 %104)
  %106 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.adapter*, %struct.adapter** %9, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 0
  %111 = call i64* @myid(i32* %110)
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = call i32 @memcpy(i32 %108, i64* %111, i32 %112)
  %114 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %115 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %23, align 8
  %118 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %117, i32 0, i32 0
  %119 = call i64* @get_my_bssid(i32* %118)
  %120 = load i32, i32* @ETH_ALEN, align 4
  %121 = call i32 @memcpy(i32 %116, i64* %119, i32 %120)
  br label %122

122:                                              ; preds = %99, %73, %48
  %123 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %124 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %123, i32 0)
  %125 = load i64, i64* %13, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load i64*, i64** %10, align 8
  %129 = load i32, i32* @WIFI_QOS_DATA_NULL, align 4
  %130 = call i32 @SetFrameSubType(i64* %128, i32 %129)
  %131 = load i64*, i64** %10, align 8
  %132 = bitcast i64* %131 to %struct.ieee80211_qos_hdr*
  store %struct.ieee80211_qos_hdr* %132, %struct.ieee80211_qos_hdr** %24, align 8
  %133 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %24, align 8
  %134 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %133, i32 0, i32 0
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @SetPriority(i32* %134, i64 %135)
  %137 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %24, align 8
  %138 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %137, i32 0, i32 0
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @SetEOSP(i32* %138, i64 %139)
  store i32 4, i32* %19, align 4
  br label %145

141:                                              ; preds = %122
  %142 = load i64*, i64** %10, align 8
  %143 = load i32, i32* @WIFI_DATA_NULL, align 4
  %144 = call i32 @SetFrameSubType(i64* %142, i32 %143)
  store i32 4, i32* %19, align 4
  br label %145

145:                                              ; preds = %141, %127
  %146 = load i32, i32* %19, align 4
  %147 = load i32*, i32** %11, align 8
  store i32 %146, i32* %147, align 4
  ret void
}

declare dso_local i32 @SetPwrMgt(i64*) #1

declare dso_local i32 @SetToDs(i64*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i64* @get_my_bssid(i32*) #1

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
