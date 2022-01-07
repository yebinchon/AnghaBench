; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__disablegpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__disablegpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_GPIO_PIN_CTRL = common dso_local global i64 0, align 8
@REG_GPIO_MUXCFG = common dso_local global i64 0, align 8
@REG_LEDCFG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_disablegpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_disablegpio(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %11 = add nsw i64 %10, 2
  %12 = call i32 @rtl_write_word(%struct.rtl_priv* %9, i64 %11, i32 0)
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %15 = call i32 @rtl_read_dword(%struct.rtl_priv* %13, i64 %14)
  %16 = and i32 %15, -65281
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %20, 16711680
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rtl_write_dword(%struct.rtl_priv* %24, i64 %25, i32 %26)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i64, i64* @REG_GPIO_MUXCFG, align 8
  %30 = add nsw i64 %29, 3
  %31 = call i32 @rtl_write_byte(%struct.rtl_priv* %28, i64 %30, i32 0)
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i64, i64* @REG_GPIO_MUXCFG, align 8
  %34 = add nsw i64 %33, 2
  %35 = call i32 @rtl_read_word(%struct.rtl_priv* %32, i64 %34)
  %36 = and i32 %35, 65295
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 4
  %41 = or i32 %40, 1920
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %46 = add nsw i64 %45, 2
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @rtl_write_word(%struct.rtl_priv* %44, i64 %46, i32 %47)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i64, i64* @REG_LEDCFG0, align 8
  %51 = call i32 @rtl_write_word(%struct.rtl_priv* %49, i64 %50, i32 32896)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
