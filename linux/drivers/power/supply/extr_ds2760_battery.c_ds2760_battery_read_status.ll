; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_ds2760_battery_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_ds2760_battery_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2760_device_info = type { i64, i32*, i32, i32, i8, i32, i8, i32, i8, i32, i32, i32, i32, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@cache_time = common dso_local global i32 0, align 4
@DS2760_DATA_SIZE = common dso_local global i32 0, align 4
@DS2760_VOLTAGE_MSB = common dso_local global i64 0, align 8
@DS2760_TEMP_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"call to w1_ds2760_read failed (0x%p)\0A\00", align 1
@DS2760_VOLTAGE_LSB = common dso_local global i64 0, align 8
@DS2760_CURRENT_MSB = common dso_local global i64 0, align 8
@DS2760_CURRENT_LSB = common dso_local global i64 0, align 8
@DS2760_CURRENT_ACCUM_MSB = common dso_local global i64 0, align 8
@DS2760_CURRENT_ACCUM_LSB = common dso_local global i64 0, align 8
@DS2760_TEMP_MSB = common dso_local global i64 0, align 8
@DS2760_RATED_CAPACITY = common dso_local global i64 0, align 8
@rated_capacities = common dso_local global i32* null, align 8
@DS2760_ACTIVE_FULL = common dso_local global i64 0, align 8
@DS2760_ACTIVE_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2760_device_info*)* @ds2760_battery_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2760_battery_read_status(%struct.ds2760_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ds2760_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  store %struct.ds2760_device_info* %0, %struct.ds2760_device_info** %3, align 8
  %9 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %10 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %16 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @cache_time, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i64 @time_before(i64 %14, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %411

24:                                               ; preds = %13, %1
  %25 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %26 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* @DS2760_DATA_SIZE, align 4
  store i32 %30, i32* %7, align 4
  br label %38

31:                                               ; preds = %24
  %32 = load i64, i64* @DS2760_VOLTAGE_MSB, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @DS2760_TEMP_LSB, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %40 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %43 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @w1_ds2760_read(i32 %41, i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %38
  %55 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %56 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %59 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 1, i32* %2, align 4
  br label %411

62:                                               ; preds = %38
  %63 = load i64, i64* @jiffies, align 8
  %64 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %65 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %67 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @DS2760_VOLTAGE_MSB, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 3
  %73 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %74 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @DS2760_VOLTAGE_LSB, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 5
  %80 = or i32 %72, %79
  %81 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %82 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %84 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 4880
  %87 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %88 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %90 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @DS2760_CURRENT_MSB, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = trunc i32 %94 to i8
  %96 = sext i8 %95 to i32
  %97 = shl i32 %96, 5
  %98 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %99 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @DS2760_CURRENT_LSB, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 3
  %105 = or i32 %97, %104
  %106 = trunc i32 %105 to i8
  %107 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %108 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %107, i32 0, i32 4
  store i8 %106, i8* %108, align 8
  %109 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %110 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %109, i32 0, i32 4
  %111 = load i8, i8* %110, align 8
  %112 = sext i8 %111 to i32
  %113 = mul nsw i32 %112, 625
  %114 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %115 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %117 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @DS2760_CURRENT_ACCUM_MSB, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = trunc i32 %121 to i8
  %123 = sext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %126 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @DS2760_CURRENT_ACCUM_LSB, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %124, %130
  %132 = trunc i32 %131 to i8
  %133 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %134 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %133, i32 0, i32 6
  store i8 %132, i8* %134, align 8
  %135 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %136 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %135, i32 0, i32 6
  %137 = load i8, i8* %136, align 8
  %138 = sext i8 %137 to i32
  %139 = mul nsw i32 %138, 250
  %140 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %141 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %143 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @DS2760_TEMP_MSB, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = trunc i32 %147 to i8
  %149 = sext i8 %148 to i32
  %150 = shl i32 %149, 3
  %151 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %152 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @DS2760_TEMP_LSB, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 5
  %159 = or i32 %150, %158
  %160 = trunc i32 %159 to i8
  %161 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %162 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %161, i32 0, i32 8
  store i8 %160, i8* %162, align 8
  %163 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %164 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %163, i32 0, i32 8
  %165 = load i8, i8* %164, align 8
  %166 = sext i8 %165 to i32
  %167 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %168 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %167, i32 0, i32 8
  %169 = load i8, i8* %168, align 8
  %170 = sext i8 %169 to i32
  %171 = sdiv i32 %170, 4
  %172 = add nsw i32 %166, %171
  %173 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %174 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 4
  %175 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %176 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @DS2760_RATED_CAPACITY, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** @rated_capacities, align 8
  %182 = call i32 @ARRAY_SIZE(i32* %181)
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %62
  %185 = load i32*, i32** @rated_capacities, align 8
  %186 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %187 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @DS2760_RATED_CAPACITY, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %185, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %196 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %195, i32 0, i32 10
  store i32 %194, i32* %196, align 8
  br label %207

197:                                              ; preds = %62
  %198 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %199 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @DS2760_RATED_CAPACITY, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 10
  %205 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %206 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %205, i32 0, i32 10
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %197, %184
  %208 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %209 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %210, 1000
  store i32 %211, i32* %209, align 8
  %212 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %213 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 8
  %219 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %220 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %223 = add i64 %222, 1
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %218, %225
  %227 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %228 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %227, i32 0, i32 11
  store i32 %226, i32* %228, align 4
  %229 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %230 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %229, i32 0, i32 11
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %207
  %234 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %235 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = sdiv i64 %237, 1000
  %239 = trunc i64 %238 to i32
  %240 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %241 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %240, i32 0, i32 11
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %233, %207
  %243 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %244 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %243, i32 0, i32 11
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %245, i32* %246, align 16
  store i32 1, i32* %5, align 4
  br label %247

247:                                              ; preds = %270, %242
  %248 = load i32, i32* %5, align 4
  %249 = icmp slt i32 %248, 5
  br i1 %249, label %250, label %273

250:                                              ; preds = %247
  %251 = load i32, i32* %5, align 4
  %252 = sub nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %257 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %260 = add i64 %259, 1
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = add i64 %260, %262
  %264 = getelementptr inbounds i32, i32* %258, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %255, %265
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %268
  store i32 %266, i32* %269, align 4
  br label %270

270:                                              ; preds = %250
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %5, align 4
  br label %247

273:                                              ; preds = %247
  %274 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %275 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %276 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %275, i32 0, i32 9
  %277 = load i32, i32* %276, align 4
  %278 = sdiv i32 %277, 10
  %279 = call i8* @battery_interpolate(i32* %274, i32 %278)
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %282 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %281, i32 0, i32 11
  store i32 %280, i32* %282, align 4
  %283 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %284 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %283, i32 0, i32 11
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 %285, 1000
  store i32 %286, i32* %284, align 4
  %287 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %288 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* @DS2760_ACTIVE_EMPTY, align 4
  %291 = add nsw i32 %290, 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %294, i32* %295, align 16
  store i32 3, i32* %5, align 4
  br label %296

296:                                              ; preds = %318, %273
  %297 = load i32, i32* %5, align 4
  %298 = icmp sge i32 %297, 0
  br i1 %298, label %299, label %321

299:                                              ; preds = %296
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %306 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* @DS2760_ACTIVE_EMPTY, align 4
  %309 = load i32, i32* %5, align 4
  %310 = add nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %304, %313
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %316
  store i32 %314, i32* %317, align 4
  br label %318

318:                                              ; preds = %299
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %5, align 4
  br label %296

321:                                              ; preds = %296
  %322 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %323 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %324 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 4
  %326 = sdiv i32 %325, 10
  %327 = call i8* @battery_interpolate(i32* %322, i32 %326)
  %328 = ptrtoint i8* %327 to i32
  %329 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %330 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %329, i32 0, i32 12
  store i32 %328, i32* %330, align 8
  %331 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %332 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %331, i32 0, i32 12
  %333 = load i32, i32* %332, align 8
  %334 = mul nsw i32 %333, 1000
  store i32 %334, i32* %332, align 8
  %335 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %336 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %335, i32 0, i32 11
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %339 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %338, i32 0, i32 12
  %340 = load i32, i32* %339, align 8
  %341 = icmp eq i32 %337, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %321
  %343 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %344 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %343, i32 0, i32 13
  store i64 0, i64* %344, align 8
  br label %366

345:                                              ; preds = %321
  %346 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %347 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %350 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %349, i32 0, i32 12
  %351 = load i32, i32* %350, align 8
  %352 = sub nsw i32 %348, %351
  %353 = sext i32 %352 to i64
  %354 = mul nsw i64 %353, 100
  %355 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %356 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %355, i32 0, i32 11
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %359 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %358, i32 0, i32 12
  %360 = load i32, i32* %359, align 8
  %361 = sub nsw i32 %357, %360
  %362 = sext i32 %361 to i64
  %363 = sdiv i64 %354, %362
  %364 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %365 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %364, i32 0, i32 13
  store i64 %363, i64* %365, align 8
  br label %366

366:                                              ; preds = %345, %342
  %367 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %368 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %367, i32 0, i32 13
  %369 = load i64, i64* %368, align 8
  %370 = icmp slt i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %366
  %372 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %373 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %372, i32 0, i32 13
  store i64 0, i64* %373, align 8
  br label %374

374:                                              ; preds = %371, %366
  %375 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %376 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %375, i32 0, i32 13
  %377 = load i64, i64* %376, align 8
  %378 = icmp sgt i64 %377, 100
  br i1 %378, label %379, label %382

379:                                              ; preds = %374
  %380 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %381 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %380, i32 0, i32 13
  store i64 100, i64* %381, align 8
  br label %382

382:                                              ; preds = %379, %374
  %383 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %384 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = icmp slt i64 %386, -100
  br i1 %387, label %388, label %407

388:                                              ; preds = %382
  %389 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %390 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %389, i32 0, i32 7
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %393 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %392, i32 0, i32 12
  %394 = load i32, i32* %393, align 8
  %395 = sub nsw i32 %391, %394
  %396 = sext i32 %395 to i64
  %397 = mul nsw i64 %396, 36
  %398 = sub nsw i64 0, %397
  %399 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %400 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = sdiv i64 %402, 100
  %404 = sdiv i64 %398, %403
  %405 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %406 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %405, i32 0, i32 14
  store i64 %404, i64* %406, align 8
  br label %410

407:                                              ; preds = %382
  %408 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %409 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %408, i32 0, i32 14
  store i64 0, i64* %409, align 8
  br label %410

410:                                              ; preds = %407, %388
  store i32 0, i32* %2, align 4
  br label %411

411:                                              ; preds = %410, %54, %23
  %412 = load i32, i32* %2, align 4
  ret i32 %412
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @w1_ds2760_read(i32, i32*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @battery_interpolate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
