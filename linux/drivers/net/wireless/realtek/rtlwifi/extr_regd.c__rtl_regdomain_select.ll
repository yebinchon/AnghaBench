; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_regdomain_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_regdomain_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.rtl_regulatory = type { i32 }

@rtl_regdom_no_midband = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@rtl_regdom_11 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@rtl_regdom_60_64 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@rtl_regdom_12_13 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@rtl_regdom_14_60_64 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@rtl_regdom_14 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@rtl_regdom_12_13_5g_all = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.rtl_regulatory*)* @_rtl_regdomain_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @_rtl_regdomain_select(%struct.rtl_regulatory* %0) #0 {
  %2 = alloca %struct.ieee80211_regdomain*, align 8
  %3 = alloca %struct.rtl_regulatory*, align 8
  store %struct.rtl_regulatory* %0, %struct.rtl_regulatory** %3, align 8
  %4 = load %struct.rtl_regulatory*, %struct.rtl_regulatory** %3, align 8
  %5 = getelementptr inbounds %struct.rtl_regulatory, %struct.rtl_regulatory* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %14 [
    i32 140, label %7
    i32 137, label %8
    i32 130, label %9
    i32 141, label %10
    i32 132, label %10
    i32 139, label %10
    i32 136, label %10
    i32 134, label %11
    i32 133, label %11
    i32 131, label %11
    i32 135, label %11
    i32 138, label %12
    i32 129, label %13
    i32 128, label %13
  ]

7:                                                ; preds = %1
  store %struct.ieee80211_regdomain* @rtl_regdom_no_midband, %struct.ieee80211_regdomain** %2, align 8
  br label %15

8:                                                ; preds = %1
  store %struct.ieee80211_regdomain* @rtl_regdom_11, %struct.ieee80211_regdomain** %2, align 8
  br label %15

9:                                                ; preds = %1
  store %struct.ieee80211_regdomain* @rtl_regdom_60_64, %struct.ieee80211_regdomain** %2, align 8
  br label %15

10:                                               ; preds = %1, %1, %1, %1
  store %struct.ieee80211_regdomain* @rtl_regdom_12_13, %struct.ieee80211_regdomain** %2, align 8
  br label %15

11:                                               ; preds = %1, %1, %1, %1
  store %struct.ieee80211_regdomain* @rtl_regdom_14_60_64, %struct.ieee80211_regdomain** %2, align 8
  br label %15

12:                                               ; preds = %1
  store %struct.ieee80211_regdomain* @rtl_regdom_14, %struct.ieee80211_regdomain** %2, align 8
  br label %15

13:                                               ; preds = %1, %1
  store %struct.ieee80211_regdomain* @rtl_regdom_12_13_5g_all, %struct.ieee80211_regdomain** %2, align 8
  br label %15

14:                                               ; preds = %1
  store %struct.ieee80211_regdomain* @rtl_regdom_no_midband, %struct.ieee80211_regdomain** %2, align 8
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  ret %struct.ieee80211_regdomain* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
