; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_set_temp_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_set_temp_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@CFG_OTG = common dso_local global i32 0, align 4
@CFG_OTG_TEMP_THRESHOLD_MASK = common dso_local global i32 0, align 4
@CFG_OTG_TEMP_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@SMB347_TEMP_USE_DEFAULT = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_SOFT_COLD_MASK = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_SOFT_COLD_SHIFT = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_SOFT_HOT_MASK = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_SOFT_HOT_SHIFT = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_HARD_COLD_MASK = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_HARD_COLD_SHIFT = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_HARD_HOT_MASK = common dso_local global i32 0, align 4
@CFG_TEMP_LIMIT_HARD_HOT_SHIFT = common dso_local global i32 0, align 4
@CFG_THERM = common dso_local global i32 0, align 4
@CFG_THERM_MONITOR_DISABLED = common dso_local global i32 0, align 4
@CFG_SYSOK = common dso_local global i32 0, align 4
@CFG_SYSOK_SUSPEND_HARD_LIMIT_DISABLED = common dso_local global i32 0, align 4
@SMB347_SOFT_TEMP_COMPENSATE_DEFAULT = common dso_local global i32 0, align 4
@CFG_THERM_SOFT_HOT_COMPENSATION_MASK = common dso_local global i32 0, align 4
@CFG_THERM_SOFT_HOT_COMPENSATION_SHIFT = common dso_local global i32 0, align 4
@CFG_THERM_SOFT_COLD_COMPENSATION_MASK = common dso_local global i32 0, align 4
@CFG_THERM_SOFT_COLD_COMPENSATION_SHIFT = common dso_local global i32 0, align 4
@ccc_tbl = common dso_local global i32 0, align 4
@CFG_OTG_CC_COMPENSATION_MASK = common dso_local global i32 0, align 4
@CFG_OTG_CC_COMPENSATION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*)* @smb347_set_temp_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_set_temp_limits(%struct.smb347_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb347_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %8 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %15 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @clamp_val(i32 %19, i32 100, i32 130)
  %21 = sub nsw i32 %20, 100
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %6, align 4
  %24 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %25 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CFG_OTG, align 4
  %28 = load i32, i32* @CFG_OTG_TEMP_THRESHOLD_MASK, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CFG_OTG_TEMP_THRESHOLD_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %13
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %291

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %40 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SMB347_TEMP_USE_DEFAULT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %38
  %47 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %48 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @clamp_val(i32 %52, i32 0, i32 15)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %54, 5
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %57, 3
  store i32 %58, i32* %6, align 4
  %59 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %60 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CFG_TEMP_LIMIT, align 4
  %63 = load i32, i32* @CFG_TEMP_LIMIT_SOFT_COLD_MASK, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @CFG_TEMP_LIMIT_SOFT_COLD_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %46
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %291

72:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %38
  %74 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %75 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SMB347_TEMP_USE_DEFAULT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %73
  %82 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %83 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @clamp_val(i32 %87, i32 40, i32 55)
  %89 = sub nsw i32 %88, 40
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sdiv i32 %90, 5
  store i32 %91, i32* %6, align 4
  %92 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %93 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CFG_TEMP_LIMIT, align 4
  %96 = load i32, i32* @CFG_TEMP_LIMIT_SOFT_HOT_MASK, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @CFG_TEMP_LIMIT_SOFT_HOT_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %81
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %291

105:                                              ; preds = %81
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %73
  %107 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %108 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SMB347_TEMP_USE_DEFAULT, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %106
  %115 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %116 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @clamp_val(i32 %120, i32 -5, i32 10)
  %122 = add nsw i32 %121, 5
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sdiv i32 %123, 5
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %126, 3
  store i32 %127, i32* %6, align 4
  %128 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %129 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CFG_TEMP_LIMIT, align 4
  %132 = load i32, i32* @CFG_TEMP_LIMIT_HARD_COLD_MASK, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @CFG_TEMP_LIMIT_HARD_COLD_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = call i32 @regmap_update_bits(i32 %130, i32 %131, i32 %132, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %114
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %291

141:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %106
  %143 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %144 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SMB347_TEMP_USE_DEFAULT, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %142
  %151 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %152 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @clamp_val(i32 %156, i32 50, i32 65)
  %158 = sub nsw i32 %157, 50
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = sdiv i32 %159, 5
  store i32 %160, i32* %6, align 4
  %161 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %162 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CFG_TEMP_LIMIT, align 4
  %165 = load i32, i32* @CFG_TEMP_LIMIT_HARD_HOT_MASK, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @CFG_TEMP_LIMIT_HARD_HOT_SHIFT, align 4
  %168 = shl i32 %166, %167
  %169 = call i32 @regmap_update_bits(i32 %163, i32 %164, i32 %165, i32 %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %150
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %291

174:                                              ; preds = %150
  store i32 1, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %142
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %180 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @CFG_THERM, align 4
  %183 = load i32, i32* @CFG_THERM_MONITOR_DISABLED, align 4
  %184 = call i32 @regmap_update_bits(i32 %181, i32 %182, i32 %183, i32 0)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %178
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %291

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %175
  %191 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %192 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %190
  %198 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %199 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CFG_SYSOK, align 4
  %202 = load i32, i32* @CFG_SYSOK_SUSPEND_HARD_LIMIT_DISABLED, align 4
  %203 = call i32 @regmap_update_bits(i32 %200, i32 %201, i32 %202, i32 0)
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* %5, align 4
  store i32 %207, i32* %2, align 4
  br label %291

208:                                              ; preds = %197
  br label %209

209:                                              ; preds = %208, %190
  %210 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %211 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %210, i32 0, i32 1
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SMB347_SOFT_TEMP_COMPENSATE_DEFAULT, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %252

217:                                              ; preds = %209
  %218 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %219 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %218, i32 0, i32 1
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 3
  store i32 %223, i32* %6, align 4
  %224 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %225 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @CFG_THERM, align 4
  %228 = load i32, i32* @CFG_THERM_SOFT_HOT_COMPENSATION_MASK, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @CFG_THERM_SOFT_HOT_COMPENSATION_SHIFT, align 4
  %231 = shl i32 %229, %230
  %232 = call i32 @regmap_update_bits(i32 %226, i32 %227, i32 %228, i32 %231)
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %5, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %217
  %236 = load i32, i32* %5, align 4
  store i32 %236, i32* %2, align 4
  br label %291

237:                                              ; preds = %217
  %238 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %239 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CFG_THERM, align 4
  %242 = load i32, i32* @CFG_THERM_SOFT_COLD_COMPENSATION_MASK, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @CFG_THERM_SOFT_COLD_COMPENSATION_SHIFT, align 4
  %245 = shl i32 %243, %244
  %246 = call i32 @regmap_update_bits(i32 %240, i32 %241, i32 %242, i32 %245)
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %237
  %250 = load i32, i32* %5, align 4
  store i32 %250, i32* %2, align 4
  br label %291

251:                                              ; preds = %237
  br label %252

252:                                              ; preds = %251, %209
  %253 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %254 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %253, i32 0, i32 1
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 6
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %289

259:                                              ; preds = %252
  %260 = load i32, i32* @ccc_tbl, align 4
  %261 = load i32, i32* @ccc_tbl, align 4
  %262 = call i32 @ARRAY_SIZE(i32 %261)
  %263 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %264 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %263, i32 0, i32 1
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 6
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @current_to_hw(i32 %260, i32 %262, i64 %267)
  store i32 %268, i32* %6, align 4
  %269 = load i32, i32* %6, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %259
  %272 = load i32, i32* %6, align 4
  store i32 %272, i32* %2, align 4
  br label %291

273:                                              ; preds = %259
  %274 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %275 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @CFG_OTG, align 4
  %278 = load i32, i32* @CFG_OTG_CC_COMPENSATION_MASK, align 4
  %279 = load i32, i32* %6, align 4
  %280 = and i32 %279, 3
  %281 = load i32, i32* @CFG_OTG_CC_COMPENSATION_SHIFT, align 4
  %282 = shl i32 %280, %281
  %283 = call i32 @regmap_update_bits(i32 %276, i32 %277, i32 %278, i32 %282)
  store i32 %283, i32* %5, align 4
  %284 = load i32, i32* %5, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %273
  %287 = load i32, i32* %5, align 4
  store i32 %287, i32* %2, align 4
  br label %291

288:                                              ; preds = %273
  br label %289

289:                                              ; preds = %288, %252
  %290 = load i32, i32* %5, align 4
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %289, %286, %271, %249, %235, %206, %187, %172, %139, %103, %70, %35
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @current_to_hw(i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
