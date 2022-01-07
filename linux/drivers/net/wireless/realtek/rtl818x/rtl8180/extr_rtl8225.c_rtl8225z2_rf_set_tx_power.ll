; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8225z2_rf_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8225z2_rf_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@rtl8225z2_tx_power_cck_ch14 = common dso_local global i32* null, align 8
@rtl8225z2_tx_power_cck_B = common dso_local global i32* null, align 8
@rtl8225z2_tx_power_cck_A = common dso_local global i32* null, align 8
@rtl8225z2_tx_power_cck = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8225z2_rf_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225z2_rf_set_tx_power(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %11, align 8
  store %struct.rtl8180_priv* %12, %struct.rtl8180_priv** %5, align 8
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 14
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32*, i32** @rtl8225z2_tx_power_cck_ch14, align 8
  store i32* %36, i32** %8, align 8
  br label %51

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 12
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** @rtl8225z2_tx_power_cck_B, align 8
  store i32* %41, i32** %8, align 8
  br label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** @rtl8225z2_tx_power_cck_A, align 8
  store i32* %46, i32** %8, align 8
  br label %49

47:                                               ; preds = %42
  %48 = load i32*, i32** @rtl8225z2_tx_power_cck, align 8
  store i32* %48, i32** %8, align 8
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %35
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 68, %57
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %8, align 8
  %61 = load i32, i32* %59, align 4
  %62 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %56, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %52

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @min(i32 %67, i32 35)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 13
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 14
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %66
  store i32 12, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 15
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %83 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %84 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %82, i32* %86, i32 %87)
  %89 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %90 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %91 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %89, i32* %93)
  %95 = call i32 @msleep(i32 1)
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @min(i32 %96, i32 35)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %99 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %100 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %98, i32* %102, i32 %103)
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %105, i32 2, i32 98)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %107, i32 5, i32 0)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %110 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %109, i32 6, i32 64)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %112 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %111, i32 7, i32 0)
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %114 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %113, i32 8, i32 64)
  %115 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
