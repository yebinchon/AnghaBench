; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64, i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_sta_info = type { i32, i64, i64 }

@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Remove sta addr is %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @rtl_op_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_op_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_sta_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %12 = icmp ne %struct.ieee80211_sta* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %15 = load i32, i32* @COMP_MAC80211, align 4
  %16 = load i32, i32* @DBG_DMESG, align 4
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @RT_TRACE(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %24, %struct.rtl_sta_info** %8, align 8
  %25 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %8, align 8
  %26 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %8, align 8
  %28 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %8, align 8
  %34 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %33, i32 0, i32 0
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  br label %40

40:                                               ; preds = %13, %3
  ret i32 0
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
