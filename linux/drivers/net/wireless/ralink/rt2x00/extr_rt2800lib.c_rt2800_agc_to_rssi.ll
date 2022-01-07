; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_agc_to_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_agc_to_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32 }

@RXWI_W2_RSSI0 = common dso_local global i32 0, align 4
@RXWI_W2_RSSI1 = common dso_local global i32 0, align 4
@RXWI_W2_RSSI2 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@EEPROM_RSSI_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG_OFFSET0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG_OFFSET1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2_OFFSET2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_A_OFFSET0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A_OFFSET1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2_OFFSET2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt2800_agc_to_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_agc_to_rssi(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RXWI_W2_RSSI0, align 4
  %14 = call i32 @rt2x00_get_field32(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RXWI_W2_RSSI1, align 4
  %17 = call i32 @rt2x00_get_field32(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RXWI_W2_RSSI2, align 4
  %20 = call i32 @rt2x00_get_field32(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @EEPROM_RSSI_BG, align 4
  %29 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EEPROM_RSSI_BG_OFFSET0, align 4
  %32 = call i32 @rt2x00_get_field16(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EEPROM_RSSI_BG_OFFSET1, align 4
  %35 = call i32 @rt2x00_get_field16(i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = load i32, i32* @EEPROM_RSSI_BG2, align 4
  %38 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @EEPROM_RSSI_BG2_OFFSET2, align 4
  %41 = call i32 @rt2x00_get_field16(i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  br label %58

42:                                               ; preds = %2
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = load i32, i32* @EEPROM_RSSI_A, align 4
  %45 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EEPROM_RSSI_A_OFFSET0, align 4
  %48 = call i32 @rt2x00_get_field16(i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @EEPROM_RSSI_A_OFFSET1, align 4
  %51 = call i32 @rt2x00_get_field16(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = load i32, i32* @EEPROM_RSSI_A2, align 4
  %54 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EEPROM_RSSI_A2_OFFSET2, align 4
  %57 = call i32 @rt2x00_get_field16(i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %42, %26
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 -12, %62
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  br label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %61
  %72 = phi i32 [ %69, %61 ], [ -128, %70 ]
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 -12, %76
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %81, %82
  br label %85

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %75
  %86 = phi i32 [ %83, %75 ], [ -128, %84 ]
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 -12, %90
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %91, %94
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %95, %96
  br label %99

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %89
  %100 = phi i32 [ %97, %89 ], [ -128, %98 ]
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @max(i32 %101, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @max(i32 %104, i32 %105)
  ret i32 %106
}

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
