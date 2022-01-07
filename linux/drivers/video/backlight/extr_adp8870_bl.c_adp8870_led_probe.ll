; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adp8870_backlight_platform_data = type { i32, i32, i32, i32, %struct.led_info*, i32, i32 }
%struct.led_info = type { i32, i32, i32 }
%struct.adp8870_bl = type { %struct.adp8870_led* }
%struct.adp8870_led = type { i32, i32, i32, %struct.TYPE_3__, i8*, %struct.i2c_client* }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADP8870_ISCLAW = common dso_local global i32 0, align 4
@ADP8870_ISCT1 = common dso_local global i32 0, align 4
@ADP8870_ISCF = common dso_local global i32 0, align 4
@ADP8870_FLAG_LED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid LED ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"LED %d used by Backlight\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@adp8870_led_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i8* null, align 8
@FLAG_OFFT_SHIFT = common dso_local global i32 0, align 4
@adp8870_led_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to register LED %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"failed to write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adp8870_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8870_led_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adp8870_backlight_platform_data*, align 8
  %5 = alloca %struct.adp8870_bl*, align 8
  %6 = alloca %struct.adp8870_led*, align 8
  %7 = alloca %struct.adp8870_led*, align 8
  %8 = alloca %struct.led_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.adp8870_backlight_platform_data* @dev_get_platdata(i32* %12)
  store %struct.adp8870_backlight_platform_data* %13, %struct.adp8870_backlight_platform_data** %4, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = call %struct.adp8870_bl* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.adp8870_bl* %15, %struct.adp8870_bl** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.adp8870_led* @devm_kcalloc(i32* %17, i32 %20, i32 56, i32 %21)
  store %struct.adp8870_led* %22, %struct.adp8870_led** %6, align 8
  %23 = load %struct.adp8870_led*, %struct.adp8870_led** %6, align 8
  %24 = icmp eq %struct.adp8870_led* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %225

28:                                               ; preds = %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load i32, i32* @ADP8870_ISCLAW, align 4
  %31 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @adp8870_write(%struct.i2c_client* %29, i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %225

39:                                               ; preds = %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = load i32, i32* @ADP8870_ISCT1, align 4
  %42 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 3
  %46 = shl i32 %45, 6
  %47 = call i32 @adp8870_write(%struct.i2c_client* %40, i32 %41, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %225

52:                                               ; preds = %39
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32, i32* @ADP8870_ISCF, align 4
  %55 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @FADE_VAL(i32 %57, i32 %60)
  %62 = call i32 @adp8870_write(%struct.i2c_client* %53, i32 %54, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %225

67:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %194, %67
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %71 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %197

74:                                               ; preds = %68
  %75 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %76 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %75, i32 0, i32 4
  %77 = load %struct.led_info*, %struct.led_info** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.led_info, %struct.led_info* %77, i64 %79
  store %struct.led_info* %80, %struct.led_info** %8, align 8
  %81 = load %struct.adp8870_led*, %struct.adp8870_led** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %81, i64 %83
  store %struct.adp8870_led* %84, %struct.adp8870_led** %7, align 8
  %85 = load %struct.led_info*, %struct.led_info** %8, align 8
  %86 = getelementptr inbounds %struct.led_info, %struct.led_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ADP8870_FLAG_LED_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %91 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %93 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 7
  br i1 %95, label %101, label %96

96:                                               ; preds = %74
  %97 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %98 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %96, %74
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %105 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %201

110:                                              ; preds = %96
  %111 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %4, align 8
  %112 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %115 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 1, %117
  %119 = and i32 %113, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %110
  %122 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %125 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %201

130:                                              ; preds = %110
  %131 = load %struct.led_info*, %struct.led_info** %8, align 8
  %132 = getelementptr inbounds %struct.led_info, %struct.led_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %135 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  store i32 %133, i32* %136, align 8
  %137 = load %struct.led_info*, %struct.led_info** %8, align 8
  %138 = getelementptr inbounds %struct.led_info, %struct.led_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %141 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @adp8870_led_set, align 4
  %144 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %145 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 8
  %147 = load i8*, i8** @LED_OFF, align 8
  %148 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %149 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  %151 = load %struct.led_info*, %struct.led_info** %8, align 8
  %152 = getelementptr inbounds %struct.led_info, %struct.led_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FLAG_OFFT_SHIFT, align 4
  %155 = ashr i32 %153, %154
  %156 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %157 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %159 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %160 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %159, i32 0, i32 5
  store %struct.i2c_client* %158, %struct.i2c_client** %160, align 8
  %161 = load i8*, i8** @LED_OFF, align 8
  %162 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %163 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  %164 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %165 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %164, i32 0, i32 2
  %166 = load i32, i32* @adp8870_led_work, align 4
  %167 = call i32 @INIT_WORK(i32* %165, i32 %166)
  %168 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %171 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %170, i32 0, i32 3
  %172 = call i32 @led_classdev_register(i32* %169, %struct.TYPE_3__* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %130
  %176 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %179 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  br label %201

182:                                              ; preds = %130
  %183 = load %struct.adp8870_led*, %struct.adp8870_led** %7, align 8
  %184 = call i32 @adp8870_led_setup(%struct.adp8870_led* %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %189 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %188, i32 0, i32 0
  %190 = call i32 (i32*, i8*, ...) @dev_err(i32* %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %201

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %68

197:                                              ; preds = %68
  %198 = load %struct.adp8870_led*, %struct.adp8870_led** %6, align 8
  %199 = load %struct.adp8870_bl*, %struct.adp8870_bl** %5, align 8
  %200 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %199, i32 0, i32 0
  store %struct.adp8870_led* %198, %struct.adp8870_led** %200, align 8
  store i32 0, i32* %2, align 4
  br label %225

201:                                              ; preds = %187, %175, %121, %101
  %202 = load i32, i32* %10, align 4
  %203 = sub nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %220, %201
  %205 = load i32, i32* %10, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %204
  %208 = load %struct.adp8870_led*, %struct.adp8870_led** %6, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %208, i64 %210
  %212 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %211, i32 0, i32 3
  %213 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %212)
  %214 = load %struct.adp8870_led*, %struct.adp8870_led** %6, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %214, i64 %216
  %218 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %217, i32 0, i32 2
  %219 = call i32 @cancel_work_sync(i32* %218)
  br label %220

220:                                              ; preds = %207
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %10, align 4
  br label %204

223:                                              ; preds = %204
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %197, %65, %50, %37, %25
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.adp8870_backlight_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.adp8870_bl* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.adp8870_led* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @adp8870_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FADE_VAL(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @adp8870_led_setup(%struct.adp8870_led*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
