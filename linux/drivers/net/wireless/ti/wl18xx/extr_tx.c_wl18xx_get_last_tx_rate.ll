; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_tx.c_wl18xx_get_last_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_tx.c_wl18xx_get_last_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_rate = type { i64, i32 }
%struct.wl12xx_vif = type { i64 }

@CONF_HW_RATE_INDEX_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"last Tx rate invalid: %d\00", align 1
@CONF_HW_RATE_INDEX_54MBPS = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CONF_HW_RATE_INDEX_6MBPS = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@CONF_HW_RATE_INDEX_MCS0 = common dso_local global i64 0, align 8
@CONF_HW_RATE_INDEX_MCS7_SGI = common dso_local global i64 0, align 8
@CONF_HW_RATE_INDEX_MCS15_SGI = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i64 0, align 8
@NL80211_CHAN_HT40PLUS = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_rate*, i64)* @wl18xx_get_last_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl18xx_get_last_tx_rate(%struct.wl1271* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_rate* %3, i64 %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wl12xx_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_tx_rate* %3, %struct.ieee80211_tx_rate** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @CONF_HW_RATE_INDEX_MAX, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @wl1271_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %28, i32 0, i32 1
  store i32 0, i32* %29, align 8
  br label %123

30:                                               ; preds = %5
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @CONF_HW_RATE_INDEX_54MBPS, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i64, i64* @CONF_HW_RATE_INDEX_6MBPS, align 8
  %43 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %123

50:                                               ; preds = %30
  %51 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %52 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @CONF_HW_RATE_INDEX_MCS0, align 8
  %56 = sub i64 %54, %55
  %57 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @CONF_HW_RATE_INDEX_MCS7_SGI, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %62, %50
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @CONF_HW_RATE_INDEX_MCS15_SGI, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %71, %67
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @CONF_HW_RATE_INDEX_MCS7_SGI, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @CONF_HW_RATE_INDEX_MCS15_SGI, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %86 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @CONF_HW_RATE_INDEX_MCS7_SGI, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %96 = icmp ne %struct.ieee80211_vif* %95, null
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %99 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %98)
  store %struct.wl12xx_vif* %99, %struct.wl12xx_vif** %12, align 8
  %100 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %101 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NL80211_CHAN_HT40MINUS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %97
  %106 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %107 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NL80211_CHAN_HT40PLUS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105, %97
  %112 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %113 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, 8
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %117 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %118 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %111, %105
  br label %122

122:                                              ; preds = %121, %94, %90
  br label %123

123:                                              ; preds = %23, %122, %47
  ret void
}

declare dso_local i32 @wl1271_error(i8*, i64) #1

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
