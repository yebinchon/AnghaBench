; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@RTL818X_INT_TXB_OK = common dso_local global i32 0, align 4
@RTL818X_INT_TXB_ERR = common dso_local global i32 0, align 4
@RTL818X_INT_TXL_OK = common dso_local global i32 0, align 4
@RTL818X_INT_TXL_ERR = common dso_local global i32 0, align 4
@RTL818X_INT_RX_OK = common dso_local global i32 0, align 4
@RTL818X_INT_RX_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtl8180_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rtl8180_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %12, align 8
  store %struct.rtl8180_priv* %13, %struct.rtl8180_priv** %7, align 8
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %15 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %18 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %19 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %17, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 65535
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %75

33:                                               ; preds = %2
  %34 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %35 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %36 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %34, i32* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @RTL818X_INT_TXB_OK, align 4
  %43 = load i32, i32* @RTL818X_INT_TXB_ERR, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %49 = call i32 @rtl8180_handle_tx(%struct.ieee80211_hw* %48, i32 1)
  br label %50

50:                                               ; preds = %47, %33
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @RTL818X_INT_TXL_OK, align 4
  %53 = load i32, i32* @RTL818X_INT_TXL_ERR, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %59 = call i32 @rtl8180_handle_tx(%struct.ieee80211_hw* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @RTL818X_INT_RX_OK, align 4
  %63 = load i32, i32* @RTL818X_INT_RX_ERR, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %69 = call i32 @rtl8180_handle_rx(%struct.ieee80211_hw* %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %72 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %28
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8180_priv*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl8180_handle_tx(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8180_handle_rx(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
