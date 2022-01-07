; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_get_key_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_get_key_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key_conf = type { i32, i32, i32 }

@MT_CIPHER_NONE = common dso_local global i32 0, align 4
@MT_CIPHER_WEP40 = common dso_local global i32 0, align 4
@MT_CIPHER_WEP104 = common dso_local global i32 0, align 4
@MT_CIPHER_TKIP = common dso_local global i32 0, align 4
@MT_CIPHER_AES_CCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_key_conf*, i32*)* @mt76_mac_get_key_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_mac_get_key_info(%struct.ieee80211_key_conf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_key_conf*, align 8
  %5 = alloca i32*, align 8
  store %struct.ieee80211_key_conf* %0, %struct.ieee80211_key_conf** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @memset(i32* %6, i32 0, i32 32)
  %8 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %9 = icmp ne %struct.ieee80211_key_conf* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MT_CIPHER_NONE, align 4
  store i32 %11, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @MT_CIPHER_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32* %20, i32 %23, i32 %26)
  %28 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %39 [
    i32 128, label %31
    i32 129, label %33
    i32 130, label %35
    i32 131, label %37
  ]

31:                                               ; preds = %19
  %32 = load i32, i32* @MT_CIPHER_WEP40, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %19
  %34 = load i32, i32* @MT_CIPHER_WEP104, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %19
  %36 = load i32, i32* @MT_CIPHER_TKIP, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %19
  %38 = load i32, i32* @MT_CIPHER_AES_CCMP, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %19
  %40 = load i32, i32* @MT_CIPHER_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %35, %33, %31, %17, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
