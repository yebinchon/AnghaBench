; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_9__, %struct.TYPE_6__, i32*, i32, %struct.s3fb_info* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.s3fb_info = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FBINFO_MISC_TILEBLITTING = common dso_local global i32 0, align 4
@fasttext = common dso_local global i64 0, align 8
@s3fb_fast_tile_ops = common dso_local global i32 0, align 4
@s3fb_tile_ops = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@s3_line_compare_regs = common dso_local global i32 0, align 4
@s3_start_address_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"offset register       : %d\0A\00", align 1
@s3_offset_regs = common dso_local global i32 0, align 4
@CHIP_357_VIRGE_GX2 = common dso_local global i64 0, align 8
@CHIP_359_VIRGE_GX2P = common dso_local global i64 0, align 8
@CHIP_360_TRIO3D_1X = common dso_local global i64 0, align 8
@CHIP_362_TRIO3D_2X = common dso_local global i64 0, align 8
@CHIP_368_TRIO3D_2X = common dso_local global i64 0, align 8
@CHIP_260_VIRGE_MX = common dso_local global i64 0, align 8
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@s3fb_formats = common dso_local global i32 0, align 4
@CHIP_375_VIRGE_DX = common dso_local global i64 0, align 8
@CHIP_988_VIRGE_VX = common dso_local global i64 0, align 8
@CHIP_365_TRIO3D = common dso_local global i64 0, align 8
@CHIP_385_VIRGE_GX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"text mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"high speed text mode set\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"4 bit pseudocolor\0A\00", align 1
@VGA_GFX_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"4 bit pseudocolor, planar\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"8 bit pseudocolor\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"5/5/5 truecolor\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"5/6/5 truecolor\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"8/8/8 truecolor\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"8/8/8/8 truecolor\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"unsupported mode - bug\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@s3_timing_regs = common dso_local global i32 0, align 4
@s3_dtpc_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @s3fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.s3fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 7
  %17 = load %struct.s3fb_info*, %struct.s3fb_info** %16, align 8
  store %struct.s3fb_info* %17, %struct.s3fb_info** %4, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %1
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 8
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @FBINFO_MISC_TILEBLITTING, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 4
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 128, i32 -1
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sdiv i32 %61, 64
  store i32 %62, i32* %8, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %66, %70
  store i32 %71, i32* %9, align 4
  br label %111

72:                                               ; preds = %1
  %73 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 16, i32* %75, align 4
  %76 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* @FBINFO_MISC_TILEBLITTING, align 4
  %80 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i64, i64* @fasttext, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32* @s3fb_fast_tile_ops, i32* @s3fb_tile_ops
  %88 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 5
  store i32* %87, i32** %89, align 8
  %90 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 128, i32* %92, align 4
  %93 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 32768, i32* %95, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 16
  store i32 %100, i32* %8, align 4
  %101 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %104, %108
  %110 = sdiv i32 %109, 64
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %72, %24
  %112 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 11
  store i64 0, i64* %114, align 8
  %115 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 10
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %119 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 9
  store i32 %118, i32* %121, align 4
  %122 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %123 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @vga_wcrt(i32 %125, i32 56, i32 72)
  %127 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %128 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @vga_wcrt(i32 %130, i32 57, i32 165)
  %132 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %133 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @vga_wseq(i32 %135, i32 8, i32 6)
  %137 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %138 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @svga_wcrt_mask(i32 %140, i32 17, i32 0, i32 128)
  %142 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %143 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @svga_wseq_mask(i32 %145, i32 1, i32 32, i32 32)
  %147 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %148 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @svga_wcrt_mask(i32 %150, i32 23, i32 0, i32 128)
  %152 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %153 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @svga_set_default_gfx_regs(i32 %155)
  %157 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %158 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @svga_set_default_atc_regs(i32 %160)
  %162 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %163 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @svga_set_default_seq_regs(i32 %165)
  %167 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %168 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @svga_set_default_crt_regs(i32 %170)
  %172 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %173 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @s3_line_compare_regs, align 4
  %177 = call i32 @svga_wcrt_multi(i32 %175, i32 %176, i32 -1)
  %178 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %179 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @s3_start_address_regs, align 4
  %183 = call i32 @svga_wcrt_multi(i32 %181, i32 %182, i32 0)
  %184 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %185 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @svga_wcrt_mask(i32 %187, i32 88, i32 16, i32 16)
  %189 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %190 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @svga_wcrt_mask(i32 %192, i32 49, i32 8, i32 8)
  %194 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %195 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @svga_wcrt_mask(i32 %197, i32 51, i32 0, i32 8)
  %199 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %200 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @svga_wcrt_mask(i32 %202, i32 67, i32 0, i32 1)
  %204 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %205 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @svga_wcrt_mask(i32 %207, i32 93, i32 0, i32 40)
  %209 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %210)
  %212 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %213 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @s3_offset_regs, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @svga_wcrt_multi(i32 %215, i32 %216, i32 %217)
  %219 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %220 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @CHIP_357_VIRGE_GX2, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %275

