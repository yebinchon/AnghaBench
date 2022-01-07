; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_framebuffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_framebuffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.device*, i32, %struct.fbtft_par*, %struct.TYPE_21__, %struct.TYPE_16__, %struct.fb_deferred_io*, %struct.fb_ops*, i32* }
%struct.fbtft_par = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.fb_info*, %struct.TYPE_22__, i32, i32*, i32, i32, i32, i8*, i64, %struct.fbtft_platform_data* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32, i32, i32*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.fb_deferred_io = type { i32, i32 }
%struct.fb_ops = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fbtft_display = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32* }
%struct.device = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.fbtft_platform_data = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i64, i64, i32* }

@FBTFT_GAMMA_MAX_VALUES_TOTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"FBTFT_GAMMA_MAX_VALUES_TOTAL=%d is exceeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"platform data is missing\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@fb_sys_read = common dso_local global i32 0, align 4
@fbtft_fb_write = common dso_local global i32 0, align 4
@fbtft_fb_fillrect = common dso_local global i32 0, align 4
@fbtft_fb_copyarea = common dso_local global i32 0, align 4
@fbtft_fb_imageblit = common dso_local global i32 0, align 4
@fbtft_fb_setcolreg = common dso_local global i32 0, align 4
@fbtft_fb_blank = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@fbtft_deferred_io = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_VIRTFB = common dso_local global i32 0, align 4
@fbtft_write_spi = common dso_local global i32 0, align 4
@fbtft_read_spi = common dso_local global i32 0, align 4
@fbtft_write_vmem16_bus8 = common dso_local global i32 0, align 4
@fbtft_write_reg8_bus8 = common dso_local global i32 0, align 4
@fbtft_set_addr_win = common dso_local global i32 0, align 4
@fbtft_reset = common dso_local global i32 0, align 4
@fbtft_mkdirty = common dso_local global i32 0, align 4
@fbtft_update_display = common dso_local global i32 0, align 4
@fbtft_register_backlight = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fb_info* @fbtft_framebuffer_alloc(%struct.fbtft_display* %0, %struct.device* %1, %struct.fbtft_platform_data* %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fbtft_display*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fbtft_platform_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.fbtft_par*, align 8
  %10 = alloca %struct.fb_ops*, align 8
  %11 = alloca %struct.fb_deferred_io*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store %struct.fbtft_display* %0, %struct.fbtft_display** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.fbtft_platform_data* %2, %struct.fbtft_platform_data** %7, align 8
  store %struct.fb_ops* null, %struct.fb_ops** %10, align 8
  store %struct.fb_deferred_io* null, %struct.fb_deferred_io** %11, align 8
  store i32* null, i32** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %24 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %25 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %28 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %31 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %19, align 4
  %33 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %34 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %33, i32 0, i32 13
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %21, align 8
  %36 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %37 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %22, align 8
  store i32* null, i32** %23, align 8
  %39 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %40 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %43 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load i32, i32* @FBTFT_GAMMA_MAX_VALUES_TOTAL, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %3
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* @FBTFT_GAMMA_MAX_VALUES_TOTAL, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %50)
  store %struct.fb_info* null, %struct.fb_info** %4, align 8
  br label %610

52:                                               ; preds = %3
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 20, i32* %19, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 16, i32* %18, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %62 = icmp ne %struct.fbtft_platform_data* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fb_info* null, %struct.fb_info** %4, align 8
  br label %610

66:                                               ; preds = %60
  %67 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %68 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %73 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %77 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %82 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %86 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %92 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %21, align 8
  br label %95

95:                                               ; preds = %90, %84
  %96 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %97 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %102 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %22, align 8
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %106 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %112 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %116 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %115, i32 0, i32 10
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %119 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %125 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %129 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %128, i32 0, i32 9
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %123, %117
  %131 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %132 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %138 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %142 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %136, %130
  %144 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %145 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %151 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %155 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %143
  %157 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %158 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %164 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %168 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %167, i32 0, i32 12
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %162, %156
  %170 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %171 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %177 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %181 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %180, i32 0, i32 11
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %175, %169
  %183 = load i64, i64* @debug, align 8
  %184 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %185 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %184, i32 0, i32 10
  %186 = load i64, i64* %185, align 8
  %187 = or i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %189 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %188, i32 0, i32 10
  %190 = call i32 @fbtft_expand_debug_value(i64* %189)
  %191 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %192 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %201 [
    i32 90, label %194
    i32 270, label %194
  ]

