; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8xxxu_priv* }
%struct.rtl8xxxu_priv = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rtl8xxxu_priv*)* }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@REG_RXFLTMAP0 = common dso_local global i32 0, align 4
@REG_RXFLTMAP2 = common dso_local global i32 0, align 4
@REG_USB_HIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8xxxu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %6, align 8
  store %struct.rtl8xxxu_priv* %7, %struct.rtl8xxxu_priv** %3, align 8
  %8 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %9 = load i32, i32* @REG_TXPAUSE, align 4
  %10 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %8, i32 %9, i32 255)
  %11 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %12 = load i32, i32* @REG_RXFLTMAP0, align 4
  %13 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %11, i32 %12, i32 0)
  %14 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %15 = load i32, i32* @REG_RXFLTMAP2, align 4
  %16 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %14, i32 %15, i32 0)
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %17, i32 0, i32 6
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %23, i32 0, i32 6
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %27, i32 0, i32 5
  %29 = call i32 @usb_kill_anchored_urbs(i32* %28)
  %30 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %30, i32 0, i32 4
  %32 = call i32 @usb_kill_anchored_urbs(i32* %31)
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %38, i32 0, i32 3
  %40 = call i32 @usb_kill_anchored_urbs(i32* %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %43 = load i32, i32* @REG_TXPAUSE, align 4
  %44 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %42, i32 %43, i32 255)
  %45 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.rtl8xxxu_priv*)*, i32 (%struct.rtl8xxxu_priv*)** %48, align 8
  %50 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %51 = call i32 %49(%struct.rtl8xxxu_priv* %50)
  %52 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %53 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %58 = load i32, i32* @REG_USB_HIMR, align 4
  %59 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %41
  %61 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %62 = call i32 @rtl8xxxu_free_rx_resources(%struct.rtl8xxxu_priv* %61)
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %64 = call i32 @rtl8xxxu_free_tx_resources(%struct.rtl8xxxu_priv* %63)
  ret void
}

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_free_rx_resources(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_free_tx_resources(%struct.rtl8xxxu_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
