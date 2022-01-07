; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_get_tx_power_per_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_get_tx_power_per_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_channel = type { i64 }
%struct.mt76_rate_power = type { i8**, i8**, i8**, i8**, i8** }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_BYRATE_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x0_get_tx_power_per_rate(%struct.mt76x02_dev* %0, %struct.ieee80211_channel* %1, %struct.mt76_rate_power* %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.mt76_rate_power*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store %struct.mt76_rate_power* %2, %struct.mt76_rate_power** %6, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %18 = call i32 @memset(%struct.mt76_rate_power* %17, i32 0, i32 40)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %20 = load i32, i32* @MT_EE_TX_POWER_BYRATE_BASE, align 4
  %21 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @s6_to_s8(i32 %22)
  %24 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %25 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %24, i32 0, i32 4
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  store i8* %23, i8** %27, align 8
  %28 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %29 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %28, i32 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %23, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 8
  %34 = call i8* @s6_to_s8(i32 %33)
  %35 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %36 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %35, i32 0, i32 4
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 3
  store i8* %34, i8** %38, align 8
  %39 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %40 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %39, i32 0, i32 4
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  store i8* %34, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @MT_EE_TX_POWER_BYRATE_BASE, align 4
  %47 = add nsw i32 %46, 2
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 288, %48 ]
  store i32 %50, i32* %9, align 4
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i8* @s6_to_s8(i32 %54)
  %56 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %57 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %56, i32 0, i32 3
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  store i8* %55, i8** %59, align 8
  %60 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %61 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %60, i32 0, i32 3
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %55, i8** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 8
  %66 = call i8* @s6_to_s8(i32 %65)
  %67 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %68 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 3
  store i8* %66, i8** %70, align 8
  %71 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %72 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %71, i32 0, i32 3
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  store i8* %66, i8** %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %49
  %78 = load i32, i32* @MT_EE_TX_POWER_BYRATE_BASE, align 4
  %79 = add nsw i32 %78, 4
  br label %81

80:                                               ; preds = %49
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 290, %80 ]
  store i32 %82, i32* %9, align 4
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i8* @s6_to_s8(i32 %86)
  %88 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %89 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %88, i32 0, i32 3
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 5
  store i8* %87, i8** %91, align 8
  %92 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %93 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %92, i32 0, i32 3
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 4
  store i8* %87, i8** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = ashr i32 %96, 8
  %98 = call i8* @s6_to_s8(i32 %97)
  %99 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %100 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %99, i32 0, i32 3
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 7
  store i8* %98, i8** %102, align 8
  %103 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %104 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %103, i32 0, i32 3
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 6
  store i8* %98, i8** %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %81
  %110 = load i32, i32* @MT_EE_TX_POWER_BYRATE_BASE, align 4
  %111 = add nsw i32 %110, 6
  br label %113

112:                                              ; preds = %81
  br label %113

113:                                              ; preds = %112, %109
  %114 = phi i32 [ %111, %109 ], [ 292, %112 ]
  store i32 %114, i32* %9, align 4
  %115 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i8* @s6_to_s8(i32 %118)
  %120 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %121 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  store i8* %119, i8** %123, align 8
  %124 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %125 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  store i8* %119, i8** %127, align 8
  %128 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %129 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %128, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  store i8* %119, i8** %131, align 8
  %132 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %133 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %132, i32 0, i32 2
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  store i8* %119, i8** %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 8
  %138 = call i8* @s6_to_s8(i32 %137)
  %139 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %140 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 3
  store i8* %138, i8** %142, align 8
  %143 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %144 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 2
  store i8* %138, i8** %146, align 8
  %147 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %148 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %147, i32 0, i32 2
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 3
  store i8* %138, i8** %150, align 8
  %151 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %152 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %151, i32 0, i32 2
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  store i8* %138, i8** %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %113
  %158 = load i32, i32* @MT_EE_TX_POWER_BYRATE_BASE, align 4
  %159 = add nsw i32 %158, 8
  br label %161

