; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_led.c_rtl92de_sw_led_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_led.c_rtl92de_sw_led_on.c"
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
@REG_LEDCFG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92de_sw_led_on(%struct.ieee80211_hw* %0, %struct.rtl_led* %1) #0 {
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
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %70 [
    i32 130, label %20
    i32 129, label %21
    i32 128, label %59
  ]

20:                                               ; preds = %2
  br label %75

21:                                               ; preds = %2
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %23 = load i32, i32* @REG_LEDCFG2, align 4
  %24 = call i32 @rtl_read_byte(%struct.rtl_priv* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 33142
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 33171
  br i1 %35, label %36, label %48

36:                                               ; preds = %30, %21
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %38 = load i32, i32* @REG_LEDCFG2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 240
  %41 = call i32 @BIT(i32 7)
  %42 = or i32 %40, %41
  %43 = call i32 @BIT(i32 5)
  %44 = or i32 %42, %43
  %45 = call i32 @BIT(i32 6)
  %46 = or i32 %44, %45
  %47 = call i32 @rtl_write_byte(%struct.rtl_priv* %37, i32 %38, i32 %46)
  br label %58

48:                                               ; preds = %30
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %50 = load i32, i32* @REG_LEDCFG2, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 240
  %53 = call i32 @BIT(i32 7)
  %54 = or i32 %52, %53
  %55 = call i32 @BIT(i32 5)
  %56 = or i32 %54, %55
  %57 = call i32 @rtl_write_byte(%struct.rtl_priv* %49, i32 %50, i32 %56)
  br label %58

58:                                               ; preds = %48, %36
  br label %75

59:                                               ; preds = %2
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %61 = load i32, i32* @REG_LEDCFG1, align 4
  %62 = call i32 @rtl_read_byte(%struct.rtl_priv* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %64 = load i32, i32* @REG_LEDCFG2, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 15
  %67 = call i32 @BIT(i32 5)
  %68 = or i32 %66, %67
  %69 = call i32 @rtl_write_byte(%struct.rtl_priv* %63, i32 %64, i32 %68)
  br label %75

70:                                               ; preds = %2
  %71 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %72 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %59, %58, %20
  %76 = load %struct.rtl_led*, %struct.rtl_led** %4, align 8
  %77 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
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
