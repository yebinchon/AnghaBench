; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_rf_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_rf_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@rtl8225z2_tx_power_cck_ch14 = common dso_local global i32* null, align 8
@rtl8225z2_tx_power_cck = common dso_local global i32* null, align 8
@rtl8225z2_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@RTL8187_RTL8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8225z2_rf_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225z2_rf_set_tx_power(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %12, align 8
  store %struct.rtl8187_priv* %13, %struct.rtl8187_priv** %5, align 8
  %14 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %6, align 4
  %24 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %25 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @min(i32 %34, i32 15)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 15
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @min(i32 %42, i32 35)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 15
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 25, i32* %7, align 4
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 10
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %52 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @min(i32 %57, i32 35)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 14
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32*, i32** @rtl8225z2_tx_power_cck_ch14, align 8
  store i32* %62, i32** %8, align 8
  br label %65

63:                                               ; preds = %50
  %64 = load i32*, i32** @rtl8225z2_tx_power_cck, align 8
  store i32* %64, i32** %8, align 8
  br label %65

65:                                               ; preds = %63, %61
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 68, %71
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %73, align 4
  %76 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %70, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %82 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %83 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i32*, i32** @rtl8225z2_tx_gain_cck_ofdm, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %81, i32* %85, i32 %90)
  %92 = call i32 @msleep(i32 1)
  %93 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %94 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %95 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %99 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %93, i32* %97, i32 %98)
  %100 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %101 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %102 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %100, i32* %104)
  store i32 %105, i32* %9, align 4
  %106 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %107 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %108 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %106, i32* %110, i32 %113)
  %115 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %116 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %117 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* @RTL8187_RTL8225_ANAPARAM2_ON, align 4
  %121 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %115, i32* %119, i32 %120)
  %122 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %123 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %124 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  %131 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %122, i32* %126, i32 %130)
  %132 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %133 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %134 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %138 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %132, i32* %136, i32 %137)
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %140 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %139, i32 2, i32 66)
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %142 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %141, i32 5, i32 0)
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %144 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %143, i32 6, i32 64)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %146 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %145, i32 7, i32 0)
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %148 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %147, i32 8, i32 64)
  %149 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %150 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %151 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32*, i32** @rtl8225z2_tx_gain_cck_ofdm, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %149, i32* %153, i32 %158)
  %160 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
