; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_refresh_rate_adaptive_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_refresh_rate_adaptive_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.rate_adaptive }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* }
%struct.ieee80211_sta = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rate_adaptive = type { i32, i32, i32, i32, i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i64, i64, i32 }

@COMP_RATE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"driver is going to unload\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"driver does not control rate adaptive mask\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_dm_refresh_rate_adaptive_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rate_adaptive*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %14)
  store %struct.rtl_mac* %15, %struct.rtl_mac** %5, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 2
  store %struct.rate_adaptive* %17, %struct.rate_adaptive** %6, align 8
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %7, align 8
  %18 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %19 = call i64 @is_hal_stop(%struct.rtl_hal* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = load i32, i32* @COMP_RATE, align 4
  %24 = load i32, i32* @DBG_LOUD, align 4
  %25 = call i32 @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %120

26:                                               ; preds = %1
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i32, i32* @COMP_RATE, align 4
  %35 = load i32, i32* @DBG_LOUD, align 4
  %36 = call i32 @RT_TRACE(%struct.rtl_priv* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %120

37:                                               ; preds = %26
  %38 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %39 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAC80211_LINKED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %120

43:                                               ; preds = %37
  %44 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %45 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %120

49:                                               ; preds = %43
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %55 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %60 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %62 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  br label %79

63:                                               ; preds = %49
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %69 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 5
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %75 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %77 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %63
  br label %79

79:                                               ; preds = %78, %58
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %86 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %85, i32 0, i32 3
  %87 = call i64 @_rtl92ee_dm_ra_state_check(%struct.ieee80211_hw* %80, i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %79
  %90 = call i32 (...) @rcu_read_lock()
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %92 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %93 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw* %91, i32 %94)
  store %struct.ieee80211_sta* %95, %struct.ieee80211_sta** %7, align 8
  %96 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %97 = icmp ne %struct.ieee80211_sta* %96, null
  br i1 %97, label %98, label %112

98:                                               ; preds = %89
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %100 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)** %104, align 8
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %108 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %109 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 %105(%struct.ieee80211_hw* %106, %struct.ieee80211_sta* %107, i32 %110, i32 1)
  br label %112

112:                                              ; preds = %98, %89
  %113 = call i32 (...) @rcu_read_unlock()
  %114 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %115 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %118 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %79
  br label %120

120:                                              ; preds = %21, %32, %119, %43, %37
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i64 @_rtl92ee_dm_ra_state_check(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
