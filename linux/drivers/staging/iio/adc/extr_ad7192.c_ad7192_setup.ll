; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7192_state = type { i32, i32, i32, i32**, i64, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.device_node = type { i32 }
%struct.iio_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@AD7192_REG_ID = common dso_local global i32 0, align 4
@AD7192_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"device ID query failed (0x%X)\0A\00", align 1
@AD7192_MODE_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"adi,rejection-60-Hz-enable\00", align 1
@AD7192_MODE_REJ60 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"adi,refin2-pins-enable\00", align 1
@ID_AD7195 = common dso_local global i32 0, align 4
@AD7192_CONF_REFSEL = common dso_local global i32 0, align 4
@AD7192_CONF_CHOP = common dso_local global i32 0, align 4
@AD7192_NO_SYNC_FILTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"adi,buffer-enable\00", align 1
@AD7192_CONF_BUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"bipolar\00", align 1
@AD7192_CONF_UNIPOLAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"adi,burnout-currents-enable\00", align 1
@AD7192_CONF_BURN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Can't enable burnout currents: see CHOP or buffer\0A\00", align 1
@AD7192_REG_MODE = common dso_local global i32 0, align 4
@AD7192_REG_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7192_state*, %struct.device_node*)* @ad7192_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_setup(%struct.ad7192_state* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7192_state*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ad7192_state* %0, %struct.ad7192_state** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %16 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %17 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = call %struct.iio_dev* @spi_get_drvdata(%struct.TYPE_9__* %19)
  store %struct.iio_dev* %20, %struct.iio_dev** %6, align 8
  %21 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %21, i32 0, i32 5
  %23 = call i32 @ad_sd_reset(%struct.TYPE_10__* %22, i32 48)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %3, align 4
  br label %245

28:                                               ; preds = %2
  %29 = call i32 @usleep_range(i32 500, i32 1000)
  %30 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %31 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %30, i32 0, i32 5
  %32 = load i32, i32* @AD7192_REG_ID, align 4
  %33 = call i32 @ad_sd_read_reg(%struct.TYPE_10__* %31, i32 %32, i32 1, i32* %15)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %3, align 4
  br label %245

38:                                               ; preds = %28
  %39 = load i32, i32* @AD7192_ID_MASK, align 4
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %44 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %49 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %15, align 4
  %54 = call i32 (i32*, i8*, ...) @dev_warn(i32* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47, %38
  %56 = load i32, i32* @AD7192_MODE_IDLE, align 4
  %57 = call i32 @AD7192_MODE_SEL(i32 %56)
  %58 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %59 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AD7192_MODE_CLKSRC(i32 %60)
  %62 = or i32 %57, %61
  %63 = call i32 @AD7192_MODE_RATE(i32 480)
  %64 = or i32 %62, %63
  %65 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %66 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = call i32 @AD7192_CONF_GAIN(i32 0)
  %68 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %69 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = call i32 @of_property_read_bool(%struct.device_node* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %55
  %75 = load i32, i32* @AD7192_MODE_REJ60, align 4
  %76 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %77 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %55
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i32 @of_property_read_bool(%struct.device_node* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %87 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ID_AD7195, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, i32* @AD7192_CONF_REFSEL, align 4
  %93 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %94 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %85, %80
  %98 = load i32, i32* @AD7192_CONF_CHOP, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %101 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @AD7192_NO_SYNC_FILTER, align 4
  %105 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %106 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.device_node*, %struct.device_node** %5, align 8
  %108 = call i32 @of_property_read_bool(%struct.device_node* %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %97
  %112 = load i32, i32* @AD7192_CONF_BUF, align 4
  %113 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %114 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %97
  %118 = load %struct.device_node*, %struct.device_node** %5, align 8
  %119 = call i32 @of_property_read_bool(%struct.device_node* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @AD7192_CONF_UNIPOLAR, align 4
  %124 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %125 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %117
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = call i32 @of_property_read_bool(%struct.device_node* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* @AD7192_CONF_BURN, align 4
  %138 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %139 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %153

142:                                              ; preds = %133, %128
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %147 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = call i32 (i32*, i8*, ...) @dev_warn(i32* %150, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %152

152:                                              ; preds = %145, %142
  br label %153

153:                                              ; preds = %152, %136
  %154 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %155 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %154, i32 0, i32 5
  %156 = load i32, i32* @AD7192_REG_MODE, align 4
  %157 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %158 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ad_sd_write_reg(%struct.TYPE_10__* %155, i32 %156, i32 3, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %3, align 4
  br label %245

165:                                              ; preds = %153
  %166 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %167 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %166, i32 0, i32 5
  %168 = load i32, i32* @AD7192_REG_CONF, align 4
  %169 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %170 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ad_sd_write_reg(%struct.TYPE_10__* %167, i32 %168, i32 3, i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %165
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %3, align 4
  br label %245

177:                                              ; preds = %165
  %178 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %179 = call i32 @ad7192_calibrate_all(%struct.ad7192_state* %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %3, align 4
  br label %245

184:                                              ; preds = %177
  store i32 0, i32* %13, align 4
  br label %185

185:                                              ; preds = %241, %184
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %188 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %187, i32 0, i32 3
  %189 = load i32**, i32*** %188, align 8
  %190 = call i32 @ARRAY_SIZE(i32** %189)
  %191 = icmp slt i32 %186, %190
  br i1 %191, label %192, label %244

192:                                              ; preds = %185
  %193 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %194 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = mul nsw i32 %196, 100000000
  %198 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %199 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %198, i32 0, i32 0
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %206 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @AD7192_CONF_UNIPOLAR, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 0, i32 1
  %213 = sub nsw i32 %204, %212
  %214 = ashr i32 %197, %213
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %12, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load i64, i64* %12, align 8
  %218 = zext i32 %216 to i64
  %219 = lshr i64 %217, %218
  store i64 %219, i64* %12, align 8
  %220 = load i64, i64* %12, align 8
  %221 = call i32 @do_div(i64 %220, i32 100000000)
  %222 = mul nsw i32 %221, 10
  %223 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %224 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %223, i32 0, i32 3
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %222, i32* %230, align 4
  %231 = load i64, i64* %12, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %234 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %233, i32 0, i32 3
  %235 = load i32**, i32*** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  store i32 %232, i32* %240, align 4
  br label %241

241:                                              ; preds = %192
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %185

244:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %182, %175, %163, %36, %26
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.TYPE_9__*) #1

declare dso_local i32 @ad_sd_reset(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ad_sd_read_reg(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @AD7192_MODE_SEL(i32) #1

declare dso_local i32 @AD7192_MODE_CLKSRC(i32) #1

declare dso_local i32 @AD7192_MODE_RATE(i32) #1

declare dso_local i32 @AD7192_CONF_GAIN(i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @ad_sd_write_reg(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @ad7192_calibrate_all(%struct.ad7192_state*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
