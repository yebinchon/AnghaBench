; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.h_mt76x2_has_ext_lna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.h_mt76x2_has_ext_lna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MT_EE_NIC_CONF_1 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@MT_EE_NIC_CONF_1_LNA_EXT_2G = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_1_LNA_EXT_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x2_has_ext_lna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2_has_ext_lna(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %6 = load i32, i32* @MT_EE_NIC_CONF_1, align 4
  %7 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MT_EE_NIC_CONF_1_LNA_EXT_2G, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MT_EE_NIC_CONF_1_LNA_EXT_5G, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
