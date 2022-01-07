; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_config_cardbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_config_cardbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RTL818X_CHIP_FAMILY_RTL8187SE = common dso_local global i64 0, align 8
@FEMR_SE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8180_config_cardbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_config_cardbus(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  store %struct.rtl8180_priv* %8, %struct.rtl8180_priv** %3, align 8
  %9 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %9, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, 2
  store i32 %16, i32* %5, align 4
  %17 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %18 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %17, i32* %21, i32 %22)
  %24 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %31 = load i32*, i32** @FEMR_SE, align 8
  %32 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %30, i32* %31, i32 65535)
  br label %49

33:                                               ; preds = %1
  %34 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %35 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %34, i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 49168
  store i32 %41, i32* %4, align 4
  %42 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %43 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %42, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8180_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
