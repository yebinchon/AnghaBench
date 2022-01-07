; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_refresh_rateadaptive_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_refresh_rateadaptive_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.rate_adaptive }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* }
%struct.ieee80211_sta = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.rate_adaptive = type { i32, i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i64, i64, i32 }

@FW_CMD_CTRL_DM_BY_DRIVER = common dso_local global i32 0, align 4
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@COMP_RATE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"RSSI = %ld RSSI_LEVEL = %d PreState = %d, CurState = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_refresh_rateadaptive_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_refresh_rateadaptive_mask(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rate_adaptive*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %22 = call i64 @is_hal_stop(%struct.rtl_hal* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %164

25:                                               ; preds = %1
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %164

32:                                               ; preds = %25
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = call i32 @hal_get_firmwareversion(%struct.rtl_priv* %33)
  %35 = icmp sge i32 %34, 61
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load i32, i32* @FW_CMD_CTRL_DM_BY_DRIVER, align 4
  %45 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %43, i32 %44)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %36, %32
  %50 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %51 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MAC80211_LINKED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %164

55:                                               ; preds = %49
  %56 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %57 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %164

61:                                               ; preds = %55
  %62 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %63 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %69 [
    i32 131, label %65
    i32 129, label %66
    i32 130, label %67
    i32 128, label %68
  ]

65:                                               ; preds = %61
  store i32 40, i32* %10, align 4
  store i32 30, i32* %9, align 4
  store i32 20, i32* %8, align 4
  br label %70

66:                                               ; preds = %61
  store i32 44, i32* %10, align 4
  store i32 30, i32* %9, align 4
  store i32 20, i32* %8, align 4
  br label %70

67:                                               ; preds = %61
  store i32 44, i32* %10, align 4
  store i32 34, i32* %9, align 4
  store i32 20, i32* %8, align 4
  br label %70

68:                                               ; preds = %61
  store i32 44, i32* %10, align 4
  store i32 34, i32* %9, align 4
  store i32 24, i32* %8, align 4
  br label %70

69:                                               ; preds = %61
  store i32 44, i32* %10, align 4
  store i32 34, i32* %9, align 4
  store i32 24, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %68, %67, %66, %65
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %80 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %79, i32 0, i32 1
  store i32 131, i32* %80, align 4
  br label %108

81:                                               ; preds = %70
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp sgt i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %91 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %90, i32 0, i32 1
  store i32 130, i32* %91, align 4
  br label %107

92:                                               ; preds = %81
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %94 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp sgt i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %102 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %101, i32 0, i32 1
  store i32 130, i32* %102, align 4
  br label %106

103:                                              ; preds = %92
  %104 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %105 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %104, i32 0, i32 1
  store i32 128, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107, %78
  %109 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %110 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %113 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %163

116:                                              ; preds = %108
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = load i32, i32* @COMP_RATE, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %125 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %128 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %131 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %123, i32 %126, i32 %129, i32 %132)
  %134 = call i32 (...) @rcu_read_lock()
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %137 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw* %135, i32 %138)
  store %struct.ieee80211_sta* %139, %struct.ieee80211_sta** %7, align 8
  %140 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %141 = icmp ne %struct.ieee80211_sta* %140, null
  br i1 %141, label %142, label %156

142:                                              ; preds = %116
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)** %148, align 8
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %151 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %152 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %153 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 %149(%struct.ieee80211_hw* %150, %struct.ieee80211_sta* %151, i32 %154, i32 1)
  br label %156

156:                                              ; preds = %142, %116
  %157 = call i32 (...) @rcu_read_unlock()
  %158 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %159 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rate_adaptive*, %struct.rate_adaptive** %6, align 8
  %162 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %108
  br label %164

164:                                              ; preds = %24, %31, %163, %55, %49
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @hal_get_firmwareversion(%struct.rtl_priv*) #1

declare dso_local i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rtl_find_sta(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