194:                                              ; preds = %182, %182
  %195 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %196 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %15, align 4
  %198 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %199 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %16, align 4
  br label %208

201:                                              ; preds = %182
  %202 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %203 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %15, align 4
  %205 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %206 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %16, align 4
  br label %208

208:                                              ; preds = %201, %194
  %209 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %210 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %213 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = mul i32 %211, %214
  %216 = load i32, i32* %18, align 4
  %217 = mul i32 %215, %216
  %218 = udiv i32 %217, 8
  store i32 %218, i32* %20, align 4
  %219 = load i32, i32* %20, align 4
  %220 = call i32* @vzalloc(i32 %219)
  store i32* %220, i32** %12, align 8
  %221 = load i32*, i32** %12, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %208
  br label %607

224:                                              ; preds = %208
  %225 = load %struct.device*, %struct.device** %6, align 8
  %226 = load i32, i32* @GFP_KERNEL, align 4
  %227 = call i8* @devm_kzalloc(%struct.device* %225, i32 32, i32 %226)
  %228 = bitcast i8* %227 to %struct.fb_ops*
  store %struct.fb_ops* %228, %struct.fb_ops** %10, align 8
  %229 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %230 = icmp ne %struct.fb_ops* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %224
  br label %607

232:                                              ; preds = %224
  %233 = load %struct.device*, %struct.device** %6, align 8
  %234 = load i32, i32* @GFP_KERNEL, align 4
  %235 = call i8* @devm_kzalloc(%struct.device* %233, i32 8, i32 %234)
  %236 = bitcast i8* %235 to %struct.fb_deferred_io*
  store %struct.fb_deferred_io* %236, %struct.fb_deferred_io** %11, align 8
  %237 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %11, align 8
  %238 = icmp ne %struct.fb_deferred_io* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %232
  br label %607

240:                                              ; preds = %232
  %241 = load %struct.device*, %struct.device** %6, align 8
  %242 = load i32, i32* @GFP_KERNEL, align 4
  %243 = call i8* @devm_kzalloc(%struct.device* %241, i32 128, i32 %242)
  store i8* %243, i8** %14, align 8
  %244 = load i8*, i8** %14, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %240
  br label %607

247:                                              ; preds = %240
  %248 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %249 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %272

252:                                              ; preds = %247
  %253 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %254 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %252
  %258 = load %struct.device*, %struct.device** %6, align 8
  %259 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %260 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %263 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %261, %264
  %266 = load i32, i32* @GFP_KERNEL, align 4
  %267 = call i32* @devm_kcalloc(%struct.device* %258, i32 %265, i32 4, i32 %266)
  store i32* %267, i32** %23, align 8
  %268 = load i32*, i32** %23, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %257
  br label %607

271:                                              ; preds = %257
  br label %272

272:                                              ; preds = %271, %252, %247
  %273 = load %struct.device*, %struct.device** %6, align 8
  %274 = call %struct.fb_info* @framebuffer_alloc(i32 144, %struct.device* %273)
  store %struct.fb_info* %274, %struct.fb_info** %8, align 8
  %275 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %276 = icmp ne %struct.fb_info* %275, null
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  br label %607

