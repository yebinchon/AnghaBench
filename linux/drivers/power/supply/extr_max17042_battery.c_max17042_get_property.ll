; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max17042_chip = type { %struct.TYPE_2__*, i32, i32, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.regmap = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@MAX17042_STATUS = common dso_local global i32 0, align 4
@MAX17042_STATUS_BattAbsent = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@MAX17042_Cycles = common dso_local global i32 0, align 4
@MAX17042_MinMaxVolt = common dso_local global i32 0, align 4
@MAXIM_DEVICE_TYPE_MAX17042 = common dso_local global i32 0, align 4
@MAX17042_V_empty = common dso_local global i32 0, align 4
@MAX17047_V_empty = common dso_local global i32 0, align 4
@MAX17042_VCELL = common dso_local global i32 0, align 4
@MAX17042_AvgVCELL = common dso_local global i32 0, align 4
@MAX17042_OCVInternal = common dso_local global i32 0, align 4
@MAX17042_RepSOC = common dso_local global i32 0, align 4
@MAX17042_DesignCap = common dso_local global i32 0, align 4
@MAX17042_FullCAP = common dso_local global i32 0, align 4
@MAX17042_RepCap = common dso_local global i32 0, align 4
@MAX17042_QH = common dso_local global i32 0, align 4
@MAX17042_TALRT_Th = common dso_local global i32 0, align 4
@POWER_SUPPLY_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@MAX17042_Current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX17042_AvgCurrent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max17042_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max17042_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.max17042_chip*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.max17042_chip* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.max17042_chip* %14, %struct.max17042_chip** %8, align 8
  %15 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %16 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %15, i32 0, i32 3
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %9, align 8
  %18 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %19 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %415

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %411 [
    i32 140, label %27
    i32 142, label %37
    i32 139, label %57
    i32 144, label %61
    i32 132, label %73
    i32 131, label %90
    i32 130, label %104
    i32 129, label %132
    i32 133, label %146
    i32 128, label %160
    i32 151, label %174
    i32 148, label %187
    i32 149, label %211
    i32 147, label %235
    i32 150, label %259
    i32 138, label %273
    i32 136, label %283
    i32 137, label %298
    i32 134, label %313
    i32 135, label %321
    i32 143, label %329
    i32 141, label %339
    i32 145, label %343
    i32 146, label %377
  ]

27:                                               ; preds = %25
  %28 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  %31 = call i32 @max17042_get_status(%struct.max17042_chip* %28, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %415

36:                                               ; preds = %27
  br label %414

37:                                               ; preds = %25
  %38 = load %struct.regmap*, %struct.regmap** %9, align 8
  %39 = load i32, i32* @MAX17042_STATUS, align 4
  %40 = call i32 @regmap_read(%struct.regmap* %38, i32 %39, i32* %11)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %415

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MAX17042_STATUS_BattAbsent, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 0, i32* %52, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %414

57:                                               ; preds = %25
  %58 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %59 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %60 = bitcast %union.power_supply_propval* %59 to i32*
  store i32 %58, i32* %60, align 4
  br label %414

61:                                               ; preds = %25
  %62 = load %struct.regmap*, %struct.regmap** %9, align 8
  %63 = load i32, i32* @MAX17042_Cycles, align 4
  %64 = call i32 @regmap_read(%struct.regmap* %62, i32 %63, i32* %11)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %415

69:                                               ; preds = %61
  %70 = load i32, i32* %11, align 4
  %71 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %72 = bitcast %union.power_supply_propval* %71 to i32*
  store i32 %70, i32* %72, align 4
  br label %414

73:                                               ; preds = %25
  %74 = load %struct.regmap*, %struct.regmap** %9, align 8
  %75 = load i32, i32* @MAX17042_MinMaxVolt, align 4
  %76 = call i32 @regmap_read(%struct.regmap* %74, i32 %75, i32* %11)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %415

81:                                               ; preds = %73
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 8
  %84 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %85 = bitcast %union.power_supply_propval* %84 to i32*
  store i32 %83, i32* %85, align 4
  %86 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %87 = bitcast %union.power_supply_propval* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 20000
  store i32 %89, i32* %87, align 4
  br label %414

90:                                               ; preds = %25
  %91 = load %struct.regmap*, %struct.regmap** %9, align 8
  %92 = load i32, i32* @MAX17042_MinMaxVolt, align 4
  %93 = call i32 @regmap_read(%struct.regmap* %91, i32 %92, i32* %11)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %415

98:                                               ; preds = %90
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, 255
  %101 = mul nsw i32 %100, 20000
  %102 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %103 = bitcast %union.power_supply_propval* %102 to i32*
  store i32 %101, i32* %103, align 4
  br label %414

104:                                              ; preds = %25
  %105 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %106 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MAXIM_DEVICE_TYPE_MAX17042, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.regmap*, %struct.regmap** %9, align 8
  %112 = load i32, i32* @MAX17042_V_empty, align 4
  %113 = call i32 @regmap_read(%struct.regmap* %111, i32 %112, i32* %11)
  store i32 %113, i32* %10, align 4
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.regmap*, %struct.regmap** %9, align 8
  %116 = load i32, i32* @MAX17047_V_empty, align 4
  %117 = call i32 @regmap_read(%struct.regmap* %115, i32 %116, i32* %11)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %415

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = ashr i32 %124, 7
  %126 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %127 = bitcast %union.power_supply_propval* %126 to i32*
  store i32 %125, i32* %127, align 4
  %128 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %129 = bitcast %union.power_supply_propval* %128 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %130, 10000
  store i32 %131, i32* %129, align 4
  br label %414

132:                                              ; preds = %25
  %133 = load %struct.regmap*, %struct.regmap** %9, align 8
  %134 = load i32, i32* @MAX17042_VCELL, align 4
  %135 = call i32 @regmap_read(%struct.regmap* %133, i32 %134, i32* %11)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %415

140:                                              ; preds = %132
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %141, 625
  %143 = sdiv i32 %142, 8
  %144 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %145 = bitcast %union.power_supply_propval* %144 to i32*
  store i32 %143, i32* %145, align 4
  br label %414

146:                                              ; preds = %25
  %147 = load %struct.regmap*, %struct.regmap** %9, align 8
  %148 = load i32, i32* @MAX17042_AvgVCELL, align 4
  %149 = call i32 @regmap_read(%struct.regmap* %147, i32 %148, i32* %11)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  br label %415

154:                                              ; preds = %146
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %155, 625
  %157 = sdiv i32 %156, 8
  %158 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %159 = bitcast %union.power_supply_propval* %158 to i32*
  store i32 %157, i32* %159, align 4
  br label %414

160:                                              ; preds = %25
  %161 = load %struct.regmap*, %struct.regmap** %9, align 8
  %162 = load i32, i32* @MAX17042_OCVInternal, align 4
  %163 = call i32 @regmap_read(%struct.regmap* %161, i32 %162, i32* %11)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %4, align 4
  br label %415

168:                                              ; preds = %160
  %169 = load i32, i32* %11, align 4
  %170 = mul nsw i32 %169, 625
  %171 = sdiv i32 %170, 8
  %172 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %173 = bitcast %union.power_supply_propval* %172 to i32*
  store i32 %171, i32* %173, align 4
  br label %414

174:                                              ; preds = %25
  %175 = load %struct.regmap*, %struct.regmap** %9, align 8
  %176 = load i32, i32* @MAX17042_RepSOC, align 4
  %177 = call i32 @regmap_read(%struct.regmap* %175, i32 %176, i32* %11)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %4, align 4
  br label %415

182:                                              ; preds = %174
  %183 = load i32, i32* %11, align 4
  %184 = ashr i32 %183, 8
  %185 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %186 = bitcast %union.power_supply_propval* %185 to i32*
  store i32 %184, i32* %186, align 4
  br label %414

187:                                              ; preds = %25
  %188 = load %struct.regmap*, %struct.regmap** %9, align 8
  %189 = load i32, i32* @MAX17042_DesignCap, align 4
  %190 = call i32 @regmap_read(%struct.regmap* %188, i32 %189, i32* %11)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %4, align 4
  br label %415

195:                                              ; preds = %187
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = mul nsw i64 %197, 5000000
  %199 = inttoptr i64 %198 to i8*
  store i8* %199, i8** %12, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %202 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %201, i32 0, i32 0
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @do_div(i8* %200, i32 %205)
  %207 = load i8*, i8** %12, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %210 = bitcast %union.power_supply_propval* %209 to i32*
  store i32 %208, i32* %210, align 4
  br label %414

211:                                              ; preds = %25
  %212 = load %struct.regmap*, %struct.regmap** %9, align 8
  %213 = load i32, i32* @MAX17042_FullCAP, align 4
  %214 = call i32 @regmap_read(%struct.regmap* %212, i32 %213, i32* %11)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %4, align 4
  br label %415

219:                                              ; preds = %211
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, 5000000
  %223 = inttoptr i64 %222 to i8*
  store i8* %223, i8** %12, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %226 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %225, i32 0, i32 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @do_div(i8* %224, i32 %229)
  %231 = load i8*, i8** %12, align 8
  %232 = ptrtoint i8* %231 to i32
  %233 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %234 = bitcast %union.power_supply_propval* %233 to i32*
  store i32 %232, i32* %234, align 4
  br label %414

235:                                              ; preds = %25
  %236 = load %struct.regmap*, %struct.regmap** %9, align 8
  %237 = load i32, i32* @MAX17042_RepCap, align 4
  %238 = call i32 @regmap_read(%struct.regmap* %236, i32 %237, i32* %11)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %4, align 4
  br label %415

243:                                              ; preds = %235
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, 5000000
  %247 = inttoptr i64 %246 to i8*
  store i8* %247, i8** %12, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %250 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %249, i32 0, i32 0
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @do_div(i8* %248, i32 %253)
  %255 = load i8*, i8** %12, align 8
  %256 = ptrtoint i8* %255 to i32
  %257 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %258 = bitcast %union.power_supply_propval* %257 to i32*
  store i32 %256, i32* %258, align 4
  br label %414

259:                                              ; preds = %25
  %260 = load %struct.regmap*, %struct.regmap** %9, align 8
  %261 = load i32, i32* @MAX17042_QH, align 4
  %262 = call i32 @regmap_read(%struct.regmap* %260, i32 %261, i32* %11)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load i32, i32* %10, align 4
  store i32 %266, i32* %4, align 4
  br label %415

267:                                              ; preds = %259
  %268 = load i32, i32* %11, align 4
  %269 = mul nsw i32 %268, 1000
  %270 = sdiv i32 %269, 2
  %271 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %272 = bitcast %union.power_supply_propval* %271 to i32*
  store i32 %270, i32* %272, align 4
  br label %414

273:                                              ; preds = %25
  %274 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %275 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %276 = bitcast %union.power_supply_propval* %275 to i32*
  %277 = call i32 @max17042_get_temperature(%struct.max17042_chip* %274, i32* %276)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %273
  %281 = load i32, i32* %10, align 4
  store i32 %281, i32* %4, align 4
  br label %415

282:                                              ; preds = %273
  br label %414

283:                                              ; preds = %25
  %284 = load %struct.regmap*, %struct.regmap** %9, align 8
  %285 = load i32, i32* @MAX17042_TALRT_Th, align 4
  %286 = call i32 @regmap_read(%struct.regmap* %284, i32 %285, i32* %11)
  store i32 %286, i32* %10, align 4
  %287 = load i32, i32* %10, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %283
  %290 = load i32, i32* %10, align 4
  store i32 %290, i32* %4, align 4
  br label %415

291:                                              ; preds = %283
  %292 = load i32, i32* %11, align 4
  %293 = and i32 %292, 255
  %294 = call i32 @sign_extend32(i32 %293, i32 7)
  %295 = mul nsw i32 %294, 10
  %296 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %297 = bitcast %union.power_supply_propval* %296 to i32*
  store i32 %295, i32* %297, align 4
  br label %414

298:                                              ; preds = %25
  %299 = load %struct.regmap*, %struct.regmap** %9, align 8
  %300 = load i32, i32* @MAX17042_TALRT_Th, align 4
  %301 = call i32 @regmap_read(%struct.regmap* %299, i32 %300, i32* %11)
  store i32 %301, i32* %10, align 4
  %302 = load i32, i32* %10, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %298
  %305 = load i32, i32* %10, align 4
  store i32 %305, i32* %4, align 4
  br label %415

306:                                              ; preds = %298
  %307 = load i32, i32* %11, align 4
  %308 = ashr i32 %307, 8
  %309 = call i32 @sign_extend32(i32 %308, i32 7)
  %310 = mul nsw i32 %309, 10
  %311 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %312 = bitcast %union.power_supply_propval* %311 to i32*
  store i32 %310, i32* %312, align 4
  br label %414

313:                                              ; preds = %25
  %314 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %315 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %314, i32 0, i32 0
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %320 = bitcast %union.power_supply_propval* %319 to i32*
  store i32 %318, i32* %320, align 4
  br label %414

321:                                              ; preds = %25
  %322 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %323 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %322, i32 0, i32 0
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %328 = bitcast %union.power_supply_propval* %327 to i32*
  store i32 %326, i32* %328, align 4
  br label %414

329:                                              ; preds = %25
  %330 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %331 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %332 = bitcast %union.power_supply_propval* %331 to i32*
  %333 = call i32 @max17042_get_battery_health(%struct.max17042_chip* %330, i32* %332)
  store i32 %333, i32* %10, align 4
  %334 = load i32, i32* %10, align 4
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %329
  %337 = load i32, i32* %10, align 4
  store i32 %337, i32* %4, align 4
  br label %415

338:                                              ; preds = %329
  br label %414

339:                                              ; preds = %25
  %340 = load i32, i32* @POWER_SUPPLY_SCOPE_SYSTEM, align 4
  %341 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %342 = bitcast %union.power_supply_propval* %341 to i32*
  store i32 %340, i32* %342, align 4
  br label %414

343:                                              ; preds = %25
  %344 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %345 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %344, i32 0, i32 0
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %373

350:                                              ; preds = %343
  %351 = load %struct.regmap*, %struct.regmap** %9, align 8
  %352 = load i32, i32* @MAX17042_Current, align 4
  %353 = call i32 @regmap_read(%struct.regmap* %351, i32 %352, i32* %11)
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %10, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = load i32, i32* %10, align 4
  store i32 %357, i32* %4, align 4
  br label %415

358:                                              ; preds = %350
  %359 = load i32, i32* %11, align 4
  %360 = call i32 @sign_extend32(i32 %359, i32 15)
  %361 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %362 = bitcast %union.power_supply_propval* %361 to i32*
  store i32 %360, i32* %362, align 4
  %363 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %364 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %363, i32 0, i32 0
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = sdiv i32 1562500, %367
  %369 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %370 = bitcast %union.power_supply_propval* %369 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = mul nsw i32 %371, %368
  store i32 %372, i32* %370, align 4
  br label %376

373:                                              ; preds = %343
  %374 = load i32, i32* @EINVAL, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %4, align 4
  br label %415

376:                                              ; preds = %358
  br label %414

377:                                              ; preds = %25
  %378 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %379 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %378, i32 0, i32 0
  %380 = load %struct.TYPE_2__*, %struct.TYPE_2__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %407

384:                                              ; preds = %377
  %385 = load %struct.regmap*, %struct.regmap** %9, align 8
  %386 = load i32, i32* @MAX17042_AvgCurrent, align 4
  %387 = call i32 @regmap_read(%struct.regmap* %385, i32 %386, i32* %11)
  store i32 %387, i32* %10, align 4
  %388 = load i32, i32* %10, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %384
  %391 = load i32, i32* %10, align 4
  store i32 %391, i32* %4, align 4
  br label %415

392:                                              ; preds = %384
  %393 = load i32, i32* %11, align 4
  %394 = call i32 @sign_extend32(i32 %393, i32 15)
  %395 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %396 = bitcast %union.power_supply_propval* %395 to i32*
  store i32 %394, i32* %396, align 4
  %397 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %398 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %397, i32 0, i32 0
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = sdiv i32 1562500, %401
  %403 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %404 = bitcast %union.power_supply_propval* %403 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = mul nsw i32 %405, %402
  store i32 %406, i32* %404, align 4
  br label %410

407:                                              ; preds = %377
  %408 = load i32, i32* @EINVAL, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %4, align 4
  br label %415

410:                                              ; preds = %392
  br label %414

411:                                              ; preds = %25
  %412 = load i32, i32* @EINVAL, align 4
  %413 = sub nsw i32 0, %412
  store i32 %413, i32* %4, align 4
  br label %415

414:                                              ; preds = %410, %376, %339, %338, %321, %313, %306, %291, %282, %267, %243, %219, %195, %182, %168, %154, %140, %123, %98, %81, %69, %57, %56, %36
  store i32 0, i32* %4, align 4
  br label %415

415:                                              ; preds = %414, %411, %407, %390, %373, %356, %336, %304, %289, %280, %265, %241, %217, %193, %180, %166, %152, %138, %121, %96, %79, %67, %43, %34, %22
  %416 = load i32, i32* %4, align 4
  ret i32 %416
}

declare dso_local %struct.max17042_chip* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @max17042_get_status(%struct.max17042_chip*, i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @do_div(i8*, i32) #1

declare dso_local i32 @max17042_get_temperature(%struct.max17042_chip*, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @max17042_get_battery_health(%struct.max17042_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
