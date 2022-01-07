; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_rf_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_rf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@RTL8225_ANAPARAM2_OFF = common dso_local global i32 0, align 4
@RTL8225_ANAPARAM_OFF = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8225_rf_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_rf_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  store %struct.rtl8180_priv* %7, %struct.rtl8180_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl8225_write(%struct.ieee80211_hw* %8, i32 4, i32 31)
  %10 = call i32 @msleep(i32 1)
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %17 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %11, i32* %15, i32 %16)
  %18 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %19 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %18, i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %25 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %24, i32* %28, i32 %31)
  %33 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %34 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* @RTL8225_ANAPARAM2_OFF, align 4
  %39 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %33, i32* %37, i32 %38)
  %40 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %41 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* @RTL8225_ANAPARAM_OFF, align 4
  %46 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %40, i32* %44, i32 %45)
  %47 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %48 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %47, i32* %51, i32 %55)
  %57 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %58 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %63 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %57, i32* %61, i32 %62)
  ret void
}

declare dso_local i32 @rtl8225_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
