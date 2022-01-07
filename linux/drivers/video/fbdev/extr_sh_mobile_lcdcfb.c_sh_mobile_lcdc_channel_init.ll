; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32 }
%struct.sh_mobile_lcdc_chan = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32*, i32, %struct.TYPE_10__, i32, %struct.sh_mobile_lcdc_format_info*, %struct.TYPE_8__*, %struct.sh_mobile_lcdc_chan_cfg* }
%struct.TYPE_13__ = type { %struct.fb_videomode, %struct.sh_mobile_lcdc_chan* }
%struct.TYPE_10__ = type { %struct.fb_videomode, i32, i32 }
%struct.sh_mobile_lcdc_format_info = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sh_mobile_lcdc_chan_cfg = type { i64, i32, %struct.TYPE_14__*, %struct.TYPE_9__, %struct.fb_videomode* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Invalid FOURCC %08x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV21 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"yres must be multiple of 2 for YCbCr420 mode.\0A\00", align 1
@MAX_XRES = common dso_local global i32 0, align 4
@MAX_YRES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Found largest videomode %ux%u\0A\00", align 1
@default_720p = common dso_local global %struct.fb_videomode zeroinitializer, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to allocate buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"unable to get transmitter device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_channel_init(%struct.sh_mobile_lcdc_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_format_info*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_chan_cfg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fb_videomode*, align 8
  %8 = alloca %struct.fb_videomode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %3, align 8
  %13 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %13, i32 0, i32 13
  %15 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %14, align 8
  store %struct.sh_mobile_lcdc_chan_cfg* %15, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %16 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %16, i32 0, i32 12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.sh_mobile_lcdc_format_info* @sh_mobile_format_info(i64 %23)
  store %struct.sh_mobile_lcdc_format_info* %24, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %25 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %26 = icmp eq %struct.sh_mobile_lcdc_format_info* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %271

35:                                               ; preds = %1
  store %struct.fb_videomode* null, %struct.fb_videomode** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %36 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %36, i32 0, i32 4
  %38 = load %struct.fb_videomode*, %struct.fb_videomode** %37, align 8
  store %struct.fb_videomode* %38, %struct.fb_videomode** %8, align 8
  br label %39

39:                                               ; preds = %83, %35
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %39
  %46 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %47 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %50 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul i32 %48, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %45
  %59 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_PIX_FMT_NV21, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58, %45
  %65 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %66 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %271

75:                                               ; preds = %64, %58
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  store %struct.fb_videomode* %80, %struct.fb_videomode** %7, align 8
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %87 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %86, i32 1
  store %struct.fb_videomode* %87, %struct.fb_videomode** %8, align 8
  br label %39

88:                                               ; preds = %39
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @MAX_XRES, align 4
  %93 = load i32, i32* @MAX_YRES, align 4
  %94 = mul i32 %92, %93
  store i32 %94, i32* %10, align 4
  br label %104

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %98 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %101 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %95, %91
  %105 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %106 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %105, i32 0, i32 4
  %107 = load %struct.fb_videomode*, %struct.fb_videomode** %106, align 8
  %108 = icmp eq %struct.fb_videomode* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store %struct.fb_videomode* @default_720p, %struct.fb_videomode** %8, align 8
  store i32 1, i32* %9, align 4
  br label %117

110:                                              ; preds = %104
  %111 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %112 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %111, i32 0, i32 4
  %113 = load %struct.fb_videomode*, %struct.fb_videomode** %112, align 8
  store %struct.fb_videomode* %113, %struct.fb_videomode** %8, align 8
  %114 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %115 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %110, %109
  %118 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %119 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %120 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %119, i32 0, i32 11
  store %struct.sh_mobile_lcdc_format_info* %118, %struct.sh_mobile_lcdc_format_info** %120, align 8
  %121 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %122 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %125 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %127 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %130 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %132 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %135 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %137 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = mul i32 %138, 2
  %140 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %141 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %143 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, %struct.sh_mobile_lcdc_format_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %117
  %147 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %148 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %149 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %148, i32 0, i32 10
  store i32 %147, i32* %149, align 4
  %150 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %151 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %154 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, %struct.sh_mobile_lcdc_format_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = mul i32 %152, %155
  %157 = udiv i32 %156, 8
  %158 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %159 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  br label %169

160:                                              ; preds = %117
  %161 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %162 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %163 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %162, i32 0, i32 10
  store i32 %161, i32* %163, align 4
  %164 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %165 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %168 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %160, %146
  %170 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %171 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %175 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %174, i32 0, i32 9
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  store i32 %173, i32* %176, align 4
  %177 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %178 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %182 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %181, i32 0, i32 9
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %185 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %184, i32 0, i32 9
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %188 = bitcast %struct.fb_videomode* %186 to i8*
  %189 = bitcast %struct.fb_videomode* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 8, i1 false)
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %192 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, %struct.sh_mobile_lcdc_format_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = mul i32 %190, %193
  %195 = udiv i32 %194, 8
  %196 = mul i32 %195, 2
  %197 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %198 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 4
  %199 = load %struct.device*, %struct.device** %6, align 8
  %200 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %201 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %204 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %203, i32 0, i32 8
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i32* @dma_alloc_coherent(%struct.device* %199, i32 %202, i32* %204, i32 %205)
  %207 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %208 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %207, i32 0, i32 7
  store i32* %206, i32** %208, align 8
  %209 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %210 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %209, i32 0, i32 7
  %211 = load i32*, i32** %210, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %169
  %214 = load %struct.device*, %struct.device** %6, align 8
  %215 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %271

