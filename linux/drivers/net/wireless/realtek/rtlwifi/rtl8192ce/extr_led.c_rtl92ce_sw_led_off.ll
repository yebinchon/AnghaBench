; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_led.c_rtl92ce_sw_led_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_led.c_rtl92ce_sw_led_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_led = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMP_LED = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"LedAddr:%X ledpin=%d\0A\00", align 1
@REG_LEDCFG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_sw_led_off(%struct.ieee80211_hw* %0, %struct.rtl_led* %1) #0 {
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
  %10 = load i32, i32* @COMP_LED, align 4
  %11 = load i32, i32* @DBG_LOUD, align 4
  %12 = load i32, i32* @REG_LEDCFG2, align 4
  %13 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = load i32, i32* @REG_LEDCFG2, align 4
  %19 = call i32 @rtl_read_byte(%struct.rtl_priv* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %64 [
    i32 130, label %23
    i32 129, label %24
    i32 128, label %55
  ]

23:                                               ; preds = %2
  br label %69

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 240
  store i32 %26, i32* %6, align 4
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %34 = load i32, i32* @REG_LEDCFG2, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BIT(i32 1)
  %37 = or i32 %35, %36
  %38 = call i32 @BIT(i32 5)
  %39 = or i32 %37, %38
  %40 = call i32 @BIT(i32 6)
  %41 = or i32 %39, %40
  %42 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i32 %34, i32 %41)
  br label %54

43:                                               ; preds = %24
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %45 = load i32, i32* @REG_LEDCFG2, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @BIT(i32 3)
  %48 = or i32 %46, %47
  %49 = call i32 @BIT(i32 5)
  %50 = or i32 %48, %49
  %51 = call i32 @BIT(i32 6)
  %52 = or i32 %50, %51
  %53 = call i32 @rtl_write_byte(%struct.rtl_priv* %44, i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %43, %32
  br label %69

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 15
  store i32 %57, i32* %6, align 4
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %59 = load i32, i32* @REG_LEDCFG2, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @BIT(i32 3)
  %62 = or i32 %60, %61
  %63 = call i32 @rtl_write_byte(%struct.rtl_priv* %58, i32 %59, i32 %62)
  br label %69

64:                                               ; preds = %2
  %65 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %66 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %55, %54, %23
  %70 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
