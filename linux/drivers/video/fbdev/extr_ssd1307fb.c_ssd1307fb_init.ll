; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssd1307fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_11__*, i64, %struct.TYPE_10__*, i32, i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.pwm_args = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Could not get PWM from device tree!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Using PWM%d with a %dns period.\0A\00", align 1
@SSD1307FB_CONTRAST = common dso_local global i32 0, align 4
@SSD1307FB_SEG_REMAP_ON = common dso_local global i32 0, align 4
@SSD1307FB_SET_MULTIPLEX_RATIO = common dso_local global i32 0, align 4
@SSD1307FB_SET_DISPLAY_OFFSET = common dso_local global i32 0, align 4
@SSD1307FB_SET_CLOCK_FREQ = common dso_local global i32 0, align 4
@SSD1307FB_SET_AREA_COLOR_MODE = common dso_local global i32 0, align 4
@SSD1307FB_SET_PRECHARGE_PERIOD = common dso_local global i32 0, align 4
@SSD1307FB_SET_COM_PINS_CONFIG = common dso_local global i32 0, align 4
@SSD1307FB_SET_VCOMH = common dso_local global i32 0, align 4
@SSD1307FB_CHARGE_PUMP = common dso_local global i32 0, align 4
@SSD1307FB_SET_LOOKUP_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"lookup table index %d value out of range 31 <= %d <= 63\0A\00", align 1
@SSD1307FB_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@SSD1307FB_SET_ADDRESS_MODE_HORIZONTAL = common dso_local global i32 0, align 4
@SSD1307FB_SET_COL_RANGE = common dso_local global i32 0, align 4
@SSD1307FB_SET_PAGE_RANGE = common dso_local global i32 0, align 4
@SSD1307FB_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssd1307fb_par*)* @ssd1307fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssd1307fb_init(%struct.ssd1307fb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssd1307fb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwm_args, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ssd1307fb_par* %0, %struct.ssd1307fb_par** %3, align 8
  %13 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %14 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %13, i32 0, i32 16
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %1
  %20 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %21 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %20, i32 0, i32 14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call %struct.TYPE_12__* @pwm_get(i32* %23, i32* null)
  %25 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %26 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %25, i32 0, i32 21
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %26, align 8
  %27 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %28 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %27, i32 0, i32 21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = call i64 @IS_ERR(%struct.TYPE_12__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %34 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %33, i32 0, i32 14
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %39 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %38, i32 0, i32 21
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.TYPE_12__* %40)
  store i32 %41, i32* %2, align 4
  br label %537

42:                                               ; preds = %19
  %43 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %44 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %43, i32 0, i32 21
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = call i32 @pwm_apply_args(%struct.TYPE_12__* %45)
  %47 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %48 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %47, i32 0, i32 21
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = call i32 @pwm_get_args(%struct.TYPE_12__* %49, %struct.pwm_args* %9)
  %51 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %54 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %56 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %55, i32 0, i32 21
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %59 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 2
  %62 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %63 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pwm_config(%struct.TYPE_12__* %57, i32 %61, i32 %64)
  %66 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %67 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %66, i32 0, i32 21
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = call i32 @pwm_enable(%struct.TYPE_12__* %68)
  %70 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %71 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %70, i32 0, i32 14
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %75 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %74, i32 0, i32 21
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %80 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %42, %1
  %84 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %85 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %84, i32 0, i32 14
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* @SSD1307FB_CONTRAST, align 4
  %88 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %537

93:                                               ; preds = %83
  %94 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %95 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %94, i32 0, i32 14
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %98 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %96, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %537

105:                                              ; preds = %93
  %106 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %107 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %106, i32 0, i32 20
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %112 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %111, i32 0, i32 14
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32, i32* @SSD1307FB_SEG_REMAP_ON, align 4
  %115 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %537

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %105
  %122 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %123 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %124, 3
  %126 = or i32 192, %125
  store i32 %126, i32* %7, align 4
  %127 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %128 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %127, i32 0, i32 14
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %129, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %537

136:                                              ; preds = %121
  %137 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %138 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %137, i32 0, i32 14
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* @SSD1307FB_SET_MULTIPLEX_RATIO, align 4
  %141 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %139, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %537

146:                                              ; preds = %136
  %147 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %148 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %147, i32 0, i32 14
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %151 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %149, i32 %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %537

159:                                              ; preds = %146
  %160 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %161 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %160, i32 0, i32 14
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i32, i32* @SSD1307FB_SET_DISPLAY_OFFSET, align 4
  %164 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %162, i32 %163)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* %4, align 4
  store i32 %168, i32* %2, align 4
  br label %537

