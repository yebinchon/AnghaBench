; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_refresh_rate_adaptive_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_refresh_rate_adaptive_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.rate_adaptive }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* }
%struct.ieee80211_sta = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.rate_adaptive = type { i32, i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i64, i64, i32 }

@COMP_RATE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" driver is going to unload\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" driver does not control rate adaptive mask\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"RSSI = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"RSSI_LEVEL = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"PreState = %d, CurState = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_refresh_rate_adaptive_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rate_adaptive*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
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
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 3
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
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %166

28:                                               ; preds = %1
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @COMP_RATE, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %166

39:                                               ; preds = %28
  %40 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %41 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAC80211_LINKED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %166

45:                                               ; preds = %39
  %46 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %166

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
  store i64 50, i64* %8, align 8
  store i64 20, i64* %7, align 8
  br label %59

56:                                               ; preds = %51
  store i64 55, i64* %8, align 8
  store i64 20, i64* %7, align 8
  br label %59

57:                                               ; preds = %51
  store i64 60, i64* %8, align 8
  store i64 25, i64* %7, align 8
  br label %59

58:                                               ; preds = %51
  store i64 50, i64* %8, align 8
  store i64 20, i64* %7, align 8
  br label %59

59:                                               ; preds = %58, %57, %56, %55
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %67 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %70 [
    i32 130, label %69
    i32 128, label %73
    i32 129, label %73
  ]

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %65, %69
  %71 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %72 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %71, i32 0, i32 1
  store i32 128, i32* %72, align 4
  br label %76

73:                                               ; preds = %65, %65
  %74 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %75 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %74, i32 0, i32 1
  store i32 129, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %102

77:                                               ; preds = %59
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %79 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %86 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %85, i32 0, i32 1
  store i32 130, i32* %86, align 4
  br label %101

87:                                               ; preds = %77
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %96 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %95, i32 0, i32 1
  store i32 128, i32* %96, align 4
  br label %100

97:                                               ; preds = %87
  %98 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %99 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %98, i32 0, i32 1
  store i32 129, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %76
  %103 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %104 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
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
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
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
  %131 = load i32, i32* %130, align 4
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
  store %struct.ieee80211_sta* %141, %struct.ieee80211_sta** %9, align 8
  %142 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %143 = icmp ne %struct.ieee80211_sta* %142, null
  br i1 %143, label %144, label %158

144:                                              ; preds = %110
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)** %150, align 8
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
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
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %158, %102
  br label %166

166:                                              ; preds = %23, %34, %165, %45, %39
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
