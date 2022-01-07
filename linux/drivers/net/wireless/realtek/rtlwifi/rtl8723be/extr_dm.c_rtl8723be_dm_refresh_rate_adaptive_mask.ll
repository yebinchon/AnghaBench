; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_refresh_rate_adaptive_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_refresh_rate_adaptive_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.rate_adaptive }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* }
%struct.ieee80211_sta = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.rate_adaptive = type { i32, i32, i64, i64 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i64, i64, i32 }

@COMP_RATE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"driver is going to unload\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"driver does not control rate adaptive mask\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@DM_RATR_STA_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"RSSI = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"RSSI_LEVEL = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"PreState = %d, CurState = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723be_dm_refresh_rate_adaptive_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rate_adaptive*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %4, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %5, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 2
  store %struct.rate_adaptive* %20, %struct.rate_adaptive** %6, align 8
  %21 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %22 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %25 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  store i32 5, i32* %9, align 4
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %10, align 8
  %27 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %28 = call i64 @is_hal_stop(%struct.rtl_hal* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @COMP_RATE, align 4
  %33 = load i32, i32* @DBG_LOUD, align 4
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %166

35:                                               ; preds = %1
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* @COMP_RATE, align 4
  %44 = load i32, i32* @DBG_LOUD, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %166

46:                                               ; preds = %35
  %47 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %48 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAC80211_LINKED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %166

52:                                               ; preds = %46
  %53 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %54 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %166

58:                                               ; preds = %52
  %59 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %60 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %76 [
    i32 128, label %62
    i32 129, label %67
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %77

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %7, align 8
  br label %77

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76, %67, %62
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %79 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @DM_RATR_STA_HIGH, align 4
  %86 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %87 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %102

88:                                               ; preds = %77
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %97 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %96, i32 0, i32 1
  store i32 128, i32* %97, align 4
  br label %101

98:                                               ; preds = %88
  %99 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %100 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %99, i32 0, i32 1
  store i32 129, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %104 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %107 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %165

110:                                              ; preds = %102
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %112 = load i32, i32* @COMP_RATE, align 4
  %113 = load i32, i32* @DBG_LOUD, align 4
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %115 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %117)
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %120 = load i32, i32* @COMP_RATE, align 4
  %121 = load i32, i32* @DBG_LOUD, align 4
  %122 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %123 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %127 = load i32, i32* @COMP_RATE, align 4
  %128 = load i32, i32* @DBG_LOUD, align 4
  %129 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %130 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %133 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %131, i32 %134)
  %136 = call i32 (...) @rcu_read_lock()
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %139 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw* %137, i32 %140)
  store %struct.ieee80211_sta* %141, %struct.ieee80211_sta** %10, align 8
  %142 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %143 = icmp ne %struct.ieee80211_sta* %142, null
  br i1 %143, label %144, label %158

144:                                              ; preds = %110
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)** %150, align 8
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %154 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %155 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 %151(%struct.ieee80211_hw* %152, %struct.ieee80211_sta* %153, i32 %156, i32 1)
  br label %158

158:                                              ; preds = %144, %110
  %159 = call i32 (...) @rcu_read_unlock()
  %160 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %161 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %164 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %158, %102
  br label %166

166:                                              ; preds = %30, %41, %165, %52, %46
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
