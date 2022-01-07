; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_arkfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_arkfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_9__, %struct.TYPE_7__, i32*, i32, %struct.arkfb_info* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.arkfb_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@FBINFO_MISC_TILEBLITTING = common dso_local global i32 0, align 4
@arkfb_tile_ops = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@ark_line_compare_regs = common dso_local global i32 0, align 4
@ark_start_address_regs = common dso_local global i32 0, align 4
@threshold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"offset register       : %d\0A\00", align 1
@ark_offset_regs = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@arkfb_formats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"text mode\0A\00", align 1
@DAC_PSEUDO8_8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"4 bit pseudocolor\0A\00", align 1
@VGA_GFX_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"4 bit pseudocolor, planar\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"8 bit pseudocolor\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"not using multiplex\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"using multiplex\0A\00", align 1
@DAC_PSEUDO8_16 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"5/5/5 truecolor\0A\00", align 1
@DAC_RGB1555_16 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"5/6/5 truecolor\0A\00", align 1
@DAC_RGB0565_16 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"8/8/8 truecolor\0A\00", align 1
@DAC_RGB0888_16 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"8/8/8/8 truecolor\0A\00", align 1
@DAC_RGB8888_16 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"unsupported mode - bug\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ark_timing_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @arkfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arkfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.arkfb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 7
  %15 = load %struct.arkfb_info*, %struct.arkfb_info** %14, align 8
  store %struct.arkfb_info* %15, %struct.arkfb_info** %4, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %1
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 8
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @FBINFO_MISC_TILEBLITTING, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 4
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 128, i32 -1
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 64
  store i32 %60, i32* %9, align 4
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %64, %68
  store i32 %69, i32* %10, align 4
  br label %105

70:                                               ; preds = %1
  %71 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 16, i32* %73, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* @FBINFO_MISC_TILEBLITTING, align 4
  %78 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 5
  store i32* @arkfb_tile_ops, i32** %83, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 128, i32* %86, align 8
  %87 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 32768, i32* %89, align 4
  %90 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 16
  store i32 %94, i32* %9, align 4
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %98, %102
  %104 = sdiv i32 %103, 64
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %70, %22
  %106 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 11
  store i64 0, i64* %108, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 10
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %113 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 9
  store i32 %112, i32* %115, align 4
  %116 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %117 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @svga_wcrt_mask(i32 %119, i32 17, i32 0, i32 128)
  %121 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %122 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @svga_wseq_mask(i32 %124, i32 1, i32 32, i32 32)
  %126 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %127 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @svga_wcrt_mask(i32 %129, i32 23, i32 0, i32 128)
  %131 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %132 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @svga_set_default_gfx_regs(i32 %134)
  %136 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %137 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @svga_set_default_atc_regs(i32 %139)
  %141 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %142 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @svga_set_default_seq_regs(i32 %144)
  %146 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %147 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @svga_set_default_crt_regs(i32 %149)
  %151 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %152 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ark_line_compare_regs, align 4
  %156 = call i32 @svga_wcrt_multi(i32 %154, i32 %155, i32 -1)
  %157 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %158 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ark_start_address_regs, align 4
  %162 = call i32 @svga_wcrt_multi(i32 %160, i32 %161, i32 0)
  %163 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %164 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @svga_wseq_mask(i32 %166, i32 16, i32 31, i32 31)
  %168 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %169 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @svga_wseq_mask(i32 %171, i32 18, i32 3, i32 3)
  %173 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %174 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %178 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 16
  %182 = call i32 @vga_wseq(i32 %176, i32 19, i32 %181)
  %183 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %184 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %188 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 24
  %192 = call i32 @vga_wseq(i32 %186, i32 20, i32 %191)
  %193 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %194 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @vga_wseq(i32 %196, i32 21, i32 0)
  %198 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %199 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @vga_wseq(i32 %201, i32 22, i32 0)
  %203 = load i32, i32* @threshold, align 4
  %204 = and i32 %203, 14
  %205 = ashr i32 %204, 1
  %206 = or i32 16, %205
  %207 = load i32, i32* @threshold, align 4
  %208 = and i32 %207, 1
  %209 = shl i32 %208, 7
  %210 = or i32 %206, %209
  %211 = load i32, i32* @threshold, align 4
  %212 = and i32 %211, 16
  %213 = shl i32 %212, 1
  %214 = or i32 %210, %213
  store i32 %214, i32* %12, align 4
  %215 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %216 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @vga_wseq(i32 %218, i32 24, i32 %219)
  %221 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %222 = load i32, i32* %9, align 4
  %223 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %221, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %222)
  %224 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %225 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @ark_offset_regs, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @svga_wcrt_multi(i32 %227, i32 %228, i32 %229)
  %231 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %232 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @svga_wcrt_mask(i32 %234, i32 64, i32 8, i32 8)
  %236 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %237 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %105
  %244 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %245 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @svga_wcrt_mask(i32 %247, i32 9, i32 128, i32 128)
  br label %255

