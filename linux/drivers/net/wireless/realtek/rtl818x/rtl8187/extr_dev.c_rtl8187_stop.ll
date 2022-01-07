; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.sk_buff = type { i32 }

@RTL818X_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG4_VCOOFF = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8187_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8187_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  store %struct.rtl8187_priv* %8, %struct.rtl8187_priv** %3, align 8
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %13, i32 0, i32 5
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %12, i32* %16, i32 0)
  %18 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %19 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %19, i32 0, i32 5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %18, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @RTL818X_CMD_TX_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RTL818X_CMD_RX_ENABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %33 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %33, i32 0, i32 5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %32, i32* %36, i32 %37)
  %39 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %39, i32 0, i32 6
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %42, align 8
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = call i32 %43(%struct.ieee80211_hw* %44)
  %46 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %47 = call i32 @rtl8187_set_anaparam(%struct.rtl8187_priv* %46, i32 0)
  %48 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %49 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %49, i32 0, i32 5
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %54 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %48, i32* %52, i32 %53)
  %55 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %56 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %56, i32 0, i32 5
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %55, i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %62 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %62, i32 0, i32 5
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @RTL818X_CONFIG4_VCOOFF, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %61, i32* %65, i32 %68)
  %70 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %71 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %71, i32 0, i32 5
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %76 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %70, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %83, %1
  %78 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %79 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call %struct.sk_buff* @skb_dequeue(i32* %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %4, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %84)
  br label %77

86:                                               ; preds = %77
  %87 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %88 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %87, i32 0, i32 3
  %89 = call i32 @usb_kill_anchored_urbs(i32* %88)
  %90 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %94 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %86
  %98 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %99 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %98, i32 0, i32 0
  %100 = call i32 @cancel_delayed_work_sync(i32* %99)
  br label %101

101:                                              ; preds = %97, %86
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8187_set_anaparam(%struct.rtl8187_priv*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