160:                                              ; preds = %113
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi i32 [ %159, %157 ], [ 294, %160 ]
  store i32 %162, i32* %9, align 4
  %163 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %163, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i8* @s6_to_s8(i32 %166)
  %168 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %169 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %168, i32 0, i32 0
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 5
  store i8* %167, i8** %171, align 8
  %172 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %173 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %172, i32 0, i32 0
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 4
  store i8* %167, i8** %175, align 8
  %176 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %177 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %176, i32 0, i32 2
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 5
  store i8* %167, i8** %179, align 8
  %180 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %181 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %180, i32 0, i32 2
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 4
  store i8* %167, i8** %183, align 8
  %184 = load i32, i32* %8, align 4
  %185 = ashr i32 %184, 8
  %186 = call i8* @s6_to_s8(i32 %185)
  %187 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %188 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 7
  store i8* %186, i8** %190, align 8
  %191 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %192 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %191, i32 0, i32 0
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 6
  store i8* %186, i8** %194, align 8
  %195 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %196 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %195, i32 0, i32 2
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 7
  store i8* %186, i8** %198, align 8
  %199 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %200 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %199, i32 0, i32 2
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 6
  store i8* %186, i8** %202, align 8
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %161
  %206 = load i32, i32* @MT_EE_TX_POWER_BYRATE_BASE, align 4
  %207 = add nsw i32 %206, 14
  br label %209

208:                                              ; preds = %161
  br label %209

209:                                              ; preds = %208, %205
  %210 = phi i32 [ %207, %205 ], [ 236, %208 ]
  store i32 %210, i32* %9, align 4
  %211 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %211, i32 %212)
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = call i8* @s6_to_s8(i32 %214)
  %216 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %217 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %216, i32 0, i32 1
  %218 = load i8**, i8*** %217, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 1
  store i8* %215, i8** %219, align 8
  %220 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %221 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %220, i32 0, i32 1
  %222 = load i8**, i8*** %221, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 0
  store i8* %215, i8** %223, align 8
  %224 = load i32, i32* %8, align 4
  %225 = ashr i32 %224, 8
  %226 = call i8* @s6_to_s8(i32 %225)
  %227 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %228 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %227, i32 0, i32 1
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 3
  store i8* %226, i8** %230, align 8
  %231 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %232 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %231, i32 0, i32 1
  %233 = load i8**, i8*** %232, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 2
  store i8* %226, i8** %234, align 8
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %209
  %238 = load i32, i32* @MT_EE_TX_POWER_BYRATE_BASE, align 4
  %239 = add nsw i32 %238, 16
  br label %241

240:                                              ; preds = %209
  br label %241

241:                                              ; preds = %240, %237
  %242 = phi i32 [ %239, %237 ], [ 238, %240 ]
  store i32 %242, i32* %9, align 4
  %243 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %243, i32 %244)
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = call i8* @s6_to_s8(i32 %246)
  %248 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %249 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %248, i32 0, i32 1
  %250 = load i8**, i8*** %249, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 5
  store i8* %247, i8** %251, align 8
  %252 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %253 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %252, i32 0, i32 1
  %254 = load i8**, i8*** %253, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 4
  store i8* %247, i8** %255, align 8
  %256 = load i32, i32* %8, align 4
  %257 = ashr i32 %256, 8
  %258 = call i8* @s6_to_s8(i32 %257)
  %259 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %260 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %259, i32 0, i32 1
  %261 = load i8**, i8*** %260, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 7
  store i8* %258, i8** %262, align 8
  %263 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %264 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %263, i32 0, i32 1
  %265 = load i8**, i8*** %264, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 6
  store i8* %258, i8** %266, align 8
  %267 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %268 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %267, i32 306)
  store i32 %268, i32* %8, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i8* @s6_to_s8(i32 %269)
  %271 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %272 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %271, i32 0, i32 0
  %273 = load i8**, i8*** %272, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 8
  store i8* %270, i8** %274, align 8
  %275 = load i32, i32* %8, align 4
  %276 = ashr i32 %275, 8
  %277 = call i8* @s6_to_s8(i32 %276)
  %278 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %279 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %278, i32 0, i32 0
  %280 = load i8**, i8*** %279, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 9
  store i8* %277, i8** %281, align 8
  %282 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %283 = call i64 @mt76x0_tssi_enabled(%struct.mt76x02_dev* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %241
  br label %289

286:                                              ; preds = %241
  %287 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %288 = call i32 @mt76x0_get_delta(%struct.mt76x02_dev* %287)
  br label %289

289:                                              ; preds = %286, %285
  %290 = phi i32 [ 0, %285 ], [ %288, %286 ]
  store i32 %290, i32* %10, align 4
  %291 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %6, align 8
  %292 = load i32, i32* %10, align 4
  %293 = call i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power* %291, i32 %292)
  ret void
}

declare dso_local i32 @memset(%struct.mt76_rate_power*, i32, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i8* @s6_to_s8(i32) #1

declare dso_local i64 @mt76x0_tssi_enabled(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_get_delta(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
