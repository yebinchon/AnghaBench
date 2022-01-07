; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_rf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225z2_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@rtl8225z2_rxgain = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"RF Calibration Failed! %x\0A\00", align 1
@rtl8225_agc = common dso_local global i32* null, align 8
@rtl8225z2_gain_bg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8225z2_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225z2_rf_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8187_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 1
  %7 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  store %struct.rtl8187_priv* %7, %struct.rtl8187_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl8225_write(%struct.ieee80211_hw* %8, i32 0, i32 703)
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
  %40 = call i32 @msleep(i32 100)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = call i32 @rtl8225_write(%struct.ieee80211_hw* %41, i32 0, i32 439)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %60, %1
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** @rtl8225z2_rxgain, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @rtl8225_write(%struct.ieee80211_hw* %49, i32 1, i32 %51)
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %54 = load i32*, i32** @rtl8225z2_rxgain, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtl8225_write(%struct.ieee80211_hw* %53, i32 2, i32 %58)
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @rtl8225_write(%struct.ieee80211_hw* %64, i32 3, i32 128)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @rtl8225_write(%struct.ieee80211_hw* %66, i32 5, i32 4)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @rtl8225_write(%struct.ieee80211_hw* %68, i32 0, i32 183)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = call i32 @rtl8225_write(%struct.ieee80211_hw* %70, i32 2, i32 3149)
  %72 = call i32 @msleep(i32 200)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = call i32 @rtl8225_write(%struct.ieee80211_hw* %73, i32 2, i32 1101)
  %75 = call i32 @msleep(i32 100)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = call i32 @rtl8225_read(%struct.ieee80211_hw* %76, i32 6)
  %78 = and i32 %77, 128
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %63
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %82 = call i32 @rtl8225_write(%struct.ieee80211_hw* %81, i32 2, i32 3149)
  %83 = call i32 @msleep(i32 200)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %85 = call i32 @rtl8225_write(%struct.ieee80211_hw* %84, i32 2, i32 1101)
  %86 = call i32 @msleep(i32 100)
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %88 = call i32 @rtl8225_read(%struct.ieee80211_hw* %87, i32 6)
  %89 = and i32 %88, 128
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %80
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %96 = call i32 @rtl8225_read(%struct.ieee80211_hw* %95, i32 6)
  %97 = call i32 @wiphy_warn(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %91, %80
  br label %99

99:                                               ; preds = %98, %63
  %100 = call i32 @msleep(i32 200)
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = call i32 @rtl8225_write(%struct.ieee80211_hw* %101, i32 0, i32 703)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %120, %99
  %104 = load i32, i32* %4, align 4
  %105 = load i32*, i32** @rtl8225_agc, align 8
  %106 = call i32 @ARRAY_SIZE(i32* %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = load i32*, i32** @rtl8225_agc, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %109, i32 11, i32 %114)
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 128, %117
  %119 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %116, i32 10, i32 %118)
  br label %120

120:                                              ; preds = %108
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %103

