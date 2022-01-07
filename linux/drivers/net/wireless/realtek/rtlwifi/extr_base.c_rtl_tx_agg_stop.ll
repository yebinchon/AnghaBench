; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_agg_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_agg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.rtl_priv = type { i32 }
%struct.rtl_sta_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"on ra = %pM tid = %d\0A\00", align 1
@MAX_TID_COUNT = common dso_local global i64 0, align 8
@RTL_AGG_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_tx_agg_stop(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_sta_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %10, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %11, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %15 = icmp eq %struct.ieee80211_sta* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %56

19:                                               ; preds = %4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %21 = load i32, i32* @COMP_SEND, align 4
  %22 = load i32, i32* @DBG_DMESG, align 4
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @MAX_TID_COUNT, align 8
  %30 = icmp uge i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %56

37:                                               ; preds = %19
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %41, %struct.rtl_sta_info** %11, align 8
  %42 = load i32, i32* @RTL_AGG_STOP, align 4
  %43 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %11, align 8
  %44 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %50, i32 %53, i64 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %37, %34, %16
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
