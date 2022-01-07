; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.charger_manager = type { %struct.charger_desc*, i32 }
%struct.charger_desc = type { i32, i32 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.charger_manager*, align 8
  %9 = alloca %struct.charger_desc*, align 8
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.charger_manager* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.charger_manager* %14, %struct.charger_manager** %8, align 8
  %15 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %16 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %15, i32 0, i32 0
  %17 = load %struct.charger_desc*, %struct.charger_desc** %16, align 8
  store %struct.charger_desc* %17, %struct.charger_desc** %9, align 8
  store %struct.power_supply* null, %struct.power_supply** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %240 [
    i32 131, label %19
    i32 134, label %41
    i32 132, label %65
    i32 128, label %76
    i32 135, label %81
    i32 130, label %97
    i32 129, label %97
    i32 138, label %102
    i32 133, label %174
    i32 137, label %185
    i32 136, label %196
  ]

19:                                               ; preds = %3
  %20 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %21 = call i32 @is_charging(%struct.charger_manager* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %29 = call i32 @is_ext_pwr_online(%struct.charger_manager* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %23
  br label %243

41:                                               ; preds = %3
  %42 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %43 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %64

50:                                               ; preds = %41
  %51 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %52 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %46
  br label %243

65:                                               ; preds = %3
  %66 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %67 = call i32 @is_batt_present(%struct.charger_manager* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %71 = bitcast %union.power_supply_propval* %70 to i32*
  store i32 1, i32* %71, align 4
  br label %75

72:                                               ; preds = %65
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %243

76:                                               ; preds = %3
  %77 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %78 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %79 = bitcast %union.power_supply_propval* %78 to i32*
  %80 = call i32 @get_batt_uV(%struct.charger_manager* %77, i32* %79)
  store i32 %80, i32* %11, align 4
  br label %243

81:                                               ; preds = %3
  %82 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %83 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %82, i32 0, i32 0
  %84 = load %struct.charger_desc*, %struct.charger_desc** %83, align 8
  %85 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.power_supply* @power_supply_get_by_name(i32 %86)
  store %struct.power_supply* %87, %struct.power_supply** %10, align 8
  %88 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %89 = icmp ne %struct.power_supply* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %11, align 4
  br label %243

93:                                               ; preds = %81
  %94 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %95 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %96 = call i32 @power_supply_get_property(%struct.power_supply* %94, i32 135, %union.power_supply_propval* %95)
  store i32 %96, i32* %11, align 4
  br label %243

97:                                               ; preds = %3, %3
  %98 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %99 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %100 = bitcast %union.power_supply_propval* %99 to i32*
  %101 = call i32 @cm_get_battery_temperature(%struct.charger_manager* %98, i32* %100)
  store i32 %101, i32* %4, align 4
  br label %251

102:                                              ; preds = %3
  %103 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %104 = call i32 @is_batt_present(%struct.charger_manager* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %108 = bitcast %union.power_supply_propval* %107 to i32*
  store i32 100, i32* %108, align 4
  br label %243

109:                                              ; preds = %102
  %110 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %111 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %110, i32 0, i32 0
  %112 = load %struct.charger_desc*, %struct.charger_desc** %111, align 8
  %113 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.power_supply* @power_supply_get_by_name(i32 %114)
  store %struct.power_supply* %115, %struct.power_supply** %10, align 8
  %116 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %117 = icmp ne %struct.power_supply* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %109
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %243

121:                                              ; preds = %109
  %122 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %123 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %124 = call i32 @power_supply_get_property(%struct.power_supply* %122, i32 138, %union.power_supply_propval* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %243

128:                                              ; preds = %121
  %129 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %130 = bitcast %union.power_supply_propval* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 100
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %135 = bitcast %union.power_supply_propval* %134 to i32*
  store i32 100, i32* %135, align 4
  br label %243

136:                                              ; preds = %128
  %137 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %138 = bitcast %union.power_supply_propval* %137 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %143 = bitcast %union.power_supply_propval* %142 to i32*
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %146 = call i32 @is_charging(%struct.charger_manager* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %243

149:                                              ; preds = %144
  %150 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %151 = call i32 @get_batt_uV(%struct.charger_manager* %150, i32* %12)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, i32* %11, align 4
  br label %243

155:                                              ; preds = %149
  %156 = load %struct.charger_desc*, %struct.charger_desc** %9, align 8
  %157 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.charger_desc*, %struct.charger_desc** %9, align 8
  %163 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp sge i32 %161, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %168 = call i32 @is_charging(%struct.charger_manager* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %172 = bitcast %union.power_supply_propval* %171 to i32*
  store i32 100, i32* %172, align 4
  br label %243

173:                                              ; preds = %166, %160, %155
  br label %243

174:                                              ; preds = %3
  %175 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %176 = call i32 @is_ext_pwr_online(%struct.charger_manager* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %180 = bitcast %union.power_supply_propval* %179 to i32*
  store i32 1, i32* %180, align 4
  br label %184

181:                                              ; preds = %174
  %182 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %183 = bitcast %union.power_supply_propval* %182 to i32*
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %178
  br label %243

185:                                              ; preds = %3
  %186 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %187 = call i32 @is_full_charged(%struct.charger_manager* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %191 = bitcast %union.power_supply_propval* %190 to i32*
  store i32 1, i32* %191, align 4
  br label %195

192:                                              ; preds = %185
  %193 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %194 = bitcast %union.power_supply_propval* %193 to i32*
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %189
  store i32 0, i32* %11, align 4
  br label %243

196:                                              ; preds = %3
  %197 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %198 = call i32 @is_charging(%struct.charger_manager* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %236

200:                                              ; preds = %196
  %201 = load %struct.charger_manager*, %struct.charger_manager** %8, align 8
  %202 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %201, i32 0, i32 0
  %203 = load %struct.charger_desc*, %struct.charger_desc** %202, align 8
  %204 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call %struct.power_supply* @power_supply_get_by_name(i32 %205)
  store %struct.power_supply* %206, %struct.power_supply** %10, align 8
  %207 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %208 = icmp ne %struct.power_supply* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %200
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %11, align 4
  br label %243

212:                                              ; preds = %200
  %213 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %214 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %215 = call i32 @power_supply_get_property(%struct.power_supply* %213, i32 136, %union.power_supply_propval* %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %220 = bitcast %union.power_supply_propval* %219 to i32*
  store i32 1, i32* %220, align 4
  store i32 0, i32* %11, align 4
  br label %235

221:                                              ; preds = %212
  %222 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %223 = bitcast %union.power_supply_propval* %222 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %228 = bitcast %union.power_supply_propval* %227 to i32*
  %229 = load i32, i32* %228, align 4
  br label %231

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %230, %226
  %232 = phi i32 [ %229, %226 ], [ 1, %230 ]
  %233 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %234 = bitcast %union.power_supply_propval* %233 to i32*
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %231, %218
  br label %239

236:                                              ; preds = %196
  %237 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %238 = bitcast %union.power_supply_propval* %237 to i32*
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %235
  br label %243

240:                                              ; preds = %3
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %4, align 4
  br label %251

243:                                              ; preds = %239, %209, %195, %184, %173, %170, %154, %148, %133, %127, %118, %106, %93, %90, %76, %75, %64, %40
  %244 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %245 = icmp ne %struct.power_supply* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %248 = call i32 @power_supply_put(%struct.power_supply* %247)
  br label %249

249:                                              ; preds = %246, %243
  %250 = load i32, i32* %11, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %249, %240, %97
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local %struct.charger_manager* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @is_charging(%struct.charger_manager*) #1

declare dso_local i32 @is_ext_pwr_online(%struct.charger_manager*) #1

declare dso_local i32 @is_batt_present(%struct.charger_manager*) #1

declare dso_local i32 @get_batt_uV(%struct.charger_manager*, i32*) #1

declare dso_local %struct.power_supply* @power_supply_get_by_name(i32) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @cm_get_battery_temperature(%struct.charger_manager*, i32*) #1

declare dso_local i32 @is_full_charged(%struct.charger_manager*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