224:                                              ; preds = %111
  %225 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %226 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @CHIP_359_VIRGE_GX2P, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %275

230:                                              ; preds = %224
  %231 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %232 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @CHIP_360_TRIO3D_1X, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %275

236:                                              ; preds = %230
  %237 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %238 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @CHIP_362_TRIO3D_2X, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %275

242:                                              ; preds = %236
  %243 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %244 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @CHIP_368_TRIO3D_2X, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %275

248:                                              ; preds = %242
  %249 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %250 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @CHIP_260_VIRGE_MX, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %275

254:                                              ; preds = %248
  %255 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %256 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @vga_wcrt(i32 %258, i32 84, i32 24)
  %260 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %261 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @vga_wcrt(i32 %263, i32 96, i32 255)
  %265 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %266 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @vga_wcrt(i32 %268, i32 97, i32 255)
  %270 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %271 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @vga_wcrt(i32 %273, i32 98, i32 255)
  br label %275

275:                                              ; preds = %254, %248, %242, %236, %230, %224, %111
  %276 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %277 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @vga_wcrt(i32 %279, i32 58, i32 53)
  %281 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %282 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @svga_wattr(i32 %284, i32 51, i32 0)
  %286 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %287 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %275
  %294 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %295 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @svga_wcrt_mask(i32 %297, i32 9, i32 128, i32 128)
  br label %305

299:                                              ; preds = %275
  %300 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %301 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @svga_wcrt_mask(i32 %303, i32 9, i32 0, i32 128)
  br label %305

305:                                              ; preds = %299, %293
  %306 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %307 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %305
  %314 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %315 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @svga_wcrt_mask(i32 %317, i32 66, i32 32, i32 32)
  br label %325

319:                                              ; preds = %305
  %320 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %321 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @svga_wcrt_mask(i32 %323, i32 66, i32 0, i32 32)
  br label %325

325:                                              ; preds = %319, %313
  %326 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %327 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @svga_wcrt_mask(i32 %329, i32 69, i32 0, i32 1)
  %331 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %332 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @svga_wcrt_mask(i32 %334, i32 103, i32 0, i32 12)
  %336 = load i32, i32* @s3fb_formats, align 4
  %337 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %338 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %337, i32 0, i32 1
  %339 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %340 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %339, i32 0, i32 3
  %341 = call i32 @svga_match_format(i32 %336, %struct.TYPE_8__* %338, %struct.TYPE_9__* %340)
  store i32 %341, i32* %6, align 4
  %342 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %343 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @CHIP_375_VIRGE_DX, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %358

347:                                              ; preds = %325
  %348 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %349 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @vga_wcrt(i32 %351, i32 134, i32 128)
  %353 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %354 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @vga_wcrt(i32 %356, i32 144, i32 0)
  br label %358

358:                                              ; preds = %347, %325
  %359 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %360 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @CHIP_988_VIRGE_VX, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %390

364:                                              ; preds = %358
  %365 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %366 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @vga_wcrt(i32 %368, i32 80, i32 0)
  %370 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %371 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @vga_wcrt(i32 %373, i32 103, i32 80)
  %375 = call i32 @msleep(i32 10)
  %376 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %377 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = icmp sle i32 %380, 2
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 144, i32 9
  %384 = call i32 @vga_wcrt(i32 %379, i32 99, i32 %383)
  %385 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %386 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @vga_wcrt(i32 %388, i32 102, i32 144)
  br label %390

390:                                              ; preds = %364, %358
  %391 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %392 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @CHIP_357_VIRGE_GX2, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %444, label %396

396:                                              ; preds = %390
  %397 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %398 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @CHIP_359_VIRGE_GX2P, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %444, label %402

