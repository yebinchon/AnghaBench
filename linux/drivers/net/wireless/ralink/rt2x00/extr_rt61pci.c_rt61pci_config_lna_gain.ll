; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_lna_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_lna_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i16 }
%struct.rt2x00lib_conf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@EEPROM_RSSI_OFFSET_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_BG_1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt61pci_config_lna_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_lna_gain(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  store i16 0, i16* %6, align 2
  %7 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = call i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i16, i16* %6, align 2
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %23, 14
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %6, align 2
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %29 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %32 = call i64 @rt2x00_get_field16(i32 %30, i32 %31)
  %33 = load i16, i16* %6, align 2
  %34 = sext i16 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i16
  store i16 %36, i16* %6, align 2
  br label %57

37:                                               ; preds = %2
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = call i64 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i16, i16* %6, align 2
  %43 = sext i16 %42 to i32
  %44 = add nsw i32 %43, 14
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %6, align 2
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %49 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %52 = call i64 @rt2x00_get_field16(i32 %50, i32 %51)
  %53 = load i16, i16* %6, align 2
  %54 = sext i16 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i16
  store i16 %56, i16* %6, align 2
  br label %57

57:                                               ; preds = %46, %26
  %58 = load i16, i16* %6, align 2
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 0
  store i16 %58, i16* %60, align 2
  ret void
}

declare dso_local i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_get_field16(i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