218:                                              ; preds = %169
  %219 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %220 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %219, i32 0, i32 2
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = icmp ne %struct.TYPE_14__* %221, null
  br i1 %222, label %223, label %266

223:                                              ; preds = %218
  %224 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %225 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %224, i32 0, i32 2
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = icmp ne %struct.TYPE_11__* %229, null
  br i1 %230, label %231, label %242

231:                                              ; preds = %223
  %232 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %233 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %232, i32 0, i32 2
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @try_module_get(i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %231, %223
  %243 = load %struct.device*, %struct.device** %6, align 8
  %244 = call i32 @dev_warn(%struct.device* %243, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %2, align 4
  br label %271

247:                                              ; preds = %231
  %248 = load %struct.sh_mobile_lcdc_chan_cfg*, %struct.sh_mobile_lcdc_chan_cfg** %5, align 8
  %249 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, %struct.sh_mobile_lcdc_chan_cfg* %248, i32 0, i32 2
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = call %struct.TYPE_13__* @platform_get_drvdata(%struct.TYPE_14__* %250)
  %252 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %253 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %252, i32 0, i32 6
  store %struct.TYPE_13__* %251, %struct.TYPE_13__** %253, align 8
  %254 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %255 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %256 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %255, i32 0, i32 6
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  store %struct.sh_mobile_lcdc_chan* %254, %struct.sh_mobile_lcdc_chan** %258, align 8
  %259 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %260 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %259, i32 0, i32 6
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %264 = bitcast %struct.fb_videomode* %262 to i8*
  %265 = bitcast %struct.fb_videomode* %263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 4 %265, i64 8, i1 false)
  br label %266

266:                                              ; preds = %247, %218
  %267 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %268 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @sh_mobile_lcdc_channel_fb_init(%struct.sh_mobile_lcdc_chan* %267, %struct.fb_videomode* %268, i32 %269)
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %266, %242, %213, %70, %27
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local %struct.sh_mobile_lcdc_format_info* @sh_mobile_format_info(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_13__* @platform_get_drvdata(%struct.TYPE_14__*) #1

declare dso_local i32 @sh_mobile_lcdc_channel_fb_init(%struct.sh_mobile_lcdc_chan*, %struct.fb_videomode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
