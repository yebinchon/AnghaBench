; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225sez2_rf_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225sez2_rf_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@cck_ofdm_gain_settings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8225sez2_rf_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225sez2_rf_set_tx_power(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  store %struct.rtl8180_priv* %10, %struct.rtl8180_priv** %5, align 8
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 35
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 35, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %26 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** @cck_ofdm_gain_settings, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %25, i32* %29, i32 %34)
  %36 = call i32 @usleep_range(i32 1000, i32 5000)
  %37 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %38 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 8
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 35
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  store i32 35, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %52 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** @cck_ofdm_gain_settings, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %51, i32* %55, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 12
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %66 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %65, i32 7, i32 92)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %67, i32 9, i32 92)
  br label %69

69:                                               ; preds = %64, %50
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 18
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %73, i32 7, i32 84)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %75, i32 9, i32 84)
  br label %82

77:                                               ; preds = %69
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %79 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %78, i32 7, i32 80)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %81 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %80, i32 9, i32 80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = call i32 @usleep_range(i32 1000, i32 5000)
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