278:                                              ; preds = %272
  %279 = load i32*, i32** %12, align 8
  %280 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %281 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %280, i32 0, i32 8
  store i32* %279, i32** %281, align 8
  %282 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %283 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %284 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %283, i32 0, i32 7
  store %struct.fb_ops* %282, %struct.fb_ops** %284, align 8
  %285 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %11, align 8
  %286 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %287 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %286, i32 0, i32 6
  store %struct.fb_deferred_io* %285, %struct.fb_deferred_io** %287, align 8
  %288 = load %struct.device*, %struct.device** %6, align 8
  %289 = getelementptr inbounds %struct.device, %struct.device* %288, i32 0, i32 0
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %294 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %293, i32 0, i32 7
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* @fb_sys_read, align 4
  %296 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %297 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %296, i32 0, i32 6
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* @fbtft_fb_write, align 4
  %299 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %300 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %299, i32 0, i32 5
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* @fbtft_fb_fillrect, align 4
  %302 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %303 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %302, i32 0, i32 4
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* @fbtft_fb_copyarea, align 4
  %305 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %306 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* @fbtft_fb_imageblit, align 4
  %308 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %309 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* @fbtft_fb_setcolreg, align 4
  %311 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %312 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* @fbtft_fb_blank, align 4
  %314 = load %struct.fb_ops*, %struct.fb_ops** %10, align 8
  %315 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* @HZ, align 4
  %317 = load i32, i32* %19, align 4
  %318 = udiv i32 %316, %317
  %319 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %11, align 8
  %320 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 4
  %321 = load i32, i32* @fbtft_deferred_io, align 4
  %322 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %11, align 8
  %323 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  %324 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %325 = call i32 @fb_deferred_io_init(%struct.fb_info* %324)
  %326 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %327 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %326, i32 0, i32 5
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.device*, %struct.device** %6, align 8
  %331 = getelementptr inbounds %struct.device, %struct.device* %330, i32 0, i32 0
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @strncpy(i32 %329, i32 %334, i32 16)
  %336 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %337 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %338 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %337, i32 0, i32 5
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 7
  store i32 %336, i32* %339, align 4
  %340 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %341 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %342 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 6
  store i32 %340, i32* %343, align 8
  %344 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %345 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %344, i32 0, i32 5
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 5
  store i64 0, i64* %346, align 8
  %347 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %348 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %347, i32 0, i32 5
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 4
  store i64 0, i64* %349, align 8
  %350 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %351 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 3
  store i64 0, i64* %352, align 8
  %353 = load i32, i32* %15, align 4
  %354 = load i32, i32* %18, align 4
  %355 = mul i32 %353, %354
  %356 = udiv i32 %355, 8
  %357 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %358 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 0
  store i32 %356, i32* %359, align 8
  %360 = load i32, i32* @FB_ACCEL_NONE, align 4
  %361 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %362 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 2
  store i32 %360, i32* %363, align 8
  %364 = load i32, i32* %20, align 4
  %365 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %366 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 1
  store i32 %364, i32* %367, align 4
  %368 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %369 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %372 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %371, i32 0, i32 4
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 0
  store i32 %370, i32* %373, align 8
  %374 = load i32, i32* %15, align 4
  %375 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %376 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i32 0, i32 1
  store i32 %374, i32* %377, align 4
  %378 = load i32, i32* %16, align 4
  %379 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %380 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %379, i32 0, i32 4
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 2
  store i32 %378, i32* %381, align 8
  %382 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %383 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %387 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %386, i32 0, i32 4
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 3
  store i32 %385, i32* %388, align 4
  %389 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %390 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %389, i32 0, i32 4
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %394 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %393, i32 0, i32 4
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 4
  store i32 %392, i32* %395, align 8
  %396 = load i32, i32* %18, align 4
  %397 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %398 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %398, i32 0, i32 5
  store i32 %396, i32* %399, align 4
  %400 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %401 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %400, i32 0, i32 4
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 6
  store i32 1, i32* %402, align 8
  %403 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %404 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %403, i32 0, i32 4
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 10
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 0
  store i32 11, i32* %406, align 8
  %407 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %408 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 10
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 1
  store i32 5, i32* %410, align 4
  %411 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %412 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %411, i32 0, i32 4
  %413 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %412, i32 0, i32 9
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 0
  store i32 5, i32* %414, align 8
  %415 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %416 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %415, i32 0, i32 4
  %417 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i32 0, i32 9
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 1
  store i32 6, i32* %418, align 4
  %419 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %420 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %419, i32 0, i32 4
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 1
  store i64 0, i64* %422, align 8
  %423 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %424 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i32 0, i32 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 0
  store i32 5, i32* %426, align 8
  %427 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %428 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %427, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 7
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 1
  store i64 0, i64* %430, align 8
  %431 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %432 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %431, i32 0, i32 4
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %432, i32 0, i32 7
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 0
  store i64 0, i64* %434, align 8
  %435 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %436 = load i32, i32* @FBINFO_VIRTFB, align 4
  %437 = or i32 %435, %436
  %438 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %439 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  %440 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %441 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %440, i32 0, i32 3
  %442 = load %struct.fbtft_par*, %struct.fbtft_par** %441, align 8
  store %struct.fbtft_par* %442, %struct.fbtft_par** %9, align 8
  %443 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %444 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %445 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %444, i32 0, i32 2
  store %struct.fb_info* %443, %struct.fb_info** %445, align 8
  %446 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %447 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %448 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %447, i32 0, i32 11
  store %struct.fbtft_platform_data* %446, %struct.fbtft_platform_data** %448, align 8
  %449 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %450 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %449, i32 0, i32 10
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %453 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %452, i32 0, i32 10
  store i64 %451, i64* %453, align 8
  %454 = load i8*, i8** %14, align 8
  %455 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %456 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %455, i32 0, i32 9
  store i8* %454, i8** %456, align 8
  %457 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %458 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %457, i32 0, i32 8
  %459 = call i32 @spin_lock_init(i32* %458)
  %460 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %461 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %464 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %463, i32 0, i32 7
  store i32 %462, i32* %464, align 4
  %465 = load %struct.fbtft_platform_data*, %struct.fbtft_platform_data** %7, align 8
  %466 = getelementptr inbounds %struct.fbtft_platform_data, %struct.fbtft_platform_data* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %469 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %468, i32 0, i32 6
  store i32 %467, i32* %469, align 8
  %470 = load i32*, i32** %21, align 8
  %471 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %472 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %471, i32 0, i32 5
  store i32* %470, i32** %472, align 8
  %473 = load i32*, i32** %23, align 8
  %474 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %475 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %475, i32 0, i32 2
  store i32* %473, i32** %476, align 8
  %477 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %478 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %477, i32 0, i32 4
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %481 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %481, i32 0, i32 0
  store i32 %479, i32* %482, align 8
  %483 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %484 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %483, i32 0, i32 5
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %487 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %486, i32 0, i32 3
  %488 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %487, i32 0, i32 1
  store i32 %485, i32* %488, align 4
  %489 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %490 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %489, i32 0, i32 3
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 3
  %492 = call i32 @mutex_init(i32* %491)
  %493 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %494 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %493, i32 0, i32 4
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %497 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %496, i32 0, i32 2
  store i32 %495, i32* %497, align 8
  %498 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %499 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %498, i32 0, i32 3
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = icmp ne i32* %501, null
  br i1 %502, label %503, label %519

