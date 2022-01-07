; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, %struct.imx_thermal_data* }
%struct.imx_thermal_data = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.thermal_soc_data*, %struct.regmap* }
%struct.thermal_soc_data = type { i32, i32, i32, i64, i32, i64, i32, i32 }
%struct.regmap = type { i32 }

@THERMAL_DEVICE_ENABLED = common dso_local global i64 0, align 8
@REG_CLR = common dso_local global i64 0, align 8
@REG_SET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"temp measurement never finished\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TEMPMON_IMX7D = common dso_local global i64 0, align 8
@TEMPMON_IMX6Q = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"thermal alarm off: T < %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"millicelsius: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @imx_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_get_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.imx_thermal_data*, align 8
  %7 = alloca %struct.thermal_soc_data*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %13 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 1
  %14 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %13, align 8
  store %struct.imx_thermal_data* %14, %struct.imx_thermal_data** %6, align 8
  %15 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %16 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %15, i32 0, i32 9
  %17 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %16, align 8
  store %struct.thermal_soc_data* %17, %struct.thermal_soc_data** %7, align 8
  %18 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %19 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %18, i32 0, i32 10
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %8, align 8
  %21 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %22 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @THERMAL_DEVICE_ENABLED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load %struct.regmap*, %struct.regmap** %8, align 8
  %28 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %29 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_read(%struct.regmap* %27, i32 %30, i32* %11)
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %34 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  br label %61

40:                                               ; preds = %2
  %41 = load %struct.regmap*, %struct.regmap** %8, align 8
  %42 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %43 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_CLR, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %48 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @regmap_write(%struct.regmap* %41, i64 %46, i32 %49)
  %51 = load %struct.regmap*, %struct.regmap** %8, align 8
  %52 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %53 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @REG_SET, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %58 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @regmap_write(%struct.regmap* %51, i64 %56, i32 %59)
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %40, %26
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @usleep_range(i32 20, i32 50)
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.regmap*, %struct.regmap** %8, align 8
  %68 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %69 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regmap_read(%struct.regmap* %67, i32 %70, i32* %11)
  %72 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %73 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @THERMAL_DEVICE_ENABLED, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %66
  %78 = load %struct.regmap*, %struct.regmap** %8, align 8
  %79 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %80 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @REG_CLR, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %85 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @regmap_write(%struct.regmap* %78, i64 %83, i32 %86)
  %88 = load %struct.regmap*, %struct.regmap** %8, align 8
  %89 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %90 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @REG_SET, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %95 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @regmap_write(%struct.regmap* %88, i64 %93, i32 %96)
  br label %98

98:                                               ; preds = %77, %66
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %101 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %99, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %107 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %243

111:                                              ; preds = %98
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %114 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %112, %115
  %117 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %118 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = lshr i32 %116, %119
  store i32 %120, i32* %9, align 4
  %121 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %122 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %121, i32 0, i32 9
  %123 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %122, align 8
  %124 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TEMPMON_IMX7D, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %111
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %131 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sub i32 %129, %132
  %134 = add i32 %133, 25
  %135 = mul i32 %134, 1000
  %136 = load i32*, i32** %5, align 8
  store i32 %135, i32* %136, align 4
  br label %148

137:                                              ; preds = %111
  %138 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %139 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %143 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = mul i32 %141, %144
  %146 = sub i32 %140, %145
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %128
  %149 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %150 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %149, i32 0, i32 9
  %151 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %150, align 8
  %152 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TEMPMON_IMX6Q, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %206

156:                                              ; preds = %148
  %157 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %158 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %161 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %156
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %168 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = icmp sge i32 %166, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %173 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %174 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @imx_set_alarm_temp(%struct.imx_thermal_data* %172, i32 %175)
  br label %177

177:                                              ; preds = %171, %164, %156
  %178 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %179 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %182 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %205

185:                                              ; preds = %177
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %189 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %185
  %193 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %194 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %195 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @imx_set_alarm_temp(%struct.imx_thermal_data* %193, i32 %196)
  %198 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %199 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %198, i32 0, i32 0
  %200 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %201 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = sdiv i32 %202, 1000
  %204 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %192, %185, %177
  br label %206

206:                                              ; preds = %205, %148
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %210 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %206
  %214 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %215 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %214, i32 0, i32 0
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %217)
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %222 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %221, i32 0, i32 6
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %213, %206
  %224 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %225 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %242, label %228

228:                                              ; preds = %223
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %232 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %228
  %236 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %237 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %236, i32 0, i32 7
  store i32 1, i32* %237, align 8
  %238 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %6, align 8
  %239 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @enable_irq(i32 %240)
  br label %242

242:                                              ; preds = %235, %228, %223
  store i32 0, i32* %3, align 4
  br label %243

243:                                              ; preds = %242, %105
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @imx_set_alarm_temp(%struct.imx_thermal_data*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
