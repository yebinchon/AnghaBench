; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_ra_info_update_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_ra_info_update_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i64 }
%struct.rtw_dev = type { i32 }
%struct.rtw_sta_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*)* @rtw_phy_ra_info_update_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_ra_info_update_iter(i8* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_sta_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rtw_dev*
  store %struct.rtw_dev* %8, %struct.rtw_dev** %5, align 8
  %9 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rtw_sta_info*
  store %struct.rtw_sta_info* %12, %struct.rtw_sta_info** %6, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %14 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %6, align 8
  %15 = call i32 @rtw_update_sta_info(%struct.rtw_dev* %13, %struct.rtw_sta_info* %14)
  ret void
}

declare dso_local i32 @rtw_update_sta_info(%struct.rtw_dev*, %struct.rtw_sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
