; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adp8860_backlight_platform_data = type { i32, i32, i32, i32, %struct.led_info*, i32, i32 }
%struct.led_info = type { i32, i32, i32 }
%struct.adp8860_bl = type { %struct.adp8860_led* }
%struct.adp8860_led = type { i32, i32, i32, %struct.TYPE_3__, i8*, %struct.i2c_client* }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADP8860_ISCFR = common dso_local global i32 0, align 4
@ADP8860_ISCT1 = common dso_local global i32 0, align 4
@ADP8860_ISCF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed to write\0A\00", align 1
@ADP8860_FLAG_LED_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid LED ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LED %d used by Backlight\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@adp8860_led_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i8* null, align 8
@FLAG_OFFT_SHIFT = common dso_local global i32 0, align 4
@adp8860_led_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to register LED %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adp8860_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_led_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adp8860_backlight_platform_data*, align 8
  %5 = alloca %struct.adp8860_bl*, align 8
  %6 = alloca %struct.adp8860_led*, align 8
  %7 = alloca %struct.adp8860_led*, align 8
  %8 = alloca %struct.led_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.adp8860_backlight_platform_data* @dev_get_platdata(i32* %12)
  store %struct.adp8860_backlight_platform_data* %13, %struct.adp8860_backlight_platform_data** %4, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = call %struct.adp8860_bl* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.adp8860_bl* %15, %struct.adp8860_bl** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.adp8860_led* @devm_kcalloc(i32* %17, i32 %20, i32 56, i32 %21)
  store %struct.adp8860_led* %22, %struct.adp8860_led** %6, align 8
  %23 = load %struct.adp8860_led*, %struct.adp8860_led** %6, align 8
  %24 = icmp eq %struct.adp8860_led* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %220

28:                                               ; preds = %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load i32, i32* @ADP8860_ISCFR, align 4
  %31 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @adp8860_write(%struct.i2c_client* %29, i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = load i32, i32* @ADP8860_ISCT1, align 4
  %37 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 3
  %41 = shl i32 %40, 6
  %42 = call i32 @adp8860_write(%struct.i2c_client* %35, i32 %36, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = load i32, i32* @ADP8860_ISCF, align 4
  %45 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @FADE_VAL(i32 %47, i32 %50)
  %52 = call i32 @adp8860_write(%struct.i2c_client* %43, i32 %44, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %28
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %220

62:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %189, %62
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %192

69:                                               ; preds = %63
  %70 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %71 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %70, i32 0, i32 4
  %72 = load %struct.led_info*, %struct.led_info** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.led_info, %struct.led_info* %72, i64 %74
  store %struct.led_info* %75, %struct.led_info** %8, align 8
  %76 = load %struct.adp8860_led*, %struct.adp8860_led** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %76, i64 %78
  store %struct.adp8860_led* %79, %struct.adp8860_led** %7, align 8
  %80 = load %struct.led_info*, %struct.led_info** %8, align 8
  %81 = getelementptr inbounds %struct.led_info, %struct.led_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ADP8860_FLAG_LED_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %86 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %88 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 7
  br i1 %90, label %96, label %91

91:                                               ; preds = %69
  %92 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %93 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %105

96:                                               ; preds = %91, %69
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %100 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %196

105:                                              ; preds = %91
  %106 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %4, align 8
  %107 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %110 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = shl i32 1, %112
  %114 = and i32 %108, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %105
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %120 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EBUSY, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %9, align 4
  br label %196

125:                                              ; preds = %105
  %126 = load %struct.led_info*, %struct.led_info** %8, align 8
  %127 = getelementptr inbounds %struct.led_info, %struct.led_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %130 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  store i32 %128, i32* %131, align 8
  %132 = load %struct.led_info*, %struct.led_info** %8, align 8
  %133 = getelementptr inbounds %struct.led_info, %struct.led_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %136 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @adp8860_led_set, align 4
  %139 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %140 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 8
  %142 = load i8*, i8** @LED_OFF, align 8
  %143 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %144 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i8* %142, i8** %145, align 8
  %146 = load %struct.led_info*, %struct.led_info** %8, align 8
  %147 = getelementptr inbounds %struct.led_info, %struct.led_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @FLAG_OFFT_SHIFT, align 4
  %150 = ashr i32 %148, %149
  %151 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %152 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %154 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %155 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %154, i32 0, i32 5
  store %struct.i2c_client* %153, %struct.i2c_client** %155, align 8
  %156 = load i8*, i8** @LED_OFF, align 8
  %157 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %158 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %160 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %159, i32 0, i32 2
  %161 = load i32, i32* @adp8860_led_work, align 4
  %162 = call i32 @INIT_WORK(i32* %160, i32 %161)
  %163 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %166 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %165, i32 0, i32 3
  %167 = call i32 @led_classdev_register(i32* %164, %struct.TYPE_3__* %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %125
  %171 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 0
  %173 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %174 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32*, i8*, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  br label %196

177:                                              ; preds = %125
  %178 = load %struct.adp8860_led*, %struct.adp8860_led** %7, align 8
  %179 = call i32 @adp8860_led_setup(%struct.adp8860_led* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %184 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %183, i32 0, i32 0
  %185 = call i32 (i32*, i8*, ...) @dev_err(i32* %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %196

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %63

192:                                              ; preds = %63
  %193 = load %struct.adp8860_led*, %struct.adp8860_led** %6, align 8
  %194 = load %struct.adp8860_bl*, %struct.adp8860_bl** %5, align 8
  %195 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %194, i32 0, i32 0
  store %struct.adp8860_led* %193, %struct.adp8860_led** %195, align 8
  store i32 0, i32* %2, align 4
  br label %220

196:                                              ; preds = %182, %170, %116, %96
  %197 = load i32, i32* %10, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %215, %196
  %200 = load i32, i32* %10, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %199
  %203 = load %struct.adp8860_led*, %struct.adp8860_led** %6, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %203, i64 %205
  %207 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %206, i32 0, i32 3
  %208 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %207)
  %209 = load %struct.adp8860_led*, %struct.adp8860_led** %6, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %209, i64 %211
  %213 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %212, i32 0, i32 2
  %214 = call i32 @cancel_work_sync(i32* %213)
  br label %215

215:                                              ; preds = %202
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %10, align 4
  br label %199

218:                                              ; preds = %199
  %219 = load i32, i32* %9, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %218, %192, %57, %25
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.adp8860_backlight_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.adp8860_bl* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.adp8860_led* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @adp8860_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FADE_VAL(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @adp8860_led_setup(%struct.adp8860_led*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
