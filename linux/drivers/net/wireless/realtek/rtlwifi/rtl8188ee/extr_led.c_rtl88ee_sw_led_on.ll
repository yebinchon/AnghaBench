; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_led.c_rtl88ee_sw_led_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_led.c_rtl88ee_sw_led_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_led = type { i32, i32 }
%struct.rtl_priv = type { i32 }

@COMP_LED = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"LedAddr:%X ledpin=%d\0A\00", align 1
@REG_LEDCFG2 = common dso_local global i32 0, align 4
@REG_LEDCFG1 = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88ee_sw_led_on(%struct.ieee80211_hw* %0, %struct.rtl_led* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_led* %1, %struct.rtl_led** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %6, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %10 = load i32, i32* @COMP_LED, align 4
  %11 = load i32, i32* @DBG_LOUD, align 4
  %12 = load i32, i32* @REG_LEDCFG2, align 4
  %13 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %43 [
    i32 130, label %20
    i32 129, label %21
    i32 128, label %34
  ]

20:                                               ; preds = %2
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %23 = load i32, i32* @REG_LEDCFG2, align 4
  %24 = call i32 @rtl_read_byte(%struct.rtl_priv* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %26 = load i32, i32* @REG_LEDCFG2, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 240
  %29 = call i32 @BIT(i32 5)
  %30 = or i32 %28, %29
  %31 = call i32 @BIT(i32 6)
  %32 = or i32 %30, %31
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i32 %26, i32 %32)
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = load i32, i32* @REG_LEDCFG1, align 4
  %37 = call i32 @rtl_read_byte(%struct.rtl_priv* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %39 = load i32, i32* @REG_LEDCFG1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 16
  %42 = call i32 @rtl_write_byte(%struct.rtl_priv* %38, i32 %39, i32 %41)
  br label %51

43:                                               ; preds = %2
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %45 = load i32, i32* @COMP_ERR, align 4
  %46 = load i32, i32* @DBG_LOUD, align 4
  %47 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %48 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %43, %34, %21, %20
  %52 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %53 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
