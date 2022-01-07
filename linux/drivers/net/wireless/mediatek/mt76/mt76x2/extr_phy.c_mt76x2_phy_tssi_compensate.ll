; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_tssi_compensate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_tssi_compensate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_8__, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.mt76x2_tx_power_info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mt76x2_tssi_comp = type { i32, i32, i32, i32, i32, i32 }

@CORE = common dso_local global i32 0, align 4
@MCU_CAL_DPD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_phy_tssi_compensate(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.mt76x2_tx_power_info, align 8
  %5 = alloca %struct.mt76x2_tssi_comp, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %3, align 8
  %11 = bitcast %struct.mt76x2_tssi_comp* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %111

18:                                               ; preds = %1
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = call i32 @BIT(i32 0)
  %26 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = call i32 @mt76x2_mcu_tssi_comp(%struct.mt76x02_dev* %27, %struct.mt76x2_tssi_comp* %5)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %111

32:                                               ; preds = %18
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %34 = load i32, i32* @CORE, align 4
  %35 = call i32 @MT_BBP(i32 %34, i32 34)
  %36 = call i32 @mt76_rr(%struct.mt76x02_dev* %33, i32 %35)
  %37 = call i32 @BIT(i32 4)
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %111

41:                                               ; preds = %32
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %43 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %47 = call i32 @mt76x2_get_power_info(%struct.mt76x02_dev* %45, %struct.mt76x2_tx_power_info* %4, %struct.ieee80211_channel* %46)
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %41
  %57 = call i32 @BIT(i32 1)
  %58 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %4, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 5
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %4, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 4
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %4, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %4, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %84 = call i32 @mt76x2_mcu_tssi_comp(%struct.mt76x02_dev* %83, %struct.mt76x2_tssi_comp* %5)
  %85 = getelementptr inbounds %struct.mt76x2_tssi_comp, %struct.mt76x2_tssi_comp* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %56
  %89 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %90 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %96 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %88, %56
  br label %111

100:                                              ; preds = %94
  %101 = call i32 @usleep_range(i32 10000, i32 20000)
  %102 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %103 = load i32, i32* @MCU_CAL_DPD, align 4
  %104 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %102, i32 %103, i32 %106)
  %108 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %109 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %17, %40, %99, %100, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @mt76x2_mcu_tssi_comp(%struct.mt76x02_dev*, %struct.mt76x2_tssi_comp*) #2

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #2

declare dso_local i32 @MT_BBP(i32, i32) #2

declare dso_local i32 @mt76x2_get_power_info(%struct.mt76x02_dev*, %struct.mt76x2_tx_power_info*, %struct.ieee80211_channel*) #2

declare dso_local i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev*, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