169:                                              ; preds = %159
  %170 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %171 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %170, i32 0, i32 14
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %174 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %172, i32 %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %2, align 4
  br label %537

181:                                              ; preds = %169
  %182 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %183 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %182, i32 0, i32 14
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* @SSD1307FB_SET_CLOCK_FREQ, align 4
  %186 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %184, i32 %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i32, i32* %4, align 4
  store i32 %190, i32* %2, align 4
  br label %537

191:                                              ; preds = %181
  %192 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %193 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, 1
  %196 = and i32 %195, 15
  %197 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %198 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, 15
  %201 = shl i32 %200, 4
  %202 = or i32 %196, %201
  store i32 %202, i32* %6, align 4
  %203 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %204 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %203, i32 0, i32 14
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %205, i32 %206)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %191
  %211 = load i32, i32* %4, align 4
  store i32 %211, i32* %2, align 4
  br label %537

212:                                              ; preds = %191
  %213 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %214 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %213, i32 0, i32 19
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %219 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %218, i32 0, i32 18
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %256

222:                                              ; preds = %217, %212
  %223 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %224 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %223, i32 0, i32 14
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = load i32, i32* @SSD1307FB_SET_AREA_COLOR_MODE, align 4
  %227 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %225, i32 %226)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = load i32, i32* %4, align 4
  store i32 %231, i32* %2, align 4
  br label %537

232:                                              ; preds = %222
  %233 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %234 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %233, i32 0, i32 19
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 48, i32 0
  %239 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %240 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %239, i32 0, i32 18
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i32 5, i32 0
  %245 = or i32 %238, %244
  store i32 %245, i32* %10, align 4
  %246 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %247 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %246, i32 0, i32 14
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %248, i32 %249)
  store i32 %250, i32* %4, align 4
  %251 = load i32, i32* %4, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %232
  %254 = load i32, i32* %4, align 4
  store i32 %254, i32* %2, align 4
  br label %537

255:                                              ; preds = %232
  br label %256

256:                                              ; preds = %255, %217
  %257 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %258 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %257, i32 0, i32 14
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = load i32, i32* @SSD1307FB_SET_PRECHARGE_PERIOD, align 4
  %261 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %259, i32 %260)
  store i32 %261, i32* %4, align 4
  %262 = load i32, i32* %4, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = load i32, i32* %4, align 4
  store i32 %265, i32* %2, align 4
  br label %537

266:                                              ; preds = %256
  %267 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %268 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 15
  %271 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %272 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, 15
  %275 = shl i32 %274, 4
  %276 = or i32 %270, %275
  store i32 %276, i32* %5, align 4
  %277 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %278 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %277, i32 0, i32 14
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %279, i32 %280)
  store i32 %281, i32* %4, align 4
  %282 = load i32, i32* %4, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %266
  %285 = load i32, i32* %4, align 4
  store i32 %285, i32* %2, align 4
  br label %537

286:                                              ; preds = %266
  %287 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %288 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %287, i32 0, i32 14
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %288, align 8
  %290 = load i32, i32* @SSD1307FB_SET_COM_PINS_CONFIG, align 4
  %291 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %289, i32 %290)
  store i32 %291, i32* %4, align 4
  %292 = load i32, i32* %4, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %286
  %295 = load i32, i32* %4, align 4
  store i32 %295, i32* %2, align 4
  br label %537

296:                                              ; preds = %286
  %297 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %298 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %297, i32 0, i32 17
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  %303 = shl i32 %302, 4
  %304 = or i32 2, %303
  %305 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %306 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 5
  %309 = or i32 %304, %308
  store i32 %309, i32* %8, align 4
  %310 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %311 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %310, i32 0, i32 14
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %311, align 8
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %312, i32 %313)
  store i32 %314, i32* %4, align 4
  %315 = load i32, i32* %4, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %296
  %318 = load i32, i32* %4, align 4
  store i32 %318, i32* %2, align 4
  br label %537

319:                                              ; preds = %296
  %320 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %321 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %320, i32 0, i32 14
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %321, align 8
  %323 = load i32, i32* @SSD1307FB_SET_VCOMH, align 4
  %324 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %322, i32 %323)
  store i32 %324, i32* %4, align 4
  %325 = load i32, i32* %4, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %319
  %328 = load i32, i32* %4, align 4
  store i32 %328, i32* %2, align 4
  br label %537