402:                                              ; preds = %396
  %403 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %404 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @CHIP_360_TRIO3D_1X, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %444, label %408

408:                                              ; preds = %402
  %409 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %410 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @CHIP_362_TRIO3D_2X, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %444, label %414

414:                                              ; preds = %408
  %415 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %416 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @CHIP_368_TRIO3D_2X, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %444, label %420

420:                                              ; preds = %414
  %421 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %422 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @CHIP_365_TRIO3D, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %444, label %426

426:                                              ; preds = %420
  %427 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %428 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @CHIP_375_VIRGE_DX, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %444, label %432

432:                                              ; preds = %426
  %433 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %434 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @CHIP_385_VIRGE_GX, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %444, label %438

438:                                              ; preds = %432
  %439 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %440 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @CHIP_260_VIRGE_MX, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %476

444:                                              ; preds = %438, %432, %426, %420, %414, %408, %402, %396, %390
  %445 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %446 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* %12, align 4
  %450 = add nsw i32 %449, 7
  %451 = sdiv i32 %450, 8
  %452 = mul nsw i32 %448, %451
  store i32 %452, i32* %11, align 4
  %453 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %454 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %11, align 4
  %458 = add nsw i32 %457, 7
  %459 = sdiv i32 %458, 8
  %460 = call i32 @vga_wcrt(i32 %456, i32 145, i32 %459)
  %461 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %462 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* %11, align 4
  %466 = add nsw i32 %465, 7
  %467 = sdiv i32 %466, 8
  %468 = ashr i32 %467, 8
  %469 = or i32 %468, 128
  %470 = call i32 @vga_wcrt(i32 %464, i32 144, i32 %469)
  %471 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %472 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @vga_wcrt(i32 %474, i32 102, i32 129)
  br label %476

476:                                              ; preds = %444, %438
  %477 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %478 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = load i64, i64* @CHIP_357_VIRGE_GX2, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %512, label %482

482:                                              ; preds = %476
  %483 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %484 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @CHIP_359_VIRGE_GX2P, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %512, label %488

488:                                              ; preds = %482
  %489 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %490 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @CHIP_360_TRIO3D_1X, align 8
  %493 = icmp eq i64 %491, %492
  br i1 %493, label %512, label %494

494:                                              ; preds = %488
  %495 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %496 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @CHIP_362_TRIO3D_2X, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %512, label %500

500:                                              ; preds = %494
  %501 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %502 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @CHIP_368_TRIO3D_2X, align 8
  %505 = icmp eq i64 %503, %504
  br i1 %505, label %512, label %506

506:                                              ; preds = %500
  %507 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %508 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = load i64, i64* @CHIP_260_VIRGE_MX, align 8
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %512, label %518

512:                                              ; preds = %506, %500, %494, %488, %482, %476
  %513 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %514 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @vga_wcrt(i32 %516, i32 52, i32 0)
  br label %524

518:                                              ; preds = %506
  %519 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %520 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @vga_wcrt(i32 %522, i32 52, i32 16)
  br label %524

524:                                              ; preds = %518, %512
  %525 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %526 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = call i32 @svga_wcrt_mask(i32 %528, i32 49, i32 0, i32 64)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %7, align 4
  %530 = load i32, i32* %6, align 4
  switch i32 %530, label %904 [
    i32 0, label %531
    i32 1, label %565
    i32 2, label %589
    i32 3, label %607
    i32 4, label %669
    i32 5, label %776
    i32 6, label %883
    i32 7, label %891
  ]

531:                                              ; preds = %524
  %532 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %533 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %532, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %534 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %535 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = call i32 @svga_set_textmode_vga_regs(i32 %537)
  %539 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %540 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = call i32 @svga_wcrt_mask(i32 %542, i32 80, i32 0, i32 48)
  %544 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %545 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = call i32 @svga_wcrt_mask(i32 %547, i32 103, i32 0, i32 240)
  %549 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %550 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = call i32 @svga_wcrt_mask(i32 %552, i32 58, i32 0, i32 48)
  %554 = load i64, i64* @fasttext, align 8
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %564

556:                                              ; preds = %531
  %557 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %558 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %557, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %559 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %560 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = call i32 @svga_wcrt_mask(i32 %562, i32 49, i32 64, i32 64)
  br label %564

564:                                              ; preds = %556, %531
  br label %909

