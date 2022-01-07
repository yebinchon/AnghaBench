; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_txpower_bw_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_txpower_bw_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_TXPOWER_DELTA = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_DELTA_ENABLE_2G = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_DELTA_TYPE_2G = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_DELTA_VALUE_2G = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_DELTA_ENABLE_5G = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_DELTA_TYPE_5G = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_DELTA_VALUE_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt2800_get_txpower_bw_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_get_txpower_bw_comp(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %11 = load i32, i32* @EEPROM_TXPOWER_DELTA, align 4
  %12 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %68

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EEPROM_TXPOWER_DELTA_ENABLE_2G, align 4
  %29 = call i32 @rt2x00_get_field16(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @EEPROM_TXPOWER_DELTA_TYPE_2G, align 4
  %35 = call i32 @rt2x00_get_field16(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EEPROM_TXPOWER_DELTA_VALUE_2G, align 4
  %38 = call i32 @rt2x00_get_field16(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44, %26
  br label %66

46:                                               ; preds = %22
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @EEPROM_TXPOWER_DELTA_ENABLE_5G, align 4
  %49 = call i32 @rt2x00_get_field16(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EEPROM_TXPOWER_DELTA_TYPE_5G, align 4
  %55 = call i32 @rt2x00_get_field16(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EEPROM_TXPOWER_DELTA_VALUE_5G, align 4
  %58 = call i32 @rt2x00_get_field16(i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %52
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
