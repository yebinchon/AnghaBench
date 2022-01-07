; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_led.c_rtl92se_sw_led_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_led.c_rtl92se_sw_led_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_led = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@COMP_LED = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"LedAddr:%X ledpin=%d\0A\00", align 1
@LEDCFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92se_sw_led_off(%struct.ieee80211_hw* %0, %struct.rtl_led* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_led*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_led* %1, %struct.rtl_led** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = icmp ne %struct.rtl_priv* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  br label %73

17:                                               ; preds = %11
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %19 = load i32, i32* @COMP_LED, align 4
  %20 = load i32, i32* @DBG_LOUD, align 4
  %21 = load i32, i32* @LEDCFG, align 4
  %22 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %23 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %27 = load i32, i32* @LEDCFG, align 4
  %28 = call i32 @rtl_read_byte(%struct.rtl_priv* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %65 [
    i32 130, label %32
    i32 129, label %33
    i32 128, label %56
  ]

32:                                               ; preds = %17
  br label %70

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 240
  store i32 %35, i32* %6, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %43 = load i32, i32* @LEDCFG, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @BIT(i32 1)
  %46 = or i32 %44, %45
  %47 = call i32 @rtl_write_byte(%struct.rtl_priv* %42, i32 %43, i32 %46)
  br label %55

48:                                               ; preds = %33
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = load i32, i32* @LEDCFG, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @BIT(i32 3)
  %53 = or i32 %51, %52
  %54 = call i32 @rtl_write_byte(%struct.rtl_priv* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %41
  br label %70

56:                                               ; preds = %17
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 15
  store i32 %58, i32* %6, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = load i32, i32* @LEDCFG, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @BIT(i32 3)
  %63 = or i32 %61, %62
  %64 = call i32 @rtl_write_byte(%struct.rtl_priv* %59, i32 %60, i32 %63)
  br label %70

65:                                               ; preds = %17
  %66 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %56, %55, %32
  %71 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %72 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %16
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
