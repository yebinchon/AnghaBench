; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_set_antenna_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_set_antenna_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @rtl8187se_set_antenna_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187se_set_antenna_config(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8180_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  store %struct.rtl8180_priv* %10, %struct.rtl8180_priv** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %11, i32 12, i32 9)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %20 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %21 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %19, i32* %23, i32 0)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %26 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %25, i32 17, i32 187)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %27, i32 1, i32 199)
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %30 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %29, i32 13, i32 84)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %32 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %31, i32 24, i32 178)
  br label %48

33:                                               ; preds = %15
  %34 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %35 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %36 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %34, i32* %38, i32 3)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %41 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %40, i32 17, i32 155)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %42, i32 1, i32 199)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %44, i32 13, i32 92)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %47 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %46, i32 24, i32 178)
  br label %48

48:                                               ; preds = %33, %18
  br label %83

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %54 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %55 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %53, i32* %57, i32 0)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %60 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %59, i32 17, i32 187)
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %61, i32 1, i32 71)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %64 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %63, i32 13, i32 84)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %66 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %65, i32 24, i32 50)
  br label %82

67:                                               ; preds = %49
  %68 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %69 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %70 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %68, i32* %72, i32 3)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %75 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %74, i32 17, i32 155)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %77 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %76, i32 1, i32 71)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %79 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %78, i32 13, i32 92)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %81 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %80, i32 24, i32 50)
  br label %82

82:                                               ; preds = %67, %52
  br label %83

83:                                               ; preds = %82, %48
  ret void
}

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