565:                                              ; preds = %524
  %566 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %567 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %566, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %568 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %569 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = load i32, i32* @VGA_GFX_MODE, align 4
  %573 = call i32 @vga_wgfx(i32 %571, i32 %572, i32 64)
  %574 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %575 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = call i32 @svga_wcrt_mask(i32 %577, i32 80, i32 0, i32 48)
  %579 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %580 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = call i32 @svga_wcrt_mask(i32 %582, i32 103, i32 0, i32 240)
  %584 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %585 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = call i32 @svga_wcrt_mask(i32 %587, i32 58, i32 0, i32 48)
  br label %909

589:                                              ; preds = %524
  %590 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %591 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %590, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %592 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %593 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = call i32 @svga_wcrt_mask(i32 %595, i32 80, i32 0, i32 48)
  %597 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %598 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = call i32 @svga_wcrt_mask(i32 %600, i32 103, i32 0, i32 240)
  %602 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %603 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = call i32 @svga_wcrt_mask(i32 %605, i32 58, i32 0, i32 48)
  br label %909

607:                                              ; preds = %524
  %608 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %609 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %610 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %611 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = call i32 @svga_wcrt_mask(i32 %613, i32 80, i32 0, i32 48)
  %615 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %616 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %616, i32 0, i32 5
  %618 = load i32, i32* %617, align 4
  %619 = icmp sgt i32 %618, 20000
  br i1 %619, label %656, label %620

620:                                              ; preds = %607
  %621 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %622 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %621, i32 0, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = load i64, i64* @CHIP_357_VIRGE_GX2, align 8
  %625 = icmp eq i64 %623, %624
  br i1 %625, label %656, label %626

626:                                              ; preds = %620
  %627 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %628 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %627, i32 0, i32 0
  %629 = load i64, i64* %628, align 8
  %630 = load i64, i64* @CHIP_359_VIRGE_GX2P, align 8
  %631 = icmp eq i64 %629, %630
  br i1 %631, label %656, label %632

632:                                              ; preds = %626
  %633 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %634 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = load i64, i64* @CHIP_360_TRIO3D_1X, align 8
  %637 = icmp eq i64 %635, %636
  br i1 %637, label %656, label %638

638:                                              ; preds = %632
  %639 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %640 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %639, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = load i64, i64* @CHIP_362_TRIO3D_2X, align 8
  %643 = icmp eq i64 %641, %642
  br i1 %643, label %656, label %644

644:                                              ; preds = %638
  %645 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %646 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %645, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = load i64, i64* @CHIP_368_TRIO3D_2X, align 8
  %649 = icmp eq i64 %647, %648
  br i1 %649, label %656, label %650

650:                                              ; preds = %644
  %651 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %652 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @CHIP_260_VIRGE_MX, align 8
  %655 = icmp eq i64 %653, %654
  br i1 %655, label %656, label %662

656:                                              ; preds = %650, %644, %638, %632, %626, %620, %607
  %657 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %658 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 8
  %661 = call i32 @svga_wcrt_mask(i32 %660, i32 103, i32 0, i32 240)
  br label %668

662:                                              ; preds = %650
  %663 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %664 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = call i32 @svga_wcrt_mask(i32 %666, i32 103, i32 16, i32 240)
  store i32 1, i32* %10, align 4
  br label %668

668:                                              ; preds = %662, %656
  br label %909

669:                                              ; preds = %524
  %670 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %671 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %670, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %672 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %673 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %672, i32 0, i32 0
  %674 = load i64, i64* %673, align 8
  %675 = load i64, i64* @CHIP_988_VIRGE_VX, align 8
  %676 = icmp eq i64 %674, %675
  br i1 %676, label %677, label %696

677:                                              ; preds = %669
  %678 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %679 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %678, i32 0, i32 1
  %680 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %679, i32 0, i32 5
  %681 = load i32, i32* %680, align 4
  %682 = icmp sgt i32 %681, 20000
  br i1 %682, label %683, label %689

683:                                              ; preds = %677
  %684 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %685 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 8
  %688 = call i32 @svga_wcrt_mask(i32 %687, i32 103, i32 32, i32 240)
  br label %695

689:                                              ; preds = %677
  %690 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %691 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 8
  %694 = call i32 @svga_wcrt_mask(i32 %693, i32 103, i32 48, i32 240)
  br label %695

695:                                              ; preds = %689, %683
  br label %775

