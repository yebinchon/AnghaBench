; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_key_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_key_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_key_conf = type { i64, i32 }
%struct.ieee80211_key_seq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mac_iveiv_entry = type { i32* }

@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_get_key_seq(%struct.ieee80211_hw* %0, %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_seq* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca %struct.ieee80211_key_seq*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.mac_iveiv_entry, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  store %struct.ieee80211_key_seq* %2, %struct.ieee80211_key_seq** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %11, align 8
  store %struct.rt2x00_dev* %12, %struct.rt2x00_dev** %7, align 8
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MAC_IVEIV_ENTRY(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rt2800_register_multiread(%struct.rt2x00_dev* %24, i32 %25, %struct.mac_iveiv_entry* %8, i32 8)
  %27 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %8, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @memcpy(i32* %29, i32* %32, i32 2)
  %34 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %8, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = call i32 @memcpy(i32* %36, i32* %39, i32 4)
  br label %41

41:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @MAC_IVEIV_ENTRY(i32) #1

declare dso_local i32 @rt2800_register_multiread(%struct.rt2x00_dev*, i32, %struct.mac_iveiv_entry*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
