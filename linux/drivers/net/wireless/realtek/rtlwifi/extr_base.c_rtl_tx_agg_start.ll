; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_agg_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_agg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.rtl_priv = type { i32 }
%struct.rtl_tid_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_sta_info = type { %struct.rtl_tid_data* }

@EINVAL = common dso_local global i32 0, align 4
@MAX_TID_COUNT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"on ra = %pM tid = %d seq:%d\0A\00", align 1
@RTL_AGG_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_tx_agg_start(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca %struct.rtl_tid_data*, align 8
  %14 = alloca %struct.rtl_sta_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %12, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %14, align 8
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %18 = icmp eq %struct.ieee80211_sta* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %68

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @MAX_TID_COUNT, align 8
  %25 = icmp uge i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %68

32:                                               ; preds = %22
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %36, %struct.rtl_sta_info** %14, align 8
  %37 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %14, align 8
  %38 = icmp ne %struct.rtl_sta_info* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %68

42:                                               ; preds = %32
  %43 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %14, align 8
  %44 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %43, i32 0, i32 0
  %45 = load %struct.rtl_tid_data*, %struct.rtl_tid_data** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.rtl_tid_data, %struct.rtl_tid_data* %45, i64 %46
  store %struct.rtl_tid_data* %47, %struct.rtl_tid_data** %13, align 8
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %49 = load i32, i32* @COMP_SEND, align 4
  %50 = load i32, i32* @DBG_DMESG, align 4
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %54, i64 %56)
  %58 = load i32, i32* @RTL_AGG_START, align 4
  %59 = load %struct.rtl_tid_data*, %struct.rtl_tid_data** %13, align 8
  %60 = getelementptr inbounds %struct.rtl_tid_data, %struct.rtl_tid_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %62, i32 %65, i64 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %42, %39, %29, %19
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
