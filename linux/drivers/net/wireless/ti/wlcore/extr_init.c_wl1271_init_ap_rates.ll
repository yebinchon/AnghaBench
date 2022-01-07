; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_ap_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_ap_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wl12xx_vif = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.conf_tx_rate_class = type { i32, i32, i32, i64 }

@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"AP basic rate set: 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONF_TX_OFDM_RATES = common dso_local global i32 0, align 4
@CONF_TX_ENABLED_RATES = common dso_local global i32 0, align 4
@CONF_TX_MCS_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_init_ap_rates(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.conf_tx_rate_class, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %10 = load i32, i32* @DEBUG_AP, align 4
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %12 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %118

22:                                               ; preds = %2
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 1
  store i32 10, i32* %27, align 4
  %28 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 2
  store i32 10, i32* %28, align 8
  %29 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wl1271_acx_ap_rate_policy(%struct.wl1271* %30, %struct.conf_tx_rate_class* %8, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %118

40:                                               ; preds = %22
  %41 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %42 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %43 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %41, i32 %44)
  %46 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 2
  store i32 10, i32* %47, align 8
  %48 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 1
  store i32 10, i32* %48, align 4
  %49 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %51 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %52 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wl1271_acx_ap_rate_policy(%struct.wl1271* %50, %struct.conf_tx_rate_class* %8, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %118

60:                                               ; preds = %40
  %61 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %67 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CONF_TX_OFDM_RATES, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @CONF_TX_OFDM_RATES, align 4
  store i32 %73, i32* %9, align 4
  br label %76

74:                                               ; preds = %65, %60
  %75 = load i32, i32* @CONF_TX_ENABLED_RATES, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* @CONF_TX_MCS_RATES, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %81 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %82 = call i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271* %80, %struct.wl12xx_vif* %81)
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %114, %76
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 2
  store i32 10, i32* %96, align 8
  %97 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 1
  store i32 10, i32* %97, align 4
  %98 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %8, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %100 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %101 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wl1271_acx_ap_rate_policy(%struct.wl1271* %99, %struct.conf_tx_rate_class* %8, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %93
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %118

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %85

117:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %111, %58, %38, %19
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1271_acx_ap_rate_policy(%struct.wl1271*, %struct.conf_tx_rate_class*, i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
