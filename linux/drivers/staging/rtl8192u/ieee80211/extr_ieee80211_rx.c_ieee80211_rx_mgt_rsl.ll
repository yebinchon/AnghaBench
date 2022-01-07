; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_mgt_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_mgt_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.rtl_80211_hdr_4addr = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.ieee80211_probe_response = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"received BEACON (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Beacon\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"received PROBE RESPONSE (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Probe response\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_rx_mgt(%struct.ieee80211_device* %0, %struct.rtl_80211_hdr_4addr* %1, %struct.ieee80211_rx_stats* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.rtl_80211_hdr_4addr*, align 8
  %6 = alloca %struct.ieee80211_rx_stats*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.rtl_80211_hdr_4addr* %1, %struct.rtl_80211_hdr_4addr** %5, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %6, align 8
  %7 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %8 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  %11 = call i32 @WLAN_FC_GET_STYPE(i32 %10)
  switch i32 %11, label %38 [
    i32 129, label %12
    i32 128, label %25
  ]

12:                                               ; preds = %3
  %13 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = call i32 @WLAN_FC_GET_STYPE(i32 %16)
  %18 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @IEEE80211_DEBUG_SCAN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %21 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %22 = bitcast %struct.rtl_80211_hdr_4addr* %21 to %struct.ieee80211_probe_response*
  %23 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %24 = call i32 @ieee80211_process_probe_response(%struct.ieee80211_device* %20, %struct.ieee80211_probe_response* %22, %struct.ieee80211_rx_stats* %23)
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, %struct.rtl_80211_hdr_4addr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = call i32 @WLAN_FC_GET_STYPE(i32 %29)
  %31 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = call i32 @IEEE80211_DEBUG_SCAN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %34 = load %struct.rtl_80211_hdr_4addr*, %struct.rtl_80211_hdr_4addr** %5, align 8
  %35 = bitcast %struct.rtl_80211_hdr_4addr* %34 to %struct.ieee80211_probe_response*
  %36 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %37 = call i32 @ieee80211_process_probe_response(%struct.ieee80211_device* %33, %struct.ieee80211_probe_response* %35, %struct.ieee80211_rx_stats* %36)
  br label %38

38:                                               ; preds = %3, %25, %12
  ret void
}

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_SCAN(i8*) #1

declare dso_local i32 @ieee80211_process_probe_response(%struct.ieee80211_device*, %struct.ieee80211_probe_response*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
