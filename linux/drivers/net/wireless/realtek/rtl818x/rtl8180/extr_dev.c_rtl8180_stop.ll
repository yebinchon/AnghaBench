; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*)* }

@RTL818X_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG4_VCOOFF = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8180_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 1
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  store %struct.rtl8180_priv* %8, %struct.rtl8180_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call i32 @rtl8180_int_disable(%struct.ieee80211_hw* %9)
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %11, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @RTL818X_CMD_TX_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @RTL818X_CMD_RX_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %26 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %25, i32* %29, i32 %30)
  %32 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %35, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %38 = call i32 %36(%struct.ieee80211_hw* %37)
  %39 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %40 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %45 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %39, i32* %43, i32 %44)
  %46 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %47 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %48 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %46, i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %53 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RTL818X_CONFIG4_VCOOFF, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %52, i32* %56, i32 %59)
  %61 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %62 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %67 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %61, i32* %65, i32 %66)
  %68 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %69 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = call i32 @free_irq(i32 %72, %struct.ieee80211_hw* %73)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %76 = call i32 @rtl8180_free_rx_ring(%struct.ieee80211_hw* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %88, %1
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @rtl8180_free_tx_ring(%struct.ieee80211_hw* %85, i32 %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %77

91:                                               ; preds = %77
  ret void
}

declare dso_local i32 @rtl8180_int_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8180_free_rx_ring(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8180_free_tx_ring(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
