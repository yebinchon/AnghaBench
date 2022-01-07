; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_led.c_rtl8812ae_sw_led_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_led.c_rtl8812ae_sw_led_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_led = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@REG_LEDCFG1 = common dso_local global i32 0, align 4
@REG_LEDCFG2 = common dso_local global i32 0, align 4
@COMP_LED = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"In SwLedOff,LedAddr:%X LEDPIN=%d\0A\00", align 1
@REG_MAC_PINMUX_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8812ae_sw_led_off(%struct.ieee80211_hw* %0, %struct.rtl_led* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_led* %1, %struct.rtl_led** %4, align 8
  %8 = load i32, i32* @REG_LEDCFG1, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %6, align 8
  %11 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %12 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %19 [
    i32 129, label %14
    i32 128, label %16
    i32 130, label %18
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @REG_LEDCFG1, align 4
  store i32 %15, i32* %5, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @REG_LEDCFG2, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %2, %18
  br label %20

20:                                               ; preds = %19, %16, %14
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %22 = load i32, i32* @COMP_LED, align 4
  %23 = load i32, i32* @DBG_LOUD, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %20
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @rtl_read_byte(%struct.rtl_priv* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 208
  store i32 %39, i32* %5, align 4
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @BIT(i32 3)
  %44 = or i32 %42, %43
  %45 = call i32 @rtl_write_byte(%struct.rtl_priv* %40, i32 %41, i32 %44)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %47 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %48 = call i32 @rtl_read_byte(%struct.rtl_priv* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 254
  store i32 %50, i32* %7, align 4
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %52 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @rtl_write_byte(%struct.rtl_priv* %51, i32 %52, i32 %53)
  br label %59

55:                                               ; preds = %20
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @rtl_write_byte(%struct.rtl_priv* %56, i32 %57, i32 40)
  br label %59

59:                                               ; preds = %55, %34
  %60 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
