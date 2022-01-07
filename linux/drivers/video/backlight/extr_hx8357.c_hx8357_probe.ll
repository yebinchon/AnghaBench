; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lcd_device = type { i32 }
%struct.hx8357_data = type { i32, i32, i32*, %struct.spi_device* }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI setup failed.\0A\00", align 1
@hx8357_dt_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gpios-reset\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Missing dt property: gpios-reset\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"hx8357-reset\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to request gpio %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"im-gpios\00", align 1
@HX8357_NUM_IM_PINS = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"GPIO requested is not here yet, deferring the probe\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Missing dt property: im-gpios\0A\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"im_pins\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mxsfb\00", align 1
@hx8357_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Couldn't initialize panel\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Panel probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @hx8357_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx8357_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca %struct.hx8357_data*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hx8357_data* @devm_kzalloc(%struct.TYPE_8__* %10, i32 24, i32 %11)
  store %struct.hx8357_data* %12, %struct.hx8357_data** %5, align 8
  %13 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %14 = icmp ne %struct.hx8357_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %219

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = call i32 @spi_setup(%struct.spi_device* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %219

28:                                               ; preds = %18
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %31 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %30, i32 0, i32 3
  store %struct.spi_device* %29, %struct.spi_device** %31, align 8
  %32 = load i32, i32* @hx8357_dt_ids, align 4
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call %struct.of_device_id* @of_match_device(i32 %32, %struct.TYPE_8__* %34)
  store %struct.of_device_id* %35, %struct.of_device_id** %6, align 8
  %36 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %37 = icmp ne %struct.of_device_id* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %40 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %28
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %219

46:                                               ; preds = %38
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @of_get_named_gpio(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %54 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %56 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @gpio_is_valid(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %46
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %219

66:                                               ; preds = %46
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %70 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %73 = call i32 @devm_gpio_request_one(%struct.TYPE_8__* %68, i32 %71, i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  %79 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %80 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %219

86:                                               ; preds = %66
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @of_find_property(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %179

93:                                               ; preds = %86
  %94 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %95 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %175, %93
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @HX8357_NUM_IM_PINS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %178

100:                                              ; preds = %96
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i8* @of_get_named_gpio(i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %109 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %115 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EPROBE_DEFER, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %100
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 0
  %127 = call i32 @dev_info(%struct.TYPE_8__* %126, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i32, i32* @EPROBE_DEFER, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %219

130:                                              ; preds = %100
  %131 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %132 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @gpio_is_valid(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %130
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 0
  %143 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %219

146:                                              ; preds = %130
  %147 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %148 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %147, i32 0, i32 0
  %149 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %150 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %157 = call i32 @devm_gpio_request_one(%struct.TYPE_8__* %148, i32 %155, i32 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %146
  %161 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %162 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %161, i32 0, i32 0
  %163 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %164 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %219

174:                                              ; preds = %146
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %96

178:                                              ; preds = %96
  br label %182

179:                                              ; preds = %86
  %180 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %181 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %178
  %183 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %184 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %183, i32 0, i32 0
  %185 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %186 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %185, i32 0, i32 0
  %187 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %188 = call %struct.lcd_device* @devm_lcd_device_register(%struct.TYPE_8__* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_8__* %186, %struct.hx8357_data* %187, i32* @hx8357_ops)
  store %struct.lcd_device* %188, %struct.lcd_device** %4, align 8
  %189 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %190 = call i64 @IS_ERR(%struct.lcd_device* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %182
  %193 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %194 = call i32 @PTR_ERR(%struct.lcd_device* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %2, align 4
  br label %219

196:                                              ; preds = %182
  %197 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %198 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %199 = call i32 @spi_set_drvdata(%struct.spi_device* %197, %struct.lcd_device* %198)
  %200 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %201 = call i32 @hx8357_lcd_reset(%struct.lcd_device* %200)
  %202 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %203 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i32 (%struct.lcd_device*)*
  %206 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %207 = call i32 %205(%struct.lcd_device* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %196
  %211 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %212 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %211, i32 0, i32 0
  %213 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %212, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %219

215:                                              ; preds = %196
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 0
  %218 = call i32 @dev_info(%struct.TYPE_8__* %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %215, %210, %192, %160, %140, %124, %76, %60, %43, %23, %15
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.hx8357_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local i8* @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_8__*, i32, i32, i8*) #1

declare dso_local i64 @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(%struct.TYPE_8__*, i8*, %struct.TYPE_8__*, %struct.hx8357_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.lcd_device*) #1

declare dso_local i32 @hx8357_lcd_reset(%struct.lcd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
