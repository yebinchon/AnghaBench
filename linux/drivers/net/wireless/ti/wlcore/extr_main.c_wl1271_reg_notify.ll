; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_reg_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_reg_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32 }
%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @wl1271_reg_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_reg_notify(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.wl1271*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %7)
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  store %struct.wl1271* %11, %struct.wl1271** %6, align 8
  %12 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %13 = icmp ne %struct.regulatory_request* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %16 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %22 = call i32 @wlcore_regdomain_config(%struct.wl1271* %21)
  ret void
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

declare dso_local i32 @wlcore_regdomain_config(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
