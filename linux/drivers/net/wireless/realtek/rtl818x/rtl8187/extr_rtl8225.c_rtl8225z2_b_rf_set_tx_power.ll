; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_b_rf_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_b_rf_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RTL8187BvB = common dso_local global i64 0, align 8
@rtl8225z2_tx_power_cck_ch14 = common dso_local global i32* null, align 8
@rtl8225z2_tx_power_cck = common dso_local global i32* null, align 8
@rtl8225z2_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8225z2_b_rf_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225z2_b_rf_set_tx_power(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8187_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %11, align 8
  store %struct.rtl8187_priv* %12, %struct.rtl8187_priv** %5, align 8
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RTL8187BvB, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 7
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %43 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 15
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @min(i32 %48, i32 35)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 15
  br i1 %51, label %52, label %60

52:                                               ; preds = %2
  %53 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %54 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RTL8187BvB, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 17, i32 25
  store i32 %59, i32* %7, align 4
  br label %70

60:                                               ; preds = %2
  %61 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RTL8187BvB, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 2, i32 10
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %60, %52
  %71 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %73, 4
  %75 = and i32 %74, 15
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @min(i32 %78, i32 35)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 14
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32*, i32** @rtl8225z2_tx_power_cck_ch14, align 8
  store i32* %83, i32** %8, align 8
  br label %86

84:                                               ; preds = %70
  %85 = load i32*, i32** @rtl8225z2_tx_power_cck, align 8
  store i32* %85, i32** %8, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %88 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RTL8187BvB, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = icmp sle i32 %93, 6
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %106

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %97, 11
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  store i32* %101, i32** %8, align 8
  br label %105

102:                                              ; preds = %96
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 16
  store i32* %104, i32** %8, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %95
  br label %129

107:                                              ; preds = %86
  %108 = load i32, i32* %6, align 4
  %109 = icmp sle i32 %108, 5
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %128

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = icmp sle i32 %112, 11
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 8
  store i32* %116, i32** %8, align 8
  br label %127

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = icmp sle i32 %118, 17
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 16
  store i32* %122, i32** %8, align 8
  br label %126

123:                                              ; preds = %117
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 24
  store i32* %125, i32** %8, align 8
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %114
  br label %128

128:                                              ; preds = %127, %110
  br label %129

129:                                              ; preds = %128, %106
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %141, %129
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 8
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 68, %135
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %8, align 8
  %139 = load i32, i32* %137, align 4
  %140 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %134, i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %130

144:                                              ; preds = %130
  %145 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %146 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %147 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32*, i32** @rtl8225z2_tx_gain_cck_ofdm, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 1
  %156 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %145, i32* %149, i32 %155)
  %157 = call i32 @msleep(i32 1)
  %158 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %159 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %160 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** @rtl8225z2_tx_gain_cck_ofdm, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 1
  %169 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %158, i32* %162, i32 %168)
  %170 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %5, align 8
  %171 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @RTL8187BvB, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %144
  %176 = load i32, i32* %7, align 4
  %177 = icmp sle i32 %176, 11
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %180 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %179, i32 135, i32 96)
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %182 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %181, i32 137, i32 96)
  br label %188

183:                                              ; preds = %175
  %184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %185 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %184, i32 135, i32 92)
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %187 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %186, i32 137, i32 92)
  br label %188

188:                                              ; preds = %183, %178
  br label %212

189:                                              ; preds = %144
  %190 = load i32, i32* %7, align 4
  %191 = icmp sle i32 %190, 11
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %194 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %193, i32 135, i32 92)
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %196 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %195, i32 137, i32 92)
  br label %211

197:                                              ; preds = %189
  %198 = load i32, i32* %7, align 4
  %199 = icmp sle i32 %198, 17
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %202 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %201, i32 135, i32 84)
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %204 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %203, i32 137, i32 84)
  br label %210

205:                                              ; preds = %197
  %206 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %207 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %206, i32 135, i32 80)
  %208 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %209 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %208, i32 137, i32 80)
  br label %210

210:                                              ; preds = %205, %200
  br label %211

211:                                              ; preds = %210, %192
  br label %212

212:                                              ; preds = %211, %188
  %213 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
