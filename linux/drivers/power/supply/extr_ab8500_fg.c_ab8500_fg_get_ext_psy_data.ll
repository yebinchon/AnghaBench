; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_get_ext_psy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_get_ext_psy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply = type { %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.ab8500_fg = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.abx500_battery_type*, i32 }
%struct.abx500_battery_type = type { i32, i32 }
%union.power_supply_propval = type { i32 }

@BATTERY_UNKNOWN = common dso_local global i64 0, align 8
@MILLI_TO_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @ab8500_fg_get_ext_psy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_get_ext_psy_data(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.ab8500_fg*, align 8
  %10 = alloca %union.power_supply_propval, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.abx500_battery_type*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %7, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.power_supply*
  store %struct.power_supply* %21, %struct.power_supply** %6, align 8
  %22 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %23 = call %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply* %22)
  store %struct.ab8500_fg* %23, %struct.ab8500_fg** %9, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %26 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %29 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @match_string(i8** %24, i32 %27, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %264

37:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %260, %37
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %41 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %263

46:                                               ; preds = %38
  %47 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %48 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @power_supply_get_property(%struct.power_supply* %56, i32 %57, %union.power_supply_propval* %10)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %260

61:                                               ; preds = %46
  %62 = load i32, i32* %12, align 4
  switch i32 %62, label %258 [
    i32 136, label %63
    i32 135, label %168
    i32 134, label %238
  ]

63:                                               ; preds = %61
  %64 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %65 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %166 [
    i32 128, label %69
  ]

69:                                               ; preds = %63
  %70 = bitcast %union.power_supply_propval* %10 to i32*
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %165 [
    i32 129, label %72
    i32 132, label %72
    i32 130, label %72
    i32 131, label %102
    i32 133, label %129
  ]

72:                                               ; preds = %69, %69, %69
  %73 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %74 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %165

79:                                               ; preds = %72
  %80 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %81 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %84 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %87 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %86, i32 0, i32 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %94 = call i32 @ab8500_fg_update_cap_scalers(%struct.ab8500_fg* %93)
  br label %95

95:                                               ; preds = %92, %79
  %96 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %97 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %100 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %99, i32 0, i32 5
  %101 = call i32 @queue_work(i32 %98, i32* %100)
  br label %165

102:                                              ; preds = %69
  %103 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %104 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %165

109:                                              ; preds = %102
  %110 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %111 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %114 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 4
  %116 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %117 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %121 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %124 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %127 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %126, i32 0, i32 5
  %128 = call i32 @queue_work(i32 %125, i32* %127)
  br label %165

129:                                              ; preds = %69
  %130 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %131 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %137 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  br label %165

142:                                              ; preds = %135, %129
  %143 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %144 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  %146 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %147 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %150 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %149, i32 0, i32 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %157 = call i32 @ab8500_fg_update_cap_scalers(%struct.ab8500_fg* %156)
  br label %158

158:                                              ; preds = %155, %142
  %159 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %160 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %163 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %162, i32 0, i32 5
  %164 = call i32 @queue_work(i32 %161, i32* %163)
  br label %165

165:                                              ; preds = %69, %158, %141, %109, %108, %95, %78
  br label %166

166:                                              ; preds = %63, %165
  br label %167

167:                                              ; preds = %166
  br label %259

168:                                              ; preds = %61
  %169 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %170 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %169, i32 0, i32 0
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  switch i32 %173, label %236 [
    i32 128, label %174
  ]

174:                                              ; preds = %168
  %175 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %176 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %223, label %180

180:                                              ; preds = %174
  %181 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %182 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %181, i32 0, i32 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @BATTERY_UNKNOWN, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %223

188:                                              ; preds = %180
  %189 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %190 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %189, i32 0, i32 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load %struct.abx500_battery_type*, %struct.abx500_battery_type** %192, align 8
  %194 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %195 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %194, i32 0, i32 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.abx500_battery_type, %struct.abx500_battery_type* %193, i64 %198
  store %struct.abx500_battery_type* %199, %struct.abx500_battery_type** %13, align 8
  %200 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %201 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  store i32 1, i32* %202, align 4
  %203 = load i32, i32* @MILLI_TO_MICRO, align 4
  %204 = load %struct.abx500_battery_type*, %struct.abx500_battery_type** %13, align 8
  %205 = getelementptr inbounds %struct.abx500_battery_type, %struct.abx500_battery_type* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %209 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  store i32 %207, i32* %210, align 4
  %211 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %212 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %216 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 4
  %218 = load %struct.abx500_battery_type*, %struct.abx500_battery_type** %13, align 8
  %219 = getelementptr inbounds %struct.abx500_battery_type, %struct.abx500_battery_type* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %222 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %188, %180, %174
  %224 = bitcast %union.power_supply_propval* %10 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %229 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 4
  store i32 0, i32* %230, align 4
  br label %235

231:                                              ; preds = %223
  %232 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %233 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 4
  store i32 1, i32* %234, align 4
  br label %235

235:                                              ; preds = %231, %227
  br label %237

236:                                              ; preds = %168
  br label %237

237:                                              ; preds = %236, %235
  br label %259

238:                                              ; preds = %61
  %239 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %240 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %239, i32 0, i32 0
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  switch i32 %243, label %256 [
    i32 128, label %244
  ]

244:                                              ; preds = %238
  %245 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %246 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = bitcast %union.power_supply_propval* %10 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.ab8500_fg*, %struct.ab8500_fg** %9, align 8
  %254 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %250, %244
  br label %257

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256, %255
  br label %259

258:                                              ; preds = %61
  br label %259

259:                                              ; preds = %258, %257, %237, %167
  br label %260

260:                                              ; preds = %259, %60
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %11, align 4
  br label %38

263:                                              ; preds = %38
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %36
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ab8500_fg* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @match_string(i8**, i32, i32) #1

declare dso_local i64 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @ab8500_fg_update_cap_scalers(%struct.ab8500_fg*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