329:                                              ; preds = %319
  %330 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %331 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %330, i32 0, i32 14
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %331, align 8
  %333 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %334 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %332, i32 %335)
  store i32 %336, i32* %4, align 4
  %337 = load i32, i32* %4, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %329
  %340 = load i32, i32* %4, align 4
  store i32 %340, i32* %2, align 4
  br label %537

341:                                              ; preds = %329
  %342 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %343 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %342, i32 0, i32 14
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %343, align 8
  %345 = load i32, i32* @SSD1307FB_CHARGE_PUMP, align 4
  %346 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %344, i32 %345)
  store i32 %346, i32* %4, align 4
  %347 = load i32, i32* %4, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %341
  %350 = load i32, i32* %4, align 4
  store i32 %350, i32* %2, align 4
  br label %537

351:                                              ; preds = %341
  %352 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %353 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %352, i32 0, i32 14
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %353, align 8
  %355 = call i32 @BIT(i32 4)
  %356 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %357 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %356, i32 0, i32 16
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %351
  %363 = call i32 @BIT(i32 2)
  br label %365

364:                                              ; preds = %351
  br label %365

365:                                              ; preds = %364, %362
  %366 = phi i32 [ %363, %362 ], [ 0, %364 ]
  %367 = or i32 %355, %366
  %368 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %354, i32 %367)
  store i32 %368, i32* %4, align 4
  %369 = load i32, i32* %4, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %365
  %372 = load i32, i32* %4, align 4
  store i32 %372, i32* %2, align 4
  br label %537

373:                                              ; preds = %365
  %374 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %375 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %374, i32 0, i32 15
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %432

378:                                              ; preds = %373
  %379 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %380 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %379, i32 0, i32 14
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %380, align 8
  %382 = load i32, i32* @SSD1307FB_SET_LOOKUP_TABLE, align 4
  %383 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %381, i32 %382)
  store i32 %383, i32* %4, align 4
  %384 = load i32, i32* %4, align 4
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %378
  %387 = load i32, i32* %4, align 4
  store i32 %387, i32* %2, align 4
  br label %537

388:                                              ; preds = %378
  store i32 0, i32* %11, align 4
  br label %389

389:                                              ; preds = %428, %388
  %390 = load i32, i32* %11, align 4
  %391 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %392 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %391, i32 0, i32 11
  %393 = load i32*, i32** %392, align 8
  %394 = call i32 @ARRAY_SIZE(i32* %393)
  %395 = icmp slt i32 %390, %394
  br i1 %395, label %396, label %431

396:                                              ; preds = %389
  %397 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %398 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %397, i32 0, i32 11
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %11, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  store i32 %403, i32* %12, align 4
  %404 = load i32, i32* %12, align 4
  %405 = icmp slt i32 %404, 31
  br i1 %405, label %409, label %406

406:                                              ; preds = %396
  %407 = load i32, i32* %12, align 4
  %408 = icmp sgt i32 %407, 63
  br i1 %408, label %409, label %417

409:                                              ; preds = %406, %396
  %410 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %411 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %410, i32 0, i32 14
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 0
  %414 = load i32, i32* %11, align 4
  %415 = load i32, i32* %12, align 4
  %416 = call i32 @dev_warn(i32* %413, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %414, i32 %415)
  br label %417

417:                                              ; preds = %409, %406
  %418 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %419 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %418, i32 0, i32 14
  %420 = load %struct.TYPE_11__*, %struct.TYPE_11__** %419, align 8
  %421 = load i32, i32* %12, align 4
  %422 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %420, i32 %421)
  store i32 %422, i32* %4, align 4
  %423 = load i32, i32* %4, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %417
  %426 = load i32, i32* %4, align 4
  store i32 %426, i32* %2, align 4
  br label %537

427:                                              ; preds = %417
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %11, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %11, align 4
  br label %389

431:                                              ; preds = %389
  br label %432

432:                                              ; preds = %431, %373
  %433 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %434 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %433, i32 0, i32 14
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %434, align 8
  %436 = load i32, i32* @SSD1307FB_SET_ADDRESS_MODE, align 4
  %437 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %435, i32 %436)
  store i32 %437, i32* %4, align 4
  %438 = load i32, i32* %4, align 4
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %432
  %441 = load i32, i32* %4, align 4
  store i32 %441, i32* %2, align 4
  br label %537

442:                                              ; preds = %432
  %443 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %444 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %443, i32 0, i32 14
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %444, align 8
  %446 = load i32, i32* @SSD1307FB_SET_ADDRESS_MODE_HORIZONTAL, align 4
  %447 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %445, i32 %446)
  store i32 %447, i32* %4, align 4
  %448 = load i32, i32* %4, align 4
  %449 = icmp slt i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %442
  %451 = load i32, i32* %4, align 4
  store i32 %451, i32* %2, align 4
  br label %537