696:                                              ; preds = %669
  %697 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %698 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %697, i32 0, i32 0
  %699 = load i64, i64* %698, align 8
  %700 = load i64, i64* @CHIP_365_TRIO3D, align 8
  %701 = icmp eq i64 %699, %700
  br i1 %701, label %702, label %726

702:                                              ; preds = %696
  %703 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %704 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = call i32 @svga_wcrt_mask(i32 %706, i32 80, i32 16, i32 48)
  %708 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %709 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %708, i32 0, i32 1
  %710 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %709, i32 0, i32 5
  %711 = load i32, i32* %710, align 4
  %712 = icmp sgt i32 %711, 8695
  br i1 %712, label %713, label %719

713:                                              ; preds = %702
  %714 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %715 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 8
  %718 = call i32 @svga_wcrt_mask(i32 %717, i32 103, i32 48, i32 240)
  store i32 2, i32* %7, align 4
  br label %725

719:                                              ; preds = %702
  %720 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %721 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = call i32 @svga_wcrt_mask(i32 %723, i32 103, i32 32, i32 240)
  store i32 1, i32* %10, align 4
  br label %725

725:                                              ; preds = %719, %713
  br label %774

726:                                              ; preds = %696
  %727 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %728 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 8
  %731 = call i32 @svga_wcrt_mask(i32 %730, i32 80, i32 16, i32 48)
  %732 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %733 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 8
  %736 = call i32 @svga_wcrt_mask(i32 %735, i32 103, i32 48, i32 240)
  %737 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %738 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %737, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = load i64, i64* @CHIP_357_VIRGE_GX2, align 8
  %741 = icmp ne i64 %739, %740
  br i1 %741, label %742, label %773

742:                                              ; preds = %726
  %743 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %744 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %743, i32 0, i32 0
  %745 = load i64, i64* %744, align 8
  %746 = load i64, i64* @CHIP_359_VIRGE_GX2P, align 8
  %747 = icmp ne i64 %745, %746
  br i1 %747, label %748, label %773

748:                                              ; preds = %742
  %749 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %750 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %749, i32 0, i32 0
  %751 = load i64, i64* %750, align 8
  %752 = load i64, i64* @CHIP_360_TRIO3D_1X, align 8
  %753 = icmp ne i64 %751, %752
  br i1 %753, label %754, label %773

754:                                              ; preds = %748
  %755 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %756 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %755, i32 0, i32 0
  %757 = load i64, i64* %756, align 8
  %758 = load i64, i64* @CHIP_362_TRIO3D_2X, align 8
  %759 = icmp ne i64 %757, %758
  br i1 %759, label %760, label %773

760:                                              ; preds = %754
  %761 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %762 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %761, i32 0, i32 0
  %763 = load i64, i64* %762, align 8
  %764 = load i64, i64* @CHIP_368_TRIO3D_2X, align 8
  %765 = icmp ne i64 %763, %764
  br i1 %765, label %766, label %773

766:                                              ; preds = %760
  %767 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %768 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %767, i32 0, i32 0
  %769 = load i64, i64* %768, align 8
  %770 = load i64, i64* @CHIP_260_VIRGE_MX, align 8
  %771 = icmp ne i64 %769, %770
  br i1 %771, label %772, label %773

772:                                              ; preds = %766
  store i32 2, i32* %7, align 4
  br label %773

773:                                              ; preds = %772, %766, %760, %754, %748, %742, %726
  br label %774

774:                                              ; preds = %773, %725
  br label %775

775:                                              ; preds = %774, %695
  br label %909

776:                                              ; preds = %524
  %777 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %778 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %777, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %779 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %780 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %779, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = load i64, i64* @CHIP_988_VIRGE_VX, align 8
  %783 = icmp eq i64 %781, %782
  br i1 %783, label %784, label %803

784:                                              ; preds = %776
  %785 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %786 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %785, i32 0, i32 1
  %787 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %786, i32 0, i32 5
  %788 = load i32, i32* %787, align 4
  %789 = icmp sgt i32 %788, 20000
  br i1 %789, label %790, label %796

790:                                              ; preds = %784
  %791 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %792 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %792, i32 0, i32 0
  %794 = load i32, i32* %793, align 8
  %795 = call i32 @svga_wcrt_mask(i32 %794, i32 103, i32 64, i32 240)
  br label %802

796:                                              ; preds = %784
  %797 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %798 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %797, i32 0, i32 1
  %799 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %798, i32 0, i32 0
  %800 = load i32, i32* %799, align 8
  %801 = call i32 @svga_wcrt_mask(i32 %800, i32 103, i32 80, i32 240)
  br label %802

