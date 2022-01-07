; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_probe_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_probe_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_fb = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.fb_videomode*, %struct.s3c_fb_pd_win** }
%struct.fb_videomode = type { i64, i64 }
%struct.s3c_fb_pd_win = type { i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.s3c_fb_win_variant = type { i32, i64 }
%struct.s3c_fb_win = type { i32, %struct.s3c_fb_win_variant, i32, %struct.TYPE_13__, i32*, %struct.s3c_fb_pd_win*, %struct.s3c_fb*, %struct.fb_info* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_14__, i32, %struct.fb_var_screeninfo, i32*, i32, i32*, %struct.s3c_fb_win* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"probing window %d, variant %p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to allocate display memory\0A\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@s3c_fb_ops = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"check_var failed on initial video params\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to allocate fb cmap\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"about to register framebuffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to register framebuffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"window %d: fb %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_fb*, i32, %struct.s3c_fb_win_variant*, %struct.s3c_fb_win**)* @s3c_fb_probe_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_fb_probe_win(%struct.s3c_fb* %0, i32 %1, %struct.s3c_fb_win_variant* %2, %struct.s3c_fb_win** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3c_fb_win_variant*, align 8
  %9 = alloca %struct.s3c_fb_win**, align 8
  %10 = alloca %struct.fb_var_screeninfo*, align 8
  %11 = alloca %struct.fb_videomode, align 8
  %12 = alloca %struct.s3c_fb_pd_win*, align 8
  %13 = alloca %struct.s3c_fb_win*, align 8
  %14 = alloca %struct.fb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.s3c_fb* %0, %struct.s3c_fb** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.s3c_fb_win_variant* %2, %struct.s3c_fb_win_variant** %8, align 8
  store %struct.s3c_fb_win** %3, %struct.s3c_fb_win*** %9, align 8
  %17 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %18 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.s3c_fb_win_variant*, %struct.s3c_fb_win_variant** %8, align 8
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.s3c_fb_win_variant* %21)
  %23 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %24 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.s3c_fb_win_variant*, %struct.s3c_fb_win_variant** %8, align 8
  %28 = getelementptr inbounds %struct.s3c_fb_win_variant, %struct.s3c_fb_win_variant* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = add i64 96, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %37 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.fb_info* @framebuffer_alloc(i32 %35, i32 %38)
  store %struct.fb_info* %39, %struct.fb_info** %14, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %41 = icmp ne %struct.fb_info* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %278

45:                                               ; preds = %4
  %46 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %47 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.s3c_fb_pd_win**, %struct.s3c_fb_pd_win*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %50, i64 %52
  %54 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %53, align 8
  store %struct.s3c_fb_pd_win* %54, %struct.s3c_fb_pd_win** %12, align 8
  %55 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %56 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.fb_videomode*, %struct.fb_videomode** %58, align 8
  %60 = bitcast %struct.fb_videomode* %11 to i8*
  %61 = bitcast %struct.fb_videomode* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %12, align 8
  %63 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %12, align 8
  %69 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %12, align 8
  %75 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @WARN_ON(i32 %78)
  %80 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 6
  %82 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %81, align 8
  store %struct.s3c_fb_win* %82, %struct.s3c_fb_win** %13, align 8
  %83 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %84 = load %struct.s3c_fb_win**, %struct.s3c_fb_win*** %9, align 8
  store %struct.s3c_fb_win* %83, %struct.s3c_fb_win** %84, align 8
  %85 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 2
  store %struct.fb_var_screeninfo* %86, %struct.fb_var_screeninfo** %10, align 8
  %87 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %88 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %87, i32 0, i32 1
  %89 = load %struct.s3c_fb_win_variant*, %struct.s3c_fb_win_variant** %8, align 8
  %90 = bitcast %struct.s3c_fb_win_variant* %88 to i8*
  %91 = bitcast %struct.s3c_fb_win_variant* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %93 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %94 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %93, i32 0, i32 7
  store %struct.fb_info* %92, %struct.fb_info** %94, align 8
  %95 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %96 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %97 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %96, i32 0, i32 6
  store %struct.s3c_fb* %95, %struct.s3c_fb** %97, align 8
  %98 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %12, align 8
  %99 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %100 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %99, i32 0, i32 5
  store %struct.s3c_fb_pd_win* %98, %struct.s3c_fb_pd_win** %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %103 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %105 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %104, i64 1
  %106 = bitcast %struct.s3c_fb_win* %105 to i32*
  %107 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %108 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %107, i32 0, i32 4
  store i32* %106, i32** %108, align 8
  %109 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %110 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %111 = call i32 @s3c_fb_alloc_memory(%struct.s3c_fb* %109, %struct.s3c_fb_win* %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %45
  %115 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %116 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %5, align 4
  br label %278

120:                                              ; preds = %45
  %121 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %122 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.s3c_fb_win_variant, %struct.s3c_fb_win_variant* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %120
  %127 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %128 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i32 11, i32* %130, align 8
  %131 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %132 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  store i32 5, i32* %134, align 4
  %135 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %136 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32 5, i32* %138, align 8
  %139 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %140 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i32 6, i32* %142, align 4
  %143 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %144 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %148 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i32 5, i32* %150, align 8
  br label %176

151:                                              ; preds = %120
  %152 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %153 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 16, i32* %155, align 8
  %156 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %157 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  store i32 8, i32* %159, align 4
  %160 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %161 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 8, i32* %163, align 8
  %164 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %165 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  store i32 8, i32* %167, align 4
  %168 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %169 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  %172 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %173 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store i32 8, i32* %175, align 8
  br label %176

176:                                              ; preds = %151, %126
  %177 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %12, align 8
  %178 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %11, i32 0, i32 0
  store i64 %179, i64* %180, align 8
  %181 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %12, align 8
  %182 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %11, i32 0, i32 1
  store i64 %183, i64* %184, align 8
  %185 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %186 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %185, i32 0, i32 2
  %187 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %186, %struct.fb_videomode* %11)
  %188 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %189 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %190 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 8
  %192 = load i32, i32* @FB_ACCEL_NONE, align 4
  %193 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %197 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %198 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 2
  store i32 %196, i32* %199, align 8
  %200 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %201 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %202 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 1
  store i32 %200, i32* %203, align 4
  %204 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %12, align 8
  %205 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %208 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %211 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %210, i32 0, i32 5
  store i32* @s3c_fb_ops, i32** %211, align 8
  %212 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %213 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %214 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %216 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %215, i32 0, i32 2
  %217 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %218 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %217, i32 0, i32 3
  store i32* %216, i32** %218, align 8
  %219 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %220 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %219, i32 0, i32 2
  %221 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %222 = call i32 @s3c_fb_check_var(%struct.fb_var_screeninfo* %220, %struct.fb_info* %221)
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %176
  %226 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %227 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @dev_err(i32 %228, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %230 = load i32, i32* %16, align 4
  store i32 %230, i32* %5, align 4
  br label %278

231:                                              ; preds = %176
  %232 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %233 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %232, i32 0, i32 1
  %234 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %13, align 8
  %235 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.s3c_fb_win_variant, %struct.s3c_fb_win_variant* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @fb_alloc_cmap(i32* %233, i32 %237, i32 1)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* %16, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %231
  %242 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %243 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %242, i32 0, i32 1
  %244 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %245 = call i32 @fb_set_cmap(i32* %243, %struct.fb_info* %244)
  br label %251

246:                                              ; preds = %231
  %247 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %248 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @dev_err(i32 %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %251

251:                                              ; preds = %246, %241
  %252 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %253 = call i32 @s3c_fb_set_par(%struct.fb_info* %252)
  %254 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %255 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 (i32, i8*, ...) @dev_dbg(i32 %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %258 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %259 = call i32 @register_framebuffer(%struct.fb_info* %258)
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* %16, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %251
  %263 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %264 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @dev_err(i32 %265, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %267 = load i32, i32* %16, align 4
  store i32 %267, i32* %5, align 4
  br label %278

268:                                              ; preds = %251
  %269 = load %struct.s3c_fb*, %struct.s3c_fb** %6, align 8
  %270 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  %274 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @dev_info(i32 %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %272, i32 %276)
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %268, %262, %225, %114, %42
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @s3c_fb_alloc_memory(%struct.s3c_fb*, %struct.s3c_fb_win*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

declare dso_local i32 @s3c_fb_check_var(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @fb_set_cmap(i32*, %struct.fb_info*) #1

declare dso_local i32 @s3c_fb_set_par(%struct.fb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
