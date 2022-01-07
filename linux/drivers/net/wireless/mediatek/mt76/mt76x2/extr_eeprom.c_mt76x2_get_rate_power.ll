; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_rate_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_rate_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76_rate_power = type { i8**, i8**, i8**, i8**, i8** }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_CCK = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_OFDM_5G_6M = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_OFDM_2G_6M = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_OFDM_5G_24M = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_OFDM_2G_24M = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_HT_MCS0 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_HT_MCS4 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_HT_MCS8 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_HT_MCS12 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_VHT_MCS0 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_VHT_MCS4 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_VHT_MCS8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_get_rate_power(%struct.mt76x02_dev* %0, %struct.mt76_rate_power* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76_rate_power*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76_rate_power* %1, %struct.mt76_rate_power** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %16 = call i32 @memset(%struct.mt76_rate_power* %15, i32 0, i32 40)
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %18 = load i32, i32* @MT_EE_TX_POWER_CCK, align 4
  %19 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @mt76x02_rate_power_val(i32 %20)
  %22 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %23 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %22, i32 0, i32 4
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* %21, i8** %25, align 8
  %26 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %27 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %26, i32 0, i32 4
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %21, i8** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 8
  %32 = call i8* @mt76x02_rate_power_val(i32 %31)
  %33 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %34 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %33, i32 0, i32 4
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  store i8* %32, i8** %36, align 8
  %37 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %38 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %37, i32 0, i32 4
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %32, i8** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %45 = load i32, i32* @MT_EE_TX_POWER_OFDM_5G_6M, align 4
  %46 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %3
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %49 = load i32, i32* @MT_EE_TX_POWER_OFDM_2G_6M, align 4
  %50 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @mt76x02_rate_power_val(i32 %52)
  %54 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %55 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %59 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %53, i8** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 8
  %64 = call i8* @mt76x02_rate_power_val(i32 %63)
  %65 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %66 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  store i8* %64, i8** %68, align 8
  %69 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %70 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %69, i32 0, i32 3
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  store i8* %64, i8** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %51
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %77 = load i32, i32* @MT_EE_TX_POWER_OFDM_5G_24M, align 4
  %78 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %83

79:                                               ; preds = %51
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %81 = load i32, i32* @MT_EE_TX_POWER_OFDM_2G_24M, align 4
  %82 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @mt76x02_rate_power_val(i32 %84)
  %86 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %87 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %86, i32 0, i32 3
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 5
  store i8* %85, i8** %89, align 8
  %90 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %91 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %90, i32 0, i32 3
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 4
  store i8* %85, i8** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 8
  %96 = call i8* @mt76x02_rate_power_val(i32 %95)
  %97 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %98 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %97, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 7
  store i8* %96, i8** %100, align 8
  %101 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %102 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %101, i32 0, i32 3
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 6
  store i8* %96, i8** %104, align 8
  %105 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %106 = load i32, i32* @MT_EE_TX_POWER_HT_MCS0, align 4
  %107 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i8* @mt76x02_rate_power_val(i32 %108)
  %110 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %111 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %110, i32 0, i32 2
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  store i8* %109, i8** %113, align 8
  %114 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %115 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  store i8* %109, i8** %117, align 8
  %118 = load i32, i32* %8, align 4
  %119 = ashr i32 %118, 8
  %120 = call i8* @mt76x02_rate_power_val(i32 %119)
  %121 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %122 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 3
  store i8* %120, i8** %124, align 8
  %125 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %126 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %125, i32 0, i32 2
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  store i8* %120, i8** %128, align 8
  %129 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %130 = load i32, i32* @MT_EE_TX_POWER_HT_MCS4, align 4
  %131 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i8* @mt76x02_rate_power_val(i32 %132)
  %134 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %135 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %134, i32 0, i32 2
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 5
  store i8* %133, i8** %137, align 8
  %138 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %139 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %138, i32 0, i32 2
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 4
  store i8* %133, i8** %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = ashr i32 %142, 8
  %144 = call i8* @mt76x02_rate_power_val(i32 %143)
  %145 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %146 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 7
  store i8* %144, i8** %148, align 8
  %149 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %150 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %149, i32 0, i32 2
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 6
  store i8* %144, i8** %152, align 8
  %153 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %154 = load i32, i32* @MT_EE_TX_POWER_HT_MCS8, align 4
  %155 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %153, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i8* @mt76x02_rate_power_val(i32 %156)
  %158 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %159 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %158, i32 0, i32 2
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 9
  store i8* %157, i8** %161, align 8
  %162 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %163 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %162, i32 0, i32 2
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 8
  store i8* %157, i8** %165, align 8
  %166 = load i32, i32* %8, align 4
  %167 = ashr i32 %166, 8
  %168 = call i8* @mt76x02_rate_power_val(i32 %167)
  %169 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %170 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %169, i32 0, i32 2
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 11
  store i8* %168, i8** %172, align 8
  %173 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %174 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %173, i32 0, i32 2
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 10
  store i8* %168, i8** %176, align 8
  %177 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %178 = load i32, i32* @MT_EE_TX_POWER_HT_MCS12, align 4
  %179 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %177, i32 %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i8* @mt76x02_rate_power_val(i32 %180)
  %182 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %183 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %182, i32 0, i32 2
  %184 = load i8**, i8*** %183, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 13
  store i8* %181, i8** %185, align 8
  %186 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %187 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %186, i32 0, i32 2
  %188 = load i8**, i8*** %187, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 12
  store i8* %181, i8** %189, align 8
  %190 = load i32, i32* %8, align 4
  %191 = ashr i32 %190, 8
  %192 = call i8* @mt76x02_rate_power_val(i32 %191)
  %193 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %194 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %193, i32 0, i32 2
  %195 = load i8**, i8*** %194, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 15
  store i8* %192, i8** %196, align 8
  %197 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %198 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %197, i32 0, i32 2
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 14
  store i8* %192, i8** %200, align 8
  %201 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %202 = load i32, i32* @MT_EE_TX_POWER_VHT_MCS0, align 4
  %203 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %201, i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i8* @mt76x02_rate_power_val(i32 %204)
  %206 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %207 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %206, i32 0, i32 0
  %208 = load i8**, i8*** %207, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 1
  store i8* %205, i8** %209, align 8
  %210 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %211 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %210, i32 0, i32 0
  %212 = load i8**, i8*** %211, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  store i8* %205, i8** %213, align 8
  %214 = load i32, i32* %8, align 4
  %215 = ashr i32 %214, 8
  %216 = call i8* @mt76x02_rate_power_val(i32 %215)
  %217 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %218 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %217, i32 0, i32 0
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 3
  store i8* %216, i8** %220, align 8
  %221 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %222 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %221, i32 0, i32 0
  %223 = load i8**, i8*** %222, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 2
  store i8* %216, i8** %224, align 8
  %225 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %226 = load i32, i32* @MT_EE_TX_POWER_VHT_MCS4, align 4
  %227 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %225, i32 %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i8* @mt76x02_rate_power_val(i32 %228)
  %230 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %231 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %230, i32 0, i32 0
  %232 = load i8**, i8*** %231, align 8
  %233 = getelementptr inbounds i8*, i8** %232, i64 5
  store i8* %229, i8** %233, align 8
  %234 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %235 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %234, i32 0, i32 0
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 4
  store i8* %229, i8** %237, align 8
  %238 = load i32, i32* %8, align 4
  %239 = ashr i32 %238, 8
  %240 = call i8* @mt76x02_rate_power_val(i32 %239)
  %241 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %242 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %241, i32 0, i32 0
  %243 = load i8**, i8*** %242, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 7
  store i8* %240, i8** %244, align 8
  %245 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %246 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %245, i32 0, i32 0
  %247 = load i8**, i8*** %246, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 6
  store i8* %240, i8** %248, align 8
  %249 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %250 = load i32, i32* @MT_EE_TX_POWER_VHT_MCS8, align 4
  %251 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %249, i32 %250)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %83
  %255 = load i32, i32* %8, align 4
  %256 = ashr i32 %255, 8
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %254, %83
  %258 = load i32, i32* %8, align 4
  %259 = ashr i32 %258, 8
  %260 = call i8* @mt76x02_rate_power_val(i32 %259)
  %261 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %262 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %261, i32 0, i32 0
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 9
  store i8* %260, i8** %264, align 8
  %265 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %266 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %265, i32 0, i32 0
  %267 = load i8**, i8*** %266, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 8
  store i8* %260, i8** %268, align 8
  %269 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %270 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %269, i32 0, i32 1
  %271 = load i8**, i8*** %270, align 8
  %272 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %273 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %272, i32 0, i32 2
  %274 = load i8**, i8*** %273, align 8
  %275 = call i32 @memcpy(i8** %271, i8** %274, i32 64)
  %276 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %277 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %276, i32 0, i32 0
  %278 = load i8**, i8*** %277, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 8
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %282 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %281, i32 0, i32 1
  %283 = load i8**, i8*** %282, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 8
  store i8* %280, i8** %284, align 8
  %285 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %286 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %285, i32 0, i32 0
  %287 = load i8**, i8*** %286, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 9
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %5, align 8
  %291 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %290, i32 0, i32 1
  %292 = load i8**, i8*** %291, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 9
  store i8* %289, i8** %293, align 8
  ret void
}

declare dso_local i32 @memset(%struct.mt76_rate_power*, i32, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i8* @mt76x02_rate_power_val(i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
