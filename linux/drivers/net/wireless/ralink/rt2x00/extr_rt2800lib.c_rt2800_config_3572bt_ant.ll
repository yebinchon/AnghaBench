; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_3572bt_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_3572bt_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64 }

@GPIO_SWITCH = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@GPIO_SWITCH_0 = common dso_local global i32 0, align 4
@GPIO_SWITCH_1 = common dso_local global i32 0, align 4
@LED_CFG = common dso_local global i32 0, align 4
@LED_CFG_LED_POLAR = common dso_local global i32 0, align 4
@LED_CFG_G_LED_MODE = common dso_local global i32 0, align 4
@LED_CFG_R_LED_MODE = common dso_local global i32 0, align 4
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_LED_MODE = common dso_local global i32 0, align 4
@MCU_BAND_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_config_3572bt_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_3572bt_ant(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = load i32, i32* @GPIO_SWITCH, align 4
  %10 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @GPIO_SWITCH_0, align 4
  %18 = call i32 @rt2x00_set_field32(i32* %3, i32 %17, i32 1)
  %19 = load i32, i32* @GPIO_SWITCH_1, align 4
  %20 = call i32 @rt2x00_set_field32(i32* %3, i32 %19, i32 1)
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @GPIO_SWITCH_0, align 4
  %23 = call i32 @rt2x00_set_field32(i32* %3, i32 %22, i32 0)
  %24 = load i32, i32* @GPIO_SWITCH_1, align 4
  %25 = call i32 @rt2x00_set_field32(i32* %3, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = load i32, i32* @GPIO_SWITCH, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = load i32, i32* @LED_CFG, align 4
  %33 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @LED_CFG_LED_POLAR, align 4
  %36 = call i32 @rt2x00_get_field32(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 3, i32 0
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @LED_CFG_LED_POLAR, align 4
  %42 = call i32 @rt2x00_get_field32(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 3
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @LED_CFG_G_LED_MODE, align 4
  %49 = call i32 @rt2x00_get_field32(i32 %47, i32 %48)
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %26
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @LED_CFG_R_LED_MODE, align 4
  %55 = call i32 @rt2x00_get_field32(i32 %53, i32 %54)
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %51, %26
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = load i32, i32* @EEPROM_FREQ, align 4
  %60 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @EEPROM_FREQ_LED_MODE, align 4
  %63 = call i32 @rt2x00_get_field16(i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 64
  br i1 %68, label %69, label %80

69:                                               ; preds = %66, %57
  %70 = load i32, i32* @LED_CFG_G_LED_MODE, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @rt2x00_set_field32(i32* %3, i32 %70, i32 %71)
  %73 = load i32, i32* @LED_CFG_R_LED_MODE, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @rt2x00_set_field32(i32* %3, i32 %73, i32 %74)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = load i32, i32* @LED_CFG, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %76, i32 %77, i32 %78)
  br label %88

80:                                               ; preds = %66
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = load i32, i32* @MCU_BAND_SELECT, align 4
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 %83, 2
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %81, i32 %82, i32 255, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %80, %69
  br label %89

89:                                               ; preds = %88, %51
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
