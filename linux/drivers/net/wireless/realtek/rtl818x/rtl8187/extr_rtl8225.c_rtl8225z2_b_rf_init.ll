; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_b_rf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_b_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@rtl8225z2_rxgain = common dso_local global i32* null, align 8
@rtl8225z2_agc = common dso_local global i32* null, align 8
@rtl8225z2_ofdm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8225z2_b_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225z2_b_rf_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8187_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  store %struct.rtl8187_priv* %7, %struct.rtl8187_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl8225_write(%struct.ieee80211_hw* %8, i32 0, i32 183)
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @rtl8225_write(%struct.ieee80211_hw* %10, i32 1, i32 3808)
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @rtl8225_write(%struct.ieee80211_hw* %12, i32 2, i32 1101)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call i32 @rtl8225_write(%struct.ieee80211_hw* %14, i32 3, i32 1089)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @rtl8225_write(%struct.ieee80211_hw* %16, i32 4, i32 2243)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @rtl8225_write(%struct.ieee80211_hw* %18, i32 5, i32 3186)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @rtl8225_write(%struct.ieee80211_hw* %20, i32 6, i32 230)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = call i32 @rtl8225_write(%struct.ieee80211_hw* %22, i32 7, i32 2090)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @rtl8225_write(%struct.ieee80211_hw* %24, i32 8, i32 63)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = call i32 @rtl8225_write(%struct.ieee80211_hw* %26, i32 9, i32 821)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = call i32 @rtl8225_write(%struct.ieee80211_hw* %28, i32 10, i32 2516)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = call i32 @rtl8225_write(%struct.ieee80211_hw* %30, i32 11, i32 1979)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = call i32 @rtl8225_write(%struct.ieee80211_hw* %32, i32 12, i32 2128)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = call i32 @rtl8225_write(%struct.ieee80211_hw* %34, i32 13, i32 3295)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = call i32 @rtl8225_write(%struct.ieee80211_hw* %36, i32 14, i32 43)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = call i32 @rtl8225_write(%struct.ieee80211_hw* %38, i32 15, i32 276)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = call i32 @rtl8225_write(%struct.ieee80211_hw* %40, i32 0, i32 439)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %59, %1
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** @rtl8225z2_rxgain, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @rtl8225_write(%struct.ieee80211_hw* %48, i32 1, i32 %50)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %53 = load i32*, i32** @rtl8225z2_rxgain, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rtl8225_write(%struct.ieee80211_hw* %52, i32 2, i32 %57)
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = call i32 @rtl8225_write(%struct.ieee80211_hw* %63, i32 3, i32 128)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = call i32 @rtl8225_write(%struct.ieee80211_hw* %65, i32 5, i32 4)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = call i32 @rtl8225_write(%struct.ieee80211_hw* %67, i32 0, i32 183)
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %70 = call i32 @rtl8225_write(%struct.ieee80211_hw* %69, i32 2, i32 3149)
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %72 = call i32 @rtl8225_write(%struct.ieee80211_hw* %71, i32 2, i32 1101)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = call i32 @rtl8225_write(%struct.ieee80211_hw* %73, i32 0, i32 703)
  %75 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %76 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %77 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %75, i32* %79, i32 3)
  %81 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %82 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %83 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %81, i32* %85, i32 7)
  %87 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %88 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %89 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %87, i32* %91, i32 3)
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %94 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %93, i32 128, i32 18)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %114, %62
  %96 = load i32, i32* %4, align 4
  %97 = load i32*, i32** @rtl8225z2_agc, align 8
  %98 = call i32 @ARRAY_SIZE(i32* %97)
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = load i32*, i32** @rtl8225z2_agc, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %101, i32 15, i32 %106)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 128, %109
  %111 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %108, i32 14, i32 %110)
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %113 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %112, i32 14, i32 0)
  br label %114

114:                                              ; preds = %100
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %118, i32 128, i32 16)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %134, %117
  %121 = load i32, i32* %4, align 4
  %122 = load i32*, i32** @rtl8225z2_ofdm, align 8
  %123 = call i32 @ARRAY_SIZE(i32* %122)
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32*, i32** @rtl8225z2_ofdm, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %126, i32 %127, i32 %132)
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %120

137:                                              ; preds = %120
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %139 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %138, i32 151, i32 70)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %140, i32 164, i32 182)
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %143 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %142, i32 133, i32 252)
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %145 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %144, i32 193, i32 136)
  ret void
}

declare dso_local i32 @rtl8225_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
