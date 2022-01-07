; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_init_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_init_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_14__, %struct.TYPE_15__*, i32, %struct.TYPE_16__, i32, %struct.TYPE_13__, %struct.sm501fb_par* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_14__*, %struct.fb_info.0*)*, i32* }
%struct.fb_info.0 = type opaque
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.sm501fb_par = type { %struct.TYPE_15__, %struct.sm501fb_info* }
%struct.sm501fb_info = type { %struct.TYPE_17__*, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub* }
%struct.sm501_platdata_fbsub = type { i32, i32, i64 }

@SM501_DC_CRT_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_ENABLE = common dso_local global i64 0, align 8
@SM501_FB_CRT_PANEL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_SEL = common dso_local global i64 0, align 8
@SM501_DC_PANEL_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_PANEL_CONTROL_EN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"fb %s %sabled at start\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@sm501fb_ops_crt = common dso_local global i32 0, align 4
@sm501fb_ops_pnl = common dso_local global i32 0, align 4
@SM501FB_FLAG_USE_HWCURSOR = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_READS_FAST = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@SM501FB_FLAG_USE_INIT_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"using supplied mode\0A\00", align 1
@fb_mode = common dso_local global i32* null, align 8
@sm501_default_mode = common dso_local global i32 0, align 4
@default_bpp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"using mode specified in @mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"using mode specified in @mode with ignored refresh rate\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"using mode default mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"using mode from list\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"failed to find mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NR_PALETTE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"failed to allocate cmap memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"check_var() failed on initial setup?\0A\00", align 1
@FBINFO_FOREIGN_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i8*)* @sm501fb_init_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_init_fb(%struct.fb_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sm501_platdata_fbsub*, align 8
  %9 = alloca %struct.sm501fb_par*, align 8
  %10 = alloca %struct.sm501fb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 7
  %16 = load %struct.sm501fb_par*, %struct.sm501fb_par** %15, align 8
  store %struct.sm501fb_par* %16, %struct.sm501fb_par** %9, align 8
  %17 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %18 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %17, i32 0, i32 1
  %19 = load %struct.sm501fb_info*, %struct.sm501fb_info** %18, align 8
  store %struct.sm501fb_info* %19, %struct.sm501fb_info** %10, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %76 [
    i32 129, label %21
    i32 128, label %58
  ]

21:                                               ; preds = %3
  %22 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %23 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %25, align 8
  store %struct.sm501_platdata_fbsub* %26, %struct.sm501_platdata_fbsub** %8, align 8
  %27 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %28 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @smc501_readl(i64 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @SM501_DC_CRT_CONTROL_ENABLE, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %12, align 4
  %39 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %40 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SM501_FB_CRT_PANEL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %21
  %47 = load i64, i64* @SM501_DC_CRT_CONTROL_SEL, align 8
  %48 = load i64, i64* %11, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %52 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @smc501_writel(i64 %50, i64 %55)
  br label %57

57:                                               ; preds = %46, %21
  br label %78

58:                                               ; preds = %3
  %59 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %60 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %62, align 8
  store %struct.sm501_platdata_fbsub* %63, %struct.sm501_platdata_fbsub** %8, align 8
  %64 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %65 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SM501_DC_PANEL_CONTROL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i64 @smc501_readl(i64 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @SM501_DC_PANEL_CONTROL_EN, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  store i32 %75, i32* %12, align 4
  br label %78

76:                                               ; preds = %3
  store %struct.sm501_platdata_fbsub* null, %struct.sm501_platdata_fbsub** %8, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %77 = call i32 (...) @BUG()
  br label %78

78:                                               ; preds = %76, %58, %57
  %79 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %80 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %87 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %82, i8* %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %90, label %110

90:                                               ; preds = %78
  %91 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %92 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SM501_FB_CRT_PANEL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load i64, i64* @SM501_DC_CRT_CONTROL_SEL, align 8
  %100 = xor i64 %99, -1
  %101 = load i64, i64* %11, align 8
  %102 = and i64 %101, %100
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %105 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @smc501_writel(i64 %103, i64 %108)
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %98, %90, %78
  %111 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @strlcpy(i32 %114, i8* %115, i32 4)
  %117 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %118 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 129
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32* @sm501fb_ops_crt, i32* @sm501fb_ops_pnl
  %123 = call i32 @memcpy(%struct.TYPE_15__* %118, i32* %122, i32 4)
  %124 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %125 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SM501FB_FLAG_USE_HWCURSOR, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %110
  %131 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %132 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %130, %110
  %135 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %136 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %135, i32 0, i32 0
  %137 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 2
  store %struct.TYPE_15__* %136, %struct.TYPE_15__** %138, align 8
  %139 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %140 = load i32, i32* @FBINFO_READS_FAST, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %153 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %154 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 5
  store i32 %152, i32* %155, align 8
  %156 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %157 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %163 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  %165 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %166 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* @FB_ACCEL_NONE, align 4
  %169 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %170 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  %172 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 8
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %176 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 7
  store i32 %175, i32* %178, align 8
  %179 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 6
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %183 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 5
  store i32 %182, i32* %185, align 4
  %186 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  store i32 16, i32* %188, align 8
  %189 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %190 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %134
  %194 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %195 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %198 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %197, i32 0, i32 4
  %199 = call i32 @fb_edid_to_monspecs(i64 %196, %struct.TYPE_16__* %198)
  %200 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %201 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %205 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %209 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %208, i32 0, i32 5
  %210 = call i32 @fb_videomode_to_modelist(i32* %203, i32 %207, i32* %209)
  br label %211

211:                                              ; preds = %193, %134
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %211
  %215 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %216 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @SM501FB_FLAG_USE_INIT_MODE, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  br i1 false, label %222, label %223

222:                                              ; preds = %221
  br label %332

223:                                              ; preds = %221, %214, %211
  %224 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %225 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %267

228:                                              ; preds = %223
  %229 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %230 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %229, i32 0, i32 0
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %230, align 8
  %232 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %233 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %234 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %233, i32 0, i32 1
  %235 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %236 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @fb_videomode_to_var(%struct.TYPE_14__* %234, i64 %237)
  %239 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %240 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %228
  %244 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %245 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  br label %248

247:                                              ; preds = %228
  br label %248

248:                                              ; preds = %247, %243
  %249 = phi i32 [ %246, %243 ], [ 8, %247 ]
  %250 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %251 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  store i32 %249, i32* %252, align 8
  %253 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %254 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %258 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 4
  store i32 %256, i32* %259, align 8
  %260 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %261 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %265 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 2
  store i32 %263, i32* %266, align 8
  br label %331

267:                                              ; preds = %223
  %268 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %269 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %291

272:                                              ; preds = %267
  %273 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %274 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %273, i32 0, i32 1
  %275 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %276 = load i32*, i32** @fb_mode, align 8
  %277 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %278 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %282 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @default_bpp, align 4
  %286 = call i32 @fb_find_mode(%struct.TYPE_14__* %274, %struct.fb_info* %275, i32* %276, i32* %280, i32 %284, i32* @sm501_default_mode, i32 %285)
  store i32 %286, i32* %13, align 4
  %287 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %288 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @kfree(i64 %289)
  br label %296

291:                                              ; preds = %267
  %292 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %293 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %292, i32 0, i32 1
  %294 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %295 = call i32 @fb_find_mode(%struct.TYPE_14__* %293, %struct.fb_info* %294, i32* null, i32* null, i32 0, i32* null, i32 8)
  store i32 %295, i32* %13, align 4
  br label %296

296:                                              ; preds = %291, %272
  %297 = load i32, i32* %13, align 4
  switch i32 %297, label %318 [
    i32 1, label %298
    i32 2, label %303
    i32 3, label %308
    i32 4, label %313
  ]

298:                                              ; preds = %296
  %299 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %300 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %299, i32 0, i32 0
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %300, align 8
  %302 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %301, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %330

303:                                              ; preds = %296
  %304 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %305 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %304, i32 0, i32 0
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %305, align 8
  %307 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %306, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %330

308:                                              ; preds = %296
  %309 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %310 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %309, i32 0, i32 0
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %310, align 8
  %312 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %311, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %330

313:                                              ; preds = %296
  %314 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %315 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %314, i32 0, i32 0
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %315, align 8
  %317 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %316, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %330

318:                                              ; preds = %296
  %319 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %320 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %319, i32 0, i32 0
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %320, align 8
  %322 = load i32, i32* %13, align 4
  %323 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %321, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %322)
  %324 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %325 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %324, i32 0, i32 0
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %325, align 8
  %327 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_info(%struct.TYPE_17__* %326, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %4, align 4
  br label %368

330:                                              ; preds = %313, %308, %303, %298
  br label %331

331:                                              ; preds = %330, %248
  br label %332

332:                                              ; preds = %331, %222
  %333 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %334 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %333, i32 0, i32 3
  %335 = load i32, i32* @NR_PALETTE, align 4
  %336 = call i64 @fb_alloc_cmap(i32* %334, i32 %335, i32 0)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %332
  %339 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %340 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %339, i32 0, i32 0
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %340, align 8
  %342 = call i32 @dev_err(%struct.TYPE_17__* %341, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %343 = load i32, i32* @ENOMEM, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %4, align 4
  br label %368

345:                                              ; preds = %332
  %346 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %347 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %346, i32 0, i32 3
  %348 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %349 = call i32 @fb_set_cmap(i32* %347, %struct.fb_info* %348)
  %350 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %351 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %350, i32 0, i32 2
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  %354 = load i32 (%struct.TYPE_14__*, %struct.fb_info.0*)*, i32 (%struct.TYPE_14__*, %struct.fb_info.0*)** %353, align 8
  %355 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %356 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %355, i32 0, i32 1
  %357 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %358 = bitcast %struct.fb_info* %357 to %struct.fb_info.0*
  %359 = call i32 %354(%struct.TYPE_14__* %356, %struct.fb_info.0* %358)
  store i32 %359, i32* %13, align 4
  %360 = load i32, i32* %13, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %345
  %363 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %364 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %363, i32 0, i32 0
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %364, align 8
  %366 = call i32 @dev_err(%struct.TYPE_17__* %365, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %367

367:                                              ; preds = %362, %345
  store i32 0, i32* %4, align 4
  br label %368

368:                                              ; preds = %367, %338, %318
  %369 = load i32, i32* %4, align 4
  ret i32 %369
}

declare dso_local i64 @smc501_readl(i64) #1

declare dso_local i32 @smc501_writel(i64, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @fb_edid_to_monspecs(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @fb_videomode_to_modelist(i32*, i32, i32*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_14__*, %struct.fb_info*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @fb_set_cmap(i32*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
