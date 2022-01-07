; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_rf_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_rf_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@rtl8225_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@rtl8225_tx_power_cck_ch14 = common dso_local global i32* null, align 8
@rtl8225_tx_power_cck = common dso_local global i32* null, align 8
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@RTL8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@rtl8225_tx_power_ofdm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8225_rf_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_rf_set_tx_power(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %12, align 8
  store %struct.rtl8180_priv* %13, %struct.rtl8180_priv** %5, align 8
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %6, align 4
  %24 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %25 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @min(i32 %34, i32 35)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @min(i32 %36, i32 35)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %39 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32*, i32** @rtl8225_tx_gain_cck_ofdm, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %44, 6
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 1
  %50 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %38, i32* %42, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 14
  br i1 %52, label %53, label %60

53:                                               ; preds = %2
  %54 = load i32*, i32** @rtl8225_tx_power_cck_ch14, align 8
  %55 = load i32, i32* %6, align 4
  %56 = srem i32 %55, 6
  %57 = mul nsw i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %8, align 8
  br label %67

60:                                               ; preds = %2
  %61 = load i32*, i32** @rtl8225_tx_power_cck, align 8
  %62 = load i32, i32* %6, align 4
  %63 = srem i32 %62, 6
  %64 = mul nsw i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32* %66, i32** %8, align 8
  br label %67

67:                                               ; preds = %60, %53
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 68, %73
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  %77 = load i32, i32* %75, align 4
  %78 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %72, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %68

82:                                               ; preds = %68
  %83 = call i32 @msleep(i32 1)
  %84 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %85 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %86 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %90 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %84, i32* %88, i32 %89)
  %91 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %92 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %93 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %91, i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %98 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %99 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %97, i32* %101, i32 %104)
  %106 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %107 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %108 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* @RTL8225_ANAPARAM2_ON, align 4
  %112 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %106, i32* %110, i32 %111)
  %113 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %114 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %115 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %113, i32* %117, i32 %121)
  %123 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %124 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %125 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %129 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %123, i32* %127, i32 %128)
  %130 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %131 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %132 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32*, i32** @rtl8225_tx_gain_cck_ofdm, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sdiv i32 %136, 6
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 1
  %142 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %130, i32* %134, i32 %141)
  %143 = load i32*, i32** @rtl8225_tx_power_ofdm, align 8
  %144 = load i32, i32* %7, align 4
  %145 = srem i32 %144, 6
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32* %147, i32** %8, align 8
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %148, i32 5, i32 %150)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %152, i32 7, i32 %154)
  %156 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
