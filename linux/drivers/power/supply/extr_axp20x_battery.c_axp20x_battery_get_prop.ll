; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_battery_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_battery_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp20x_batt_ps = type { i32, %struct.iio_channel*, i32, %struct.TYPE_2__*, %struct.iio_channel*, %struct.iio_channel* }
%struct.TYPE_2__ = type { i32 (%struct.axp20x_batt_ps*, i32*)*, i32 }
%struct.iio_channel = type { i32 }

@AXP20X_PWR_OP_MODE = common dso_local global i32 0, align 4
@AXP20X_PWR_OP_BATT_PRESENT = common dso_local global i32 0, align 4
@AXP20X_PWR_INPUT_STATUS = common dso_local global i32 0, align 4
@AXP20X_PWR_STATUS_BAT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@AXP20X_FG_RES = common dso_local global i32 0, align 4
@AXP209_FG_PERCENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@AXP20X_PWR_OP_BATT_ACTIVATED = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@AXP22X_FG_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AXP20X_V_OFF = common dso_local global i32 0, align 4
@AXP20X_V_OFF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @axp20x_battery_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_battery_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.axp20x_batt_ps*, align 8
  %9 = alloca %struct.iio_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.axp20x_batt_ps* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.axp20x_batt_ps* %14, %struct.axp20x_batt_ps** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %264 [
    i32 132, label %16
    i32 133, label %16
    i32 131, label %36
    i32 134, label %95
    i32 137, label %118
    i32 136, label %128
    i32 135, label %134
    i32 138, label %171
    i32 130, label %220
    i32 129, label %230
    i32 128, label %248
  ]

16:                                               ; preds = %3, %3
  %17 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %18 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AXP20X_PWR_OP_MODE, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %268

26:                                               ; preds = %16
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @AXP20X_PWR_OP_BATT_PRESENT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %267

36:                                               ; preds = %3
  %37 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %38 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %11)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %268

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @AXP20X_PWR_STATUS_BAT_CHARGING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %268

55:                                               ; preds = %46
  %56 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %57 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %56, i32 0, i32 4
  %58 = load %struct.iio_channel*, %struct.iio_channel** %57, align 8
  %59 = call i32 @iio_read_channel_processed(%struct.iio_channel* %58, i32* %12)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %268

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %268

71:                                               ; preds = %64
  %72 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %73 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @AXP20X_FG_RES, align 4
  %76 = call i32 @regmap_read(i32 %74, i32 %75, i32* %12)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %268

81:                                               ; preds = %71
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @AXP209_FG_PERCENT, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 100
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %88 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %89 = bitcast %union.power_supply_propval* %88 to i32*
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %92 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %93 = bitcast %union.power_supply_propval* %92 to i32*
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %86
  br label %267

95:                                               ; preds = %3
  %96 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %97 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AXP20X_PWR_OP_MODE, align 4
  %100 = call i32 @regmap_read(i32 %98, i32 %99, i32* %12)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %268

105:                                              ; preds = %95
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @AXP20X_PWR_OP_BATT_ACTIVATED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %112 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %113 = bitcast %union.power_supply_propval* %112 to i32*
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %4, align 4
  br label %268

114:                                              ; preds = %105
  %115 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %116 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %117 = bitcast %union.power_supply_propval* %116 to i32*
  store i32 %115, i32* %117, align 4
  br label %267

