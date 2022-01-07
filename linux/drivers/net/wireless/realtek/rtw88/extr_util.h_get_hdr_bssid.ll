; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_util.h_get_hdr_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_util.h_get_hdr_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ieee80211_hdr*)* @get_hdr_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_hdr_bssid(%struct.ieee80211_hdr* %0) #0 {
  %2 = alloca %struct.ieee80211_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %2, align 8
  %5 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @ieee80211_has_tods(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @ieee80211_has_fromds(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %4, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32*, i32** %4, align 8
  ret i32* %29
}

declare dso_local i64 @ieee80211_has_tods(i32) #1

declare dso_local i64 @ieee80211_has_fromds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