123:                                              ; preds = %103
  %124 = call i32 @msleep(i32 1)
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %126 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %125, i32 0, i32 1)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %128 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %127, i32 1, i32 2)
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %130 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %129, i32 2, i32 66)
  %131 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %132 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %131, i32 3, i32 0)
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %134 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %133, i32 4, i32 0)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %135, i32 5, i32 0)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %137, i32 6, i32 64)
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %140 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %139, i32 7, i32 0)
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %142 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %141, i32 8, i32 64)
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %144 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %143, i32 9, i32 254)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %146 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %145, i32 10, i32 8)
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %148 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %147, i32 11, i32 128)
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %150 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %149, i32 12, i32 1)
  %151 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %152 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %151, i32 13, i32 67)
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %154 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %153, i32 14, i32 211)
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %156 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %155, i32 15, i32 56)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %158 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %157, i32 16, i32 132)
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %160 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %159, i32 17, i32 7)
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %162 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %161, i32 18, i32 32)
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %164 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %163, i32 19, i32 32)
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %166 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %165, i32 20, i32 0)
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %168 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %167, i32 21, i32 64)
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %170 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %169, i32 22, i32 0)
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %172 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %171, i32 23, i32 64)
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %174 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %173, i32 24, i32 239)
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %176 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %175, i32 25, i32 25)
  %177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %178 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %177, i32 26, i32 32)
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %180 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %179, i32 27, i32 21)
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %182 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %181, i32 28, i32 4)
  %183 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %184 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %183, i32 29, i32 197)
  %185 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %186 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %185, i32 30, i32 149)
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %188 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %187, i32 31, i32 117)
  %189 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %190 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %189, i32 32, i32 31)
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %192 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %191, i32 33, i32 23)
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %194 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %193, i32 34, i32 22)
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %196 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %195, i32 35, i32 128)
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %198 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %197, i32 36, i32 70)
  %199 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %200 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %199, i32 37, i32 0)
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %202 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %201, i32 38, i32 144)
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %204 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %203, i32 39, i32 136)
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %206 = load i32*, i32** @rtl8225z2_gain_bg, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 12
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %205, i32 11, i32 %208)
  %210 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %211 = load i32*, i32** @rtl8225z2_gain_bg, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 13
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %210, i32 27, i32 %213)
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %216 = load i32*, i32** @rtl8225z2_gain_bg, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 14
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %215, i32 29, i32 %218)
  %220 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %221 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %220, i32 33, i32 55)
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %223 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %222, i32 0, i32 152)
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %225 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %224, i32 3, i32 32)
  %226 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %227 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %226, i32 4, i32 126)
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %229 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %228, i32 5, i32 18)
  %230 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %231 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %230, i32 6, i32 252)
  %232 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %233 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %232, i32 7, i32 120)
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %235 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %234, i32 8, i32 46)
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %237 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %236, i32 16, i32 155)
  %238 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %239 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %238, i32 17, i32 136)
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %241 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %240, i32 18, i32 71)
  %242 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %243 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %242, i32 19, i32 208)
  %244 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %245 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %244, i32 25, i32 0)
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %247 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %246, i32 26, i32 160)
  %248 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %249 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %248, i32 27, i32 8)
  %250 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %251 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %250, i32 64, i32 134)
  %252 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %253 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %252, i32 65, i32 141)
  %254 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %255 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %254, i32 66, i32 21)
  %256 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %257 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %256, i32 67, i32 24)
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %259 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %258, i32 68, i32 54)
  %260 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %261 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %260, i32 69, i32 53)
  %262 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %263 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %262, i32 70, i32 46)
  %264 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %265 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %264, i32 71, i32 37)
  %266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %267 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %266, i32 72, i32 28)
  %268 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %269 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %268, i32 73, i32 18)
  %270 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %271 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %270, i32 74, i32 9)
  %272 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %273 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %272, i32 75, i32 4)
  %274 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %275 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %274, i32 76, i32 5)
  %276 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %277 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %276, i32* inttoptr (i64 65371 to i32*), i32 13)
  %278 = call i32 @msleep(i32 1)
  %279 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %280 = call i32 @rtl8225z2_rf_set_tx_power(%struct.ieee80211_hw* %279, i32 1)
  %281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %282 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %281, i32 16, i32 155)
  %283 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %284 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %283, i32 38, i32 144)
  %285 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %286 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %287 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %286, i32 0, i32 0
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %285, i32* %289, i32 3)
  %291 = call i32 @msleep(i32 1)
  %292 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %293 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %292, i32* inttoptr (i64 65428 to i32*), i32 1035993090)
  ret void
}

declare dso_local i32 @rtl8225_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtl8225_read(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @wiphy_warn(i32, i8*, i32) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225z2_rf_set_tx_power(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