802:                                              ; preds = %796, %790
  br label %882

803:                                              ; preds = %776
  %804 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %805 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %804, i32 0, i32 0
  %806 = load i64, i64* %805, align 8
  %807 = load i64, i64* @CHIP_365_TRIO3D, align 8
  %808 = icmp eq i64 %806, %807
  br i1 %808, label %809, label %833

809:                                              ; preds = %803
  %810 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %811 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %810, i32 0, i32 1
  %812 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = call i32 @svga_wcrt_mask(i32 %813, i32 80, i32 16, i32 48)
  %815 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %816 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %816, i32 0, i32 5
  %818 = load i32, i32* %817, align 4
  %819 = icmp sgt i32 %818, 8695
  br i1 %819, label %820, label %826

820:                                              ; preds = %809
  %821 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %822 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %822, i32 0, i32 0
  %824 = load i32, i32* %823, align 8
  %825 = call i32 @svga_wcrt_mask(i32 %824, i32 103, i32 80, i32 240)
  store i32 2, i32* %7, align 4
  br label %832

826:                                              ; preds = %809
  %827 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %828 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 8
  %831 = call i32 @svga_wcrt_mask(i32 %830, i32 103, i32 64, i32 240)
  store i32 1, i32* %10, align 4
  br label %832

832:                                              ; preds = %826, %820
  br label %881

833:                                              ; preds = %803
  %834 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %835 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %834, i32 0, i32 1
  %836 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %835, i32 0, i32 0
  %837 = load i32, i32* %836, align 8
  %838 = call i32 @svga_wcrt_mask(i32 %837, i32 80, i32 16, i32 48)
  %839 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %840 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %839, i32 0, i32 1
  %841 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %840, i32 0, i32 0
  %842 = load i32, i32* %841, align 8
  %843 = call i32 @svga_wcrt_mask(i32 %842, i32 103, i32 80, i32 240)
  %844 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %845 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %844, i32 0, i32 0
  %846 = load i64, i64* %845, align 8
  %847 = load i64, i64* @CHIP_357_VIRGE_GX2, align 8
  %848 = icmp ne i64 %846, %847
  br i1 %848, label %849, label %880

849:                                              ; preds = %833
  %850 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %851 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %850, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  %853 = load i64, i64* @CHIP_359_VIRGE_GX2P, align 8
  %854 = icmp ne i64 %852, %853
  br i1 %854, label %855, label %880

855:                                              ; preds = %849
  %856 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %857 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %856, i32 0, i32 0
  %858 = load i64, i64* %857, align 8
  %859 = load i64, i64* @CHIP_360_TRIO3D_1X, align 8
  %860 = icmp ne i64 %858, %859
  br i1 %860, label %861, label %880

861:                                              ; preds = %855
  %862 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %863 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %862, i32 0, i32 0
  %864 = load i64, i64* %863, align 8
  %865 = load i64, i64* @CHIP_362_TRIO3D_2X, align 8
  %866 = icmp ne i64 %864, %865
  br i1 %866, label %867, label %880

867:                                              ; preds = %861
  %868 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %869 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %868, i32 0, i32 0
  %870 = load i64, i64* %869, align 8
  %871 = load i64, i64* @CHIP_368_TRIO3D_2X, align 8
  %872 = icmp ne i64 %870, %871
  br i1 %872, label %873, label %880

873:                                              ; preds = %867
  %874 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %875 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %874, i32 0, i32 0
  %876 = load i64, i64* %875, align 8
  %877 = load i64, i64* @CHIP_260_VIRGE_MX, align 8
  %878 = icmp ne i64 %876, %877
  br i1 %878, label %879, label %880

879:                                              ; preds = %873
  store i32 2, i32* %7, align 4
  br label %880

880:                                              ; preds = %879, %873, %867, %861, %855, %849, %833
  br label %881

881:                                              ; preds = %880, %832
  br label %882

882:                                              ; preds = %881, %802
  br label %909

883:                                              ; preds = %524
  %884 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %885 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %884, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %886 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %887 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 8
  %890 = call i32 @svga_wcrt_mask(i32 %889, i32 103, i32 208, i32 240)
  br label %909