503:                                              ; preds = %278
  %504 = load i8*, i8** %22, align 8
  %505 = icmp ne i8* %504, null
  br i1 %505, label %506, label %519

506:                                              ; preds = %503
  %507 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %508 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %509 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %508, i32 0, i32 3
  %510 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %509, i32 0, i32 2
  %511 = load i32*, i32** %510, align 8
  %512 = load i8*, i8** %22, align 8
  %513 = load i8*, i8** %22, align 8
  %514 = call i32 @strlen(i8* %513)
  %515 = call i64 @fbtft_gamma_parse_str(%struct.fbtft_par* %507, i32* %511, i8* %512, i32 %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %506
  br label %604

518:                                              ; preds = %506
  br label %519

519:                                              ; preds = %518, %503, %278
  %520 = load i32, i32* %17, align 4
  %521 = icmp eq i32 %520, -1
  br i1 %521, label %522, label %525

522:                                              ; preds = %519
  %523 = load i32, i32* %20, align 4
  %524 = add nsw i32 %523, 2
  store i32 %524, i32* %17, align 4
  br label %525

525:                                              ; preds = %522, %519
  %526 = load i32, i32* %17, align 4
  %527 = load i32, i32* %20, align 4
  %528 = add nsw i32 %527, 2
  %529 = icmp sge i32 %526, %528
  br i1 %529, label %530, label %531

530:                                              ; preds = %525
  store i32 0, i32* %17, align 4
  br label %531

531:                                              ; preds = %530, %525
  %532 = load i32, i32* %17, align 4
  %533 = icmp sgt i32 %532, 0
  br i1 %533, label %534, label %555

534:                                              ; preds = %531
  %535 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %536 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %535, i32 0, i32 2
  %537 = load %struct.fb_info*, %struct.fb_info** %536, align 8
  %538 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %537, i32 0, i32 1
  %539 = load %struct.device*, %struct.device** %538, align 8
  %540 = load i32, i32* %17, align 4
  %541 = load i32, i32* @GFP_KERNEL, align 4
  %542 = call i8* @devm_kzalloc(%struct.device* %539, i32 %540, i32 %541)
  store i8* %542, i8** %13, align 8
  %543 = load i8*, i8** %13, align 8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %546, label %545

545:                                              ; preds = %534
  br label %604

546:                                              ; preds = %534
  %547 = load i8*, i8** %13, align 8
  %548 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %549 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %548, i32 0, i32 1
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %549, i32 0, i32 1
  store i8* %547, i8** %550, align 8
  %551 = load i32, i32* %17, align 4
  %552 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %553 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %553, i32 0, i32 0
  store i32 %551, i32* %554, align 8
  br label %555

555:                                              ; preds = %546, %531
  %556 = load i32, i32* @fbtft_write_spi, align 4
  %557 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %558 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %558, i32 0, i32 8
  store i32 %556, i32* %559, align 8
  %560 = load i32, i32* @fbtft_read_spi, align 4
  %561 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %562 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %562, i32 0, i32 7
  store i32 %560, i32* %563, align 4
  %564 = load i32, i32* @fbtft_write_vmem16_bus8, align 4
  %565 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %566 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 6
  store i32 %564, i32* %567, align 8
  %568 = load i32, i32* @fbtft_write_reg8_bus8, align 4
  %569 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %570 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %570, i32 0, i32 5
  store i32 %568, i32* %571, align 4
  %572 = load i32, i32* @fbtft_set_addr_win, align 4
  %573 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %574 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %574, i32 0, i32 4
  store i32 %572, i32* %575, align 8
  %576 = load i32, i32* @fbtft_reset, align 4
  %577 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %578 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %578, i32 0, i32 3
  store i32 %576, i32* %579, align 4
  %580 = load i32, i32* @fbtft_mkdirty, align 4
  %581 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %582 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 2
  store i32 %580, i32* %583, align 8
  %584 = load i32, i32* @fbtft_update_display, align 4
  %585 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %586 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %586, i32 0, i32 1
  store i32 %584, i32* %587, align 4
  %588 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %589 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %588, i32 0, i32 9
  %590 = load i64, i64* %589, align 8
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %597

592:                                              ; preds = %555
  %593 = load i32, i32* @fbtft_register_backlight, align 4
  %594 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %595 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %595, i32 0, i32 0
  store i32 %593, i32* %596, align 8
  br label %597

597:                                              ; preds = %592, %555
  %598 = load %struct.fbtft_par*, %struct.fbtft_par** %9, align 8
  %599 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %598, i32 0, i32 0
  %600 = load %struct.fbtft_display*, %struct.fbtft_display** %5, align 8
  %601 = getelementptr inbounds %struct.fbtft_display, %struct.fbtft_display* %600, i32 0, i32 8
  %602 = call i32 @fbtft_merge_fbtftops(%struct.TYPE_13__* %599, i32* %601)
  %603 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  store %struct.fb_info* %603, %struct.fb_info** %4, align 8
  br label %610

604:                                              ; preds = %545, %517
  %605 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %606 = call i32 @framebuffer_release(%struct.fb_info* %605)
  br label %607

607:                                              ; preds = %604, %277, %270, %246, %239, %231, %223
  %608 = load i32*, i32** %12, align 8
  %609 = call i32 @vfree(i32* %608)
  store %struct.fb_info* null, %struct.fb_info** %4, align 8
  br label %610

610:                                              ; preds = %607, %597, %63, %48
  %611 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  ret %struct.fb_info* %611
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @fbtft_expand_debug_value(i64*) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #1

declare dso_local i32 @fb_deferred_io_init(%struct.fb_info*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @fbtft_gamma_parse_str(%struct.fbtft_par*, i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fbtft_merge_fbtftops(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
