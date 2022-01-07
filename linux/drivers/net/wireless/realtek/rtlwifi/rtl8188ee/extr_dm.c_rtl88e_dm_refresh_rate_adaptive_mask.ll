; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_refresh_rate_adaptive_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_refresh_rate_adaptive_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.rate_adaptive }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* }
%struct.ieee80211_sta = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.rate_adaptive = type { i32, i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i64, i64, i32 }

@COMP_RATE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"driver is going to unload\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"driver does not control rate adaptive mask\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"RSSI = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"RSSI_LEVEL = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"PreState = %d, CurState = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_refresh_rate_adaptive_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rate_adaptive*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %4, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %16)
  store %struct.rtl_mac* %17, %struct.rtl_mac** %5, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 2
  store %struct.rate_adaptive* %19, %struct.rate_adaptive** %6, align 8
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %9, align 8
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %21 = call i64 @is_hal_stop(%struct.rtl_hal* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i32, i32* @COMP_RATE, align 4
  %26 = load i32, i32* @DBG_LOUD, align 4
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %149

28:                                               ; preds = %1
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @COMP_RATE, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %149

39:                                               ; preds = %28
  %40 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %41 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAC80211_LINKED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %149

45:                                               ; preds = %39
  %46 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %149

51:                                               ; preds = %45
  %52 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %53 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %58 [
    i32 130, label %55
    i32 128, label %56
    i32 129, label %57
  ]

55:                                               ; preds = %51
  store i32 50, i32* %8, align 4
  store i32 20, i32* %7, align 4
  br label %59

56:                                               ; preds = %51
  store i32 55, i32* %8, align 4
  store i32 20, i32* %7, align 4
  br label %59

57:                                               ; preds = %51
  store i32 50, i32* %8, align 4
  store i32 25, i32* %7, align 4
  br label %59

58:                                               ; preds = %51
  store i32 50, i32* %8, align 4
  store i32 20, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %57, %56, %55
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %69 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %68, i32 0, i32 1
  store i32 130, i32* %69, align 4
  br label %85

70:                                               ; preds = %59
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %80 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %79, i32 0, i32 1
  store i32 128, i32* %80, align 4
  br label %84

81:                                               ; preds = %70
  %82 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %83 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %82, i32 0, i32 1
  store i32 129, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %87 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %90 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %148

93:                                               ; preds = %85
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %95 = load i32, i32* @COMP_RATE, align 4
  %96 = load i32, i32* @DBG_LOUD, align 4
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %103 = load i32, i32* @COMP_RATE, align 4
  %104 = load i32, i32* @DBG_LOUD, align 4
  %105 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %106 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = load i32, i32* @COMP_RATE, align 4
  %111 = load i32, i32* @DBG_LOUD, align 4
  %112 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %113 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %116 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %117)
  %119 = call i32 (...) @rcu_read_lock()
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %121 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %122 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw* %120, i32 %123)
  store %struct.ieee80211_sta* %124, %struct.ieee80211_sta** %9, align 8
  %125 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %126 = icmp ne %struct.ieee80211_sta* %125, null
  br i1 %126, label %127, label %141

127:                                              ; preds = %93
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %129 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)** %133, align 8
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %137 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %138 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %134(%struct.ieee80211_hw* %135, %struct.ieee80211_sta* %136, i32 %139, i32 1)
  br label %141

141:                                              ; preds = %127, %93
  %142 = call i32 (...) @rcu_read_unlock()
  %143 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %144 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %147 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %85
  br label %149

149:                                              ; preds = %23, %34, %148, %45, %39
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