249:                                              ; preds = %105
  %250 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %251 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @svga_wcrt_mask(i32 %253, i32 9, i32 0, i32 128)
  br label %255

255:                                              ; preds = %249, %243
  %256 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %257 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %255
  %264 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %265 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @svga_wcrt_mask(i32 %267, i32 68, i32 4, i32 4)
  br label %275

269:                                              ; preds = %255
  %270 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %271 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @svga_wcrt_mask(i32 %273, i32 68, i32 0, i32 4)
  br label %275

275:                                              ; preds = %269, %263
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %276 = load i32, i32* @arkfb_formats, align 4
  %277 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %278 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %277, i32 0, i32 1
  %279 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %280 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %279, i32 0, i32 3
  %281 = call i32 @svga_match_format(i32 %276, %struct.TYPE_8__* %278, %struct.TYPE_9__* %280)
  store i32 %281, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  switch i32 %282, label %460 [
    i32 0, label %283
    i32 1, label %306
    i32 2, label %330
    i32 3, label %348
    i32 4, label %388
    i32 5, label %406
    i32 6, label %424
    i32 7, label %442
  ]

283:                                              ; preds = %275
  %284 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %285 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %284, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %286 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %287 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @svga_set_textmode_vga_regs(i32 %289)
  %291 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %292 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @vga_wseq(i32 %294, i32 17, i32 16)
  %296 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %297 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @svga_wcrt_mask(i32 %299, i32 70, i32 0, i32 4)
  %301 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %302 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @DAC_PSEUDO8_8, align 4
  %305 = call i32 @dac_set_mode(i32 %303, i32 %304)
  br label %465

306:                                              ; preds = %275
  %307 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %308 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %307, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %309 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %310 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @VGA_GFX_MODE, align 4
  %314 = call i32 @vga_wgfx(i32 %312, i32 %313, i32 64)
  %315 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %316 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @vga_wseq(i32 %318, i32 17, i32 16)
  %320 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %321 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @svga_wcrt_mask(i32 %323, i32 70, i32 0, i32 4)
  %325 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %326 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @DAC_PSEUDO8_8, align 4
  %329 = call i32 @dac_set_mode(i32 %327, i32 %328)
  br label %465

330:                                              ; preds = %275
  %331 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %332 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %331, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %333 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %334 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @vga_wseq(i32 %336, i32 17, i32 16)
  %338 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %339 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @svga_wcrt_mask(i32 %341, i32 70, i32 0, i32 4)
  %343 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %344 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @DAC_PSEUDO8_8, align 4
  %347 = call i32 @dac_set_mode(i32 %345, i32 %346)
  br label %465

348:                                              ; preds = %275
  %349 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %350 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %349, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %351 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %352 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @vga_wseq(i32 %354, i32 17, i32 22)
  %356 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %357 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = icmp sgt i32 %359, 20000
  br i1 %360, label %361, label %374

361:                                              ; preds = %348
  %362 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %363 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %362, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %364 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %365 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @svga_wcrt_mask(i32 %367, i32 70, i32 0, i32 4)
  %369 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %370 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @DAC_PSEUDO8_8, align 4
  %373 = call i32 @dac_set_mode(i32 %371, i32 %372)
  br label %387

374:                                              ; preds = %348
  %375 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %376 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %375, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %377 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %378 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @svga_wcrt_mask(i32 %380, i32 70, i32 4, i32 4)
  %382 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %383 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @DAC_PSEUDO8_16, align 4
  %386 = call i32 @dac_set_mode(i32 %384, i32 %385)
  store i32 2, i32* %8, align 4
  br label %387

387:                                              ; preds = %374, %361
  br label %465

388:                                              ; preds = %275
  %389 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %390 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %389, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %391 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %392 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @vga_wseq(i32 %394, i32 17, i32 26)
  %396 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %397 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @svga_wcrt_mask(i32 %399, i32 70, i32 4, i32 4)
  %401 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %402 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @DAC_RGB1555_16, align 4
  %405 = call i32 @dac_set_mode(i32 %403, i32 %404)
  br label %465

406:                                              ; preds = %275
  %407 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %408 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %407, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %409 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %410 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @vga_wseq(i32 %412, i32 17, i32 26)
  %414 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %415 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @svga_wcrt_mask(i32 %417, i32 70, i32 4, i32 4)
  %419 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %420 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @DAC_RGB0565_16, align 4
  %423 = call i32 @dac_set_mode(i32 %421, i32 %422)
  br label %465

