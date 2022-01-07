; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_rx_agg_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_rx_agg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.rtl_priv = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.rtl_priv*, i64*, i32*, i32*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (...)* }
%struct.rtl_tid_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.rtl_sta_info = type { %struct.rtl_tid_data* }

@EINVAL = common dso_local global i32 0, align 4
@MAX_TID_COUNT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@COMP_RECV = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"on ra = %pM tid = %d\0A\00", align 1
@RTL_RX_AGG_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_rx_agg_start(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_tid_data*, align 8
  %10 = alloca %struct.rtl_sta_info*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %8, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %10, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %15 = icmp eq %struct.ieee80211_sta* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @MAX_TID_COUNT, align 8
  %22 = icmp uge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %82

29:                                               ; preds = %19
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64 (...)*, i64 (...)** %35, align 8
  %37 = call i64 (...) %36()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %29
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.rtl_priv*, i64*, i32*, i32*)*, i32 (%struct.rtl_priv*, i64*, i32*, i32*)** %44, align 8
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %47 = call i32 %45(%struct.rtl_priv* %46, i64* %11, i32* null, i32* null)
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %58, %struct.rtl_sta_info** %10, align 8
  %59 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %60 = icmp ne %struct.rtl_sta_info* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %82

64:                                               ; preds = %54
  %65 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %10, align 8
  %66 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %65, i32 0, i32 0
  %67 = load %struct.rtl_tid_data*, %struct.rtl_tid_data** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.rtl_tid_data, %struct.rtl_tid_data* %67, i64 %68
  store %struct.rtl_tid_data* %69, %struct.rtl_tid_data** %9, align 8
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %71 = load i32, i32* @COMP_RECV, align 4
  %72 = load i32, i32* @DBG_DMESG, align 4
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %76)
  %78 = load i32, i32* @RTL_RX_AGG_START, align 4
  %79 = load %struct.rtl_tid_data*, %struct.rtl_tid_data** %9, align 8
  %80 = getelementptr inbounds %struct.rtl_tid_data, %struct.rtl_tid_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %64, %61, %50, %26, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