118:                                              ; preds = %3
  %119 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %120 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %121 = bitcast %union.power_supply_propval* %120 to i32*
  %122 = call i32 @axp20x_get_constant_charge_current(%struct.axp20x_batt_ps* %119, i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %268

127:                                              ; preds = %118
  br label %267

128:                                              ; preds = %3
  %129 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %130 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %133 = bitcast %union.power_supply_propval* %132 to i32*
  store i32 %131, i32* %133, align 4
  br label %267

134:                                              ; preds = %3
  %135 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %136 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %139 = call i32 @regmap_read(i32 %137, i32 %138, i32* %11)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %4, align 4
  br label %268

144:                                              ; preds = %134
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @AXP20X_PWR_STATUS_BAT_CHARGING, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %151 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %150, i32 0, i32 5
  %152 = load %struct.iio_channel*, %struct.iio_channel** %151, align 8
  store %struct.iio_channel* %152, %struct.iio_channel** %9, align 8
  br label %157

153:                                              ; preds = %144
  %154 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %155 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %154, i32 0, i32 4
  %156 = load %struct.iio_channel*, %struct.iio_channel** %155, align 8
  store %struct.iio_channel* %156, %struct.iio_channel** %9, align 8
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.iio_channel*, %struct.iio_channel** %9, align 8
  %159 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %160 = bitcast %union.power_supply_propval* %159 to i32*
  %161 = call i32 @iio_read_channel_processed(%struct.iio_channel* %158, i32* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %4, align 4
  br label %268

166:                                              ; preds = %157
  %167 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %168 = bitcast %union.power_supply_propval* %167 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %169, 1000
  store i32 %170, i32* %168, align 4
  br label %267

171:                                              ; preds = %3
  %172 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %173 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @AXP20X_PWR_OP_MODE, align 4
  %176 = call i32 @regmap_read(i32 %174, i32 %175, i32* %11)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %4, align 4
  br label %268

181:                                              ; preds = %171
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @AXP20X_PWR_OP_BATT_PRESENT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %188 = bitcast %union.power_supply_propval* %187 to i32*
  store i32 100, i32* %188, align 4
  store i32 0, i32* %4, align 4
  br label %268

189:                                              ; preds = %181
  %190 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %191 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @AXP20X_FG_RES, align 4
  %194 = call i32 @regmap_read(i32 %192, i32 %193, i32* %11)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %4, align 4
  br label %268

199:                                              ; preds = %189
  %200 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %201 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %200, i32 0, i32 3
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %199
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @AXP22X_FG_VALID, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  br label %268

214:                                              ; preds = %206, %199
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @AXP209_FG_PERCENT, align 4
  %217 = and i32 %215, %216
  %218 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %219 = bitcast %union.power_supply_propval* %218 to i32*
  store i32 %217, i32* %219, align 4
  br label %267

220:                                              ; preds = %3
  %221 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %222 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %221, i32 0, i32 3
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32 (%struct.axp20x_batt_ps*, i32*)*, i32 (%struct.axp20x_batt_ps*, i32*)** %224, align 8
  %226 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %227 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %228 = bitcast %union.power_supply_propval* %227 to i32*
  %229 = call i32 %225(%struct.axp20x_batt_ps* %226, i32* %228)
  store i32 %229, i32* %4, align 4
  br label %268

230:                                              ; preds = %3
  %231 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %232 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @AXP20X_V_OFF, align 4
  %235 = call i32 @regmap_read(i32 %233, i32 %234, i32* %11)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = load i32, i32* %10, align 4
  store i32 %239, i32* %4, align 4
  br label %268

240:                                              ; preds = %230
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @AXP20X_V_OFF_MASK, align 4
  %243 = and i32 %241, %242
  %244 = mul nsw i32 100000, %243
  %245 = add nsw i32 2600000, %244
  %246 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %247 = bitcast %union.power_supply_propval* %246 to i32*
  store i32 %245, i32* %247, align 4
  br label %267

248:                                              ; preds = %3
  %249 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %250 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %249, i32 0, i32 1
  %251 = load %struct.iio_channel*, %struct.iio_channel** %250, align 8
  %252 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %253 = bitcast %union.power_supply_propval* %252 to i32*
  %254 = call i32 @iio_read_channel_processed(%struct.iio_channel* %251, i32* %253)
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = load i32, i32* %10, align 4
  store i32 %258, i32* %4, align 4
  br label %268

259:                                              ; preds = %248
  %260 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %261 = bitcast %union.power_supply_propval* %260 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 %262, 1000
  store i32 %263, i32* %261, align 4
  br label %267

264:                                              ; preds = %3
  %265 = load i32, i32* @EINVAL, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %4, align 4
  br label %268

267:                                              ; preds = %259, %240, %214, %166, %128, %127, %114, %94, %26
  store i32 0, i32* %4, align 4
  br label %268

268:                                              ; preds = %267, %264, %257, %238, %220, %211, %197, %186, %179, %164, %142, %125, %110, %103, %79, %67, %62, %51, %44, %24
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local %struct.axp20x_batt_ps* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @iio_read_channel_processed(%struct.iio_channel*, i32*) #1

declare dso_local i32 @axp20x_get_constant_charge_current(%struct.axp20x_batt_ps*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