452:                                              ; preds = %442
  %453 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %454 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %453, i32 0, i32 14
  %455 = load %struct.TYPE_11__*, %struct.TYPE_11__** %454, align 8
  %456 = load i32, i32* @SSD1307FB_SET_COL_RANGE, align 4
  %457 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %455, i32 %456)
  store i32 %457, i32* %4, align 4
  %458 = load i32, i32* %4, align 4
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %452
  %461 = load i32, i32* %4, align 4
  store i32 %461, i32* %2, align 4
  br label %537

462:                                              ; preds = %452
  %463 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %464 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %463, i32 0, i32 14
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %464, align 8
  %466 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %465, i32 0)
  store i32 %466, i32* %4, align 4
  %467 = load i32, i32* %4, align 4
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %462
  %470 = load i32, i32* %4, align 4
  store i32 %470, i32* %2, align 4
  br label %537

471:                                              ; preds = %462
  %472 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %473 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %472, i32 0, i32 14
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %473, align 8
  %475 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %476 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %475, i32 0, i32 12
  %477 = load i32, i32* %476, align 8
  %478 = sub nsw i32 %477, 1
  %479 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %474, i32 %478)
  store i32 %479, i32* %4, align 4
  %480 = load i32, i32* %4, align 4
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %471
  %483 = load i32, i32* %4, align 4
  store i32 %483, i32* %2, align 4
  br label %537

484:                                              ; preds = %471
  %485 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %486 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %485, i32 0, i32 14
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %486, align 8
  %488 = load i32, i32* @SSD1307FB_SET_PAGE_RANGE, align 4
  %489 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %487, i32 %488)
  store i32 %489, i32* %4, align 4
  %490 = load i32, i32* %4, align 4
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %484
  %493 = load i32, i32* %4, align 4
  store i32 %493, i32* %2, align 4
  br label %537

494:                                              ; preds = %484
  %495 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %496 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %495, i32 0, i32 14
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** %496, align 8
  %498 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %499 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %498, i32 0, i32 13
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %497, i32 %500)
  store i32 %501, i32* %4, align 4
  %502 = load i32, i32* %4, align 4
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %494
  %505 = load i32, i32* %4, align 4
  store i32 %505, i32* %2, align 4
  br label %537

506:                                              ; preds = %494
  %507 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %508 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %507, i32 0, i32 14
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** %508, align 8
  %510 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %511 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %510, i32 0, i32 13
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %514 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @DIV_ROUND_UP(i32 %515, i32 8)
  %517 = add nsw i32 %512, %516
  %518 = sub nsw i32 %517, 1
  %519 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %509, i32 %518)
  store i32 %519, i32* %4, align 4
  %520 = load i32, i32* %4, align 4
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %506
  %523 = load i32, i32* %4, align 4
  store i32 %523, i32* %2, align 4
  br label %537

524:                                              ; preds = %506
  %525 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %526 = call i32 @ssd1307fb_update_display(%struct.ssd1307fb_par* %525)
  %527 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %3, align 8
  %528 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %527, i32 0, i32 14
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** %528, align 8
  %530 = load i32, i32* @SSD1307FB_DISPLAY_ON, align 4
  %531 = call i32 @ssd1307fb_write_cmd(%struct.TYPE_11__* %529, i32 %530)
  store i32 %531, i32* %4, align 4
  %532 = load i32, i32* %4, align 4
  %533 = icmp slt i32 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %524
  %535 = load i32, i32* %4, align 4
  store i32 %535, i32* %2, align 4
  br label %537

536:                                              ; preds = %524
  store i32 0, i32* %2, align 4
  br label %537

537:                                              ; preds = %536, %534, %522, %504, %492, %482, %469, %460, %450, %440, %425, %386, %371, %349, %339, %327, %317, %294, %284, %264, %253, %230, %210, %189, %179, %167, %157, %144, %134, %118, %103, %91, %32
  %538 = load i32, i32* %2, align 4
  ret i32 %538
}

declare dso_local %struct.TYPE_12__* @pwm_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @pwm_apply_args(%struct.TYPE_12__*) #1

declare dso_local i32 @pwm_get_args(%struct.TYPE_12__*, %struct.pwm_args*) #1

declare dso_local i32 @pwm_config(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @pwm_enable(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ssd1307fb_write_cmd(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ssd1307fb_update_display(%struct.ssd1307fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
