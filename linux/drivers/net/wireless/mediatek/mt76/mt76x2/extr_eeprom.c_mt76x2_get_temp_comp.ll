; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_temp_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_temp_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mt76x2_temp_comp = type { i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_EXT_PA_5G = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@MT_EE_RF_TEMP_COMP_SLOPE_5G = common dso_local global i32 0, align 4
@MT_EE_RF_TEMP_COMP_SLOPE_2G = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_DELTA_BW80 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2_get_temp_comp(%struct.mt76x02_dev* %0, %struct.mt76x2_temp_comp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76x2_temp_comp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76x2_temp_comp* %1, %struct.mt76x2_temp_comp** %5, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mt76x2_temp_comp*, %struct.mt76x2_temp_comp** %5, align 8
  %18 = call i32 @memset(%struct.mt76x2_temp_comp* %17, i32 0, i32 24)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %20 = call i32 @mt76x2_temp_tx_alc_enabled(%struct.mt76x02_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %25
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %35 = load i32, i32* @MT_EE_TX_POWER_EXT_PA_5G, align 4
  %36 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %34, i32 %35)
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 127
  %40 = load %struct.mt76x2_temp_comp*, %struct.mt76x2_temp_comp** %5, align 8
  %41 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %47 = load i32, i32* @MT_EE_RF_TEMP_COMP_SLOPE_5G, align 4
  %48 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %50 = load i32, i32* @MT_EE_TX_POWER_EXT_PA_5G, align 4
  %51 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %60

52:                                               ; preds = %33
  %53 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %54 = load i32, i32* @MT_EE_RF_TEMP_COMP_SLOPE_2G, align 4
  %55 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %57 = load i32, i32* @MT_EE_TX_POWER_DELTA_BW80, align 4
  %58 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %56, i32 %57)
  %59 = ashr i32 %58, 8
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %52, %45
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 255
  %63 = load %struct.mt76x2_temp_comp*, %struct.mt76x2_temp_comp** %5, align 8
  %64 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = ashr i32 %65, 8
  %67 = load %struct.mt76x2_temp_comp*, %struct.mt76x2_temp_comp** %5, align 8
  %68 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 15
  %71 = sub nsw i32 0, %70
  %72 = sext i32 %71 to i64
  %73 = load %struct.mt76x2_temp_comp*, %struct.mt76x2_temp_comp** %5, align 8
  %74 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 4
  %77 = and i32 %76, 15
  %78 = load %struct.mt76x2_temp_comp*, %struct.mt76x2_temp_comp** %5, align 8
  %79 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %60, %30, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.mt76x2_temp_comp*, i32, i32) #1

declare dso_local i32 @mt76x2_temp_tx_alc_enabled(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
