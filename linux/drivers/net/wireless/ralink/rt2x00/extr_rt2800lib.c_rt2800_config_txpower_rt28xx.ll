; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_txpower_rt28xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_txpower_rt28xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }

@BBP1_TX_POWER_CTRL = common dso_local global i32 0, align 4
@TX_PWR_CFG_0 = common dso_local global i64 0, align 8
@EEPROM_TXPOWER_BYRATE_SIZE = common dso_local global i32 0, align 4
@TX_PWR_CFG_4 = common dso_local global i64 0, align 8
@EEPROM_TXPOWER_BYRATE = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE0 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE1 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE2 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE4 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE5 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE6 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_channel*, i32)* @rt2800_config_txpower_rt28xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_txpower_rt28xx(%struct.rt2x00_dev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %21 = load i32, i32* %16, align 4
  %22 = call i32 @rt2800_get_txpower_bw_comp(%struct.rt2x00_dev* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %32 [
    i32 134, label %27
    i32 133, label %27
    i32 132, label %27
    i32 131, label %27
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = call i32 @rt2800_get_gain_calibration_delta(%struct.rt2x00_dev* %28)
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %14, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rt2800_get_txpower_reg_delta(%struct.rt2x00_dev* %34, i32 %35, i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sle i32 %44, -12
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  store i32 2, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 12
  store i32 %48, i32* %14, align 4
  br label %57

49:                                               ; preds = %33
  %50 = load i32, i32* %14, align 4
  %51 = icmp sle i32 %50, -6
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  store i32 1, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 6
  store i32 %54, i32* %14, align 4
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %59 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %58, i32 1)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @BBP1_TX_POWER_CTRL, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @rt2x00_set_field8(i32* %8, i32 %60, i32 %61)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %63, i32 1, i32 %64)
  %66 = load i64, i64* @TX_PWR_CFG_0, align 8
  store i64 %66, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %203, %57
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @EEPROM_TXPOWER_BYRATE_SIZE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %206

71:                                               ; preds = %67
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @TX_PWR_CFG_4, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %206

76:                                               ; preds = %71
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @rt2800_register_read(%struct.rt2x00_dev* %77, i64 %78)
  store i64 %79, i64* %10, align 8
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %81 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %80, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 1
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %90 = call i32 @rt2x00_get_field16(i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @TX_PWR_CFG_RATE0, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @rt2x00_set_field32(i64* %10, i32 %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %103 = call i32 @rt2x00_get_field16(i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* @TX_PWR_CFG_RATE1, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @rt2x00_set_field32(i64* %10, i32 %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %116 = call i32 @rt2x00_get_field16(i32 %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @TX_PWR_CFG_RATE2, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @rt2x00_set_field32(i64* %10, i32 %124, i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %129 = call i32 @rt2x00_get_field16(i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* @TX_PWR_CFG_RATE3, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @rt2x00_set_field32(i64* %10, i32 %137, i32 %138)
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %141 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %140, i32 %141, i32 %143)
  store i32 %144, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %147 = call i32 @rt2x00_get_field16(i32 %145, i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* @TX_PWR_CFG_RATE4, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @rt2x00_set_field32(i64* %10, i32 %155, i32 %156)
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %160 = call i32 @rt2x00_get_field16(i32 %158, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* @TX_PWR_CFG_RATE5, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @rt2x00_set_field32(i64* %10, i32 %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %173 = call i32 @rt2x00_get_field16(i32 %171, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* @TX_PWR_CFG_RATE6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @rt2x00_set_field32(i64* %10, i32 %181, i32 %182)
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %186 = call i32 @rt2x00_get_field16(i32 %184, i32 %185)
  store i32 %186, i32* %7, align 4
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* @TX_PWR_CFG_RATE7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @rt2x00_set_field32(i64* %10, i32 %194, i32 %195)
  %197 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %198 = load i64, i64* %11, align 8
  %199 = load i64, i64* %10, align 8
  %200 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %197, i64 %198, i64 %199)
  %201 = load i64, i64* %11, align 8
  %202 = add nsw i64 %201, 4
  store i64 %202, i64* %11, align 8
  br label %203

203:                                              ; preds = %76
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 2
  store i32 %205, i32* %12, align 4
  br label %67

206:                                              ; preds = %75, %67
  ret void
}

declare dso_local i32 @rt2800_get_txpower_bw_comp(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_get_gain_calibration_delta(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_get_txpower_reg_delta(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2800_register_read(%struct.rt2x00_dev*, i64) #1

declare dso_local i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_compensate_txpower(%struct.rt2x00_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