891:                                              ; preds = %524
  %892 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %893 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %892, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %894 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %895 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %894, i32 0, i32 1
  %896 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %895, i32 0, i32 0
  %897 = load i32, i32* %896, align 8
  %898 = call i32 @svga_wcrt_mask(i32 %897, i32 80, i32 48, i32 48)
  %899 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %900 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %899, i32 0, i32 1
  %901 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %900, i32 0, i32 0
  %902 = load i32, i32* %901, align 8
  %903 = call i32 @svga_wcrt_mask(i32 %902, i32 103, i32 208, i32 240)
  br label %909

904:                                              ; preds = %524
  %905 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %906 = call i32 @fb_err(%struct.fb_info* %905, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %907 = load i32, i32* @EINVAL, align 4
  %908 = sub nsw i32 0, %907
  store i32 %908, i32* %2, align 4
  br label %1048

909:                                              ; preds = %891, %883, %882, %775, %668, %589, %565, %564
  %910 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %911 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %910, i32 0, i32 0
  %912 = load i64, i64* %911, align 8
  %913 = load i64, i64* @CHIP_988_VIRGE_VX, align 8
  %914 = icmp ne i64 %912, %913
  br i1 %914, label %915, label %934

915:                                              ; preds = %909
  %916 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %917 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %917, i32 0, i32 0
  %919 = load i32, i32* %918, align 8
  %920 = load i32, i32* %10, align 4
  %921 = icmp ne i32 %920, 0
  %922 = zext i1 %921 to i64
  %923 = select i1 %921, i32 16, i32 0
  %924 = call i32 @svga_wseq_mask(i32 %919, i32 21, i32 %923, i32 16)
  %925 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %926 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %925, i32 0, i32 1
  %927 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %926, i32 0, i32 0
  %928 = load i32, i32* %927, align 8
  %929 = load i32, i32* %10, align 4
  %930 = icmp ne i32 %929, 0
  %931 = zext i1 %930 to i64
  %932 = select i1 %930, i32 128, i32 0
  %933 = call i32 @svga_wseq_mask(i32 %928, i32 24, i32 %932, i32 128)
  br label %934

934:                                              ; preds = %915, %909
  %935 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %936 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %937 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %936, i32 0, i32 1
  %938 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %937, i32 0, i32 5
  %939 = load i32, i32* %938, align 4
  %940 = call i32 @s3_set_pixclock(%struct.fb_info* %935, i32 %939)
  %941 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %942 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %941, i32 0, i32 1
  %943 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %942, i32 0, i32 0
  %944 = load i32, i32* %943, align 8
  %945 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %946 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %945, i32 0, i32 1
  %947 = load i32, i32* %7, align 4
  %948 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %949 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %948, i32 0, i32 1
  %950 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %949, i32 0, i32 3
  %951 = load i32, i32* %950, align 4
  %952 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %953 = and i32 %951, %952
  %954 = icmp ne i32 %953, 0
  %955 = zext i1 %954 to i64
  %956 = select i1 %954, i32 2, i32 1
  %957 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %958 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %957, i32 0, i32 1
  %959 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %958, i32 0, i32 3
  %960 = load i32, i32* %959, align 4
  %961 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %962 = and i32 %960, %961
  %963 = icmp ne i32 %962, 0
  %964 = zext i1 %963 to i64
  %965 = select i1 %963, i32 2, i32 1
  %966 = load i32, i32* %7, align 4
  %967 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %968 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %967, i32 0, i32 2
  %969 = load i32, i32* %968, align 8
  %970 = call i32 @svga_set_timings(i32 %944, i32* @s3_timing_regs, %struct.TYPE_8__* %946, i32 %947, i32 1, i32 %956, i32 %965, i32 %966, i32 %969)
  %971 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %972 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %971, i32 0, i32 1
  %973 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %972, i32 0, i32 4
  %974 = load i32, i32* %973, align 8
  %975 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %976 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %975, i32 0, i32 1
  %977 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %976, i32 0, i32 6
  %978 = load i32, i32* %977, align 8
  %979 = add nsw i32 %974, %978
  %980 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %981 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %980, i32 0, i32 1
  %982 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %981, i32 0, i32 7
  %983 = load i32, i32* %982, align 4
  %984 = add nsw i32 %979, %983
  %985 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %986 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %985, i32 0, i32 1
  %987 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %986, i32 0, i32 8
  %988 = load i32, i32* %987, align 8
  %989 = add nsw i32 %984, %988
  store i32 %989, i32* %13, align 4
  %990 = load i32, i32* %13, align 4
  %991 = load i32, i32* %7, align 4
  %992 = mul nsw i32 %990, %991
  %993 = sdiv i32 %992, 8
  %994 = sub nsw i32 %993, 5
  store i32 %994, i32* %13, align 4
  %995 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %996 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %995, i32 0, i32 1
  %997 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %996, i32 0, i32 0
  %998 = load i32, i32* %997, align 8
  %999 = load i32, i32* %13, align 4
  %1000 = add nsw i32 %999, 1
  %1001 = sdiv i32 %1000, 2
  %1002 = call i32 @vga_wcrt(i32 %998, i32 60, i32 %1001)
  %1003 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %1004 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1003, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1004, i32 0, i32 4
  %1006 = load i32, i32* %1005, align 8
  %1007 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %1008 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1008, i32 0, i32 7
  %1010 = load i32, i32* %1009, align 4
  %1011 = add nsw i32 %1006, %1010
  %1012 = load i32, i32* %7, align 4
  %1013 = mul nsw i32 %1011, %1012
  %1014 = sdiv i32 %1013, 8
  store i32 %1014, i32* %14, align 4
  %1015 = load i32, i32* %13, align 4
  %1016 = load i32, i32* %14, align 4
  %1017 = add nsw i32 %1015, %1016
  %1018 = add nsw i32 %1017, 1
  %1019 = sdiv i32 %1018, 2
  %1020 = add nsw i32 %1019, 2
  %1021 = load i32, i32* %14, align 4
  %1022 = add nsw i32 %1021, 4
  %1023 = load i32, i32* %13, align 4
  %1024 = add nsw i32 %1023, 1
  %1025 = call i32 @clamp(i32 %1020, i32 %1022, i32 %1024)
  store i32 %1025, i32* %5, align 4
  %1026 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %1027 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %1026, i32 0, i32 1
  %1028 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1027, i32 0, i32 0
  %1029 = load i32, i32* %1028, align 8
  %1030 = load i32, i32* @s3_dtpc_regs, align 4
  %1031 = load i32, i32* %5, align 4
  %1032 = call i32 @svga_wcrt_multi(i32 %1029, i32 %1030, i32 %1031)
  %1033 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %1034 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1033, i32 0, i32 0
  %1035 = load i32, i32* %1034, align 8
  %1036 = load i32, i32* %9, align 4
  %1037 = call i32 @memset_io(i32 %1035, i32 0, i32 %1036)
  %1038 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %1039 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %1038, i32 0, i32 1
  %1040 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1039, i32 0, i32 0
  %1041 = load i32, i32* %1040, align 8
  %1042 = call i32 @svga_wcrt_mask(i32 %1041, i32 23, i32 128, i32 128)
  %1043 = load %struct.s3fb_info*, %struct.s3fb_info** %4, align 8
  %1044 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %1043, i32 0, i32 1
  %1045 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1044, i32 0, i32 0
  %1046 = load i32, i32* %1045, align 8
  %1047 = call i32 @svga_wseq_mask(i32 %1046, i32 1, i32 0, i32 32)
  store i32 0, i32* %2, align 4
  br label %1048

1048:                                             ; preds = %934, %904
  %1049 = load i32, i32* %2, align 4
  ret i32 %1049
}

declare dso_local i32 @vga_wcrt(i32, i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @svga_wcrt_mask(i32, i32, i32, i32) #1

declare dso_local i32 @svga_wseq_mask(i32, i32, i32, i32) #1

declare dso_local i32 @svga_set_default_gfx_regs(i32) #1

declare dso_local i32 @svga_set_default_atc_regs(i32) #1

declare dso_local i32 @svga_set_default_seq_regs(i32) #1

declare dso_local i32 @svga_set_default_crt_regs(i32) #1

declare dso_local i32 @svga_wcrt_multi(i32, i32, i32) #1

declare dso_local i32 @fb_dbg(%struct.fb_info*, i8*, ...) #1

declare dso_local i32 @svga_wattr(i32, i32, i32) #1

declare dso_local i32 @svga_match_format(i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @svga_set_textmode_vga_regs(i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @fb_err(%struct.fb_info*, i8*) #1

declare dso_local i32 @s3_set_pixclock(%struct.fb_info*, i32) #1

declare dso_local i32 @svga_set_timings(i32, i32*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