424:                                              ; preds = %275
  %425 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %426 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %425, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %427 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %428 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @vga_wseq(i32 %430, i32 17, i32 22)
  %432 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %433 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @svga_wcrt_mask(i32 %435, i32 70, i32 4, i32 4)
  %437 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %438 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* @DAC_RGB0888_16, align 4
  %441 = call i32 @dac_set_mode(i32 %439, i32 %440)
  store i32 3, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %465

442:                                              ; preds = %275
  %443 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %444 = call i32 (%struct.fb_info*, i8*, ...) @fb_dbg(%struct.fb_info* %443, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %445 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %446 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @vga_wseq(i32 %448, i32 17, i32 30)
  %450 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %451 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @svga_wcrt_mask(i32 %453, i32 70, i32 4, i32 4)
  %455 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %456 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @DAC_RGB8888_16, align 4
  %459 = call i32 @dac_set_mode(i32 %457, i32 %458)
  store i32 2, i32* %7, align 4
  br label %465

460:                                              ; preds = %275
  %461 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %462 = call i32 @fb_err(%struct.fb_info* %461, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %463 = load i32, i32* @EINVAL, align 4
  %464 = sub nsw i32 0, %463
  store i32 %464, i32* %2, align 4
  br label %556

465:                                              ; preds = %442, %424, %406, %388, %387, %330, %306, %283
  %466 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %467 = load i32, i32* %8, align 4
  %468 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %469 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 4
  %471 = load i32, i32* %470, align 8
  %472 = mul nsw i32 %467, %471
  %473 = load i32, i32* %7, align 4
  %474 = sdiv i32 %472, %473
  %475 = call i32 @ark_set_pixclock(%struct.fb_info* %466, i32 %474)
  %476 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %477 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %481 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %480, i32 0, i32 1
  %482 = load i32, i32* %7, align 4
  %483 = load i32, i32* %8, align 4
  %484 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %485 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 3
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  %491 = zext i1 %490 to i64
  %492 = select i1 %490, i32 2, i32 1
  %493 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %494 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  %500 = zext i1 %499 to i64
  %501 = select i1 %499, i32 2, i32 1
  %502 = load i32, i32* %7, align 4
  %503 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %504 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @svga_set_timings(i32 %479, i32* @ark_timing_regs, %struct.TYPE_8__* %481, i32 %482, i32 %483, i32 %492, i32 %501, i32 %502, i32 %505)
  %507 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %508 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 5
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %512 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 6
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %510, %514
  %516 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %517 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 7
  %519 = load i32, i32* %518, align 4
  %520 = add nsw i32 %515, %519
  %521 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %522 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %522, i32 0, i32 8
  %524 = load i32, i32* %523, align 8
  %525 = add nsw i32 %520, %524
  store i32 %525, i32* %5, align 4
  %526 = load i32, i32* %5, align 4
  %527 = load i32, i32* %7, align 4
  %528 = mul nsw i32 %526, %527
  %529 = load i32, i32* %8, align 4
  %530 = sdiv i32 %528, %529
  %531 = sdiv i32 %530, 8
  %532 = sub nsw i32 %531, 5
  store i32 %532, i32* %5, align 4
  %533 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %534 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* %5, align 4
  %538 = add nsw i32 %537, 1
  %539 = sdiv i32 %538, 2
  %540 = call i32 @vga_wcrt(i32 %536, i32 66, i32 %539)
  %541 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %542 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* %10, align 4
  %545 = call i32 @memset_io(i32 %543, i32 0, i32 %544)
  %546 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %547 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = call i32 @svga_wcrt_mask(i32 %549, i32 23, i32 128, i32 128)
  %551 = load %struct.arkfb_info*, %struct.arkfb_info** %4, align 8
  %552 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @svga_wseq_mask(i32 %554, i32 1, i32 0, i32 32)
  store i32 0, i32* %2, align 4
  br label %556

556:                                              ; preds = %465, %460
  %557 = load i32, i32* %2, align 4
  ret i32 %557
}

declare dso_local i32 @svga_wcrt_mask(i32, i32, i32, i32) #1

declare dso_local i32 @svga_wseq_mask(i32, i32, i32, i32) #1

declare dso_local i32 @svga_set_default_gfx_regs(i32) #1

declare dso_local i32 @svga_set_default_atc_regs(i32) #1

declare dso_local i32 @svga_set_default_seq_regs(i32) #1

declare dso_local i32 @svga_set_default_crt_regs(i32) #1

declare dso_local i32 @svga_wcrt_multi(i32, i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @fb_dbg(%struct.fb_info*, i8*, ...) #1

declare dso_local i32 @svga_match_format(i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @svga_set_textmode_vga_regs(i32) #1

declare dso_local i32 @dac_set_mode(i32, i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @fb_err(%struct.fb_info*, i8*) #1

declare dso_local i32 @ark_set_pixclock(%struct.fb_info*, i32) #1

declare dso_local i32 @svga_set_timings(i32, i32*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vga_wcrt(i32, i32, i32) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
