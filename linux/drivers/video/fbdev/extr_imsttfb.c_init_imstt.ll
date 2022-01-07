; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_init_imstt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_init_imstt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.fb_info = type { i32, %struct.TYPE_8__, i32, i32*, %struct.TYPE_10__, i64, %struct.imstt_par* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.imstt_par = type { i64, i32*, i32 }

@PRC = common dso_local global i32 0, align 4
@IBM = common dso_local global i64 0, align 8
@STGCTL = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@PPMASK = common dso_local global i64 0, align 8
@PIDXHI = common dso_local global i64 0, align 8
@ibm_initregs = common dso_local global %struct.TYPE_9__* null, align 8
@PIDXLO = common dso_local global i64 0, align 8
@PIDXDATA = common dso_local global i64 0, align 8
@tvp_initregs = common dso_local global %struct.TYPE_9__* null, align 8
@TVPADDRW = common dso_local global i64 0, align 8
@TVPIDATA = common dso_local global i64 0, align 8
@INIT_XRES = common dso_local global i8* null, align 8
@INIT_YRES = common dso_local global i8* null, align 8
@INIT_BPP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"imsttfb: %ux%ux%u not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IMS TT (%s)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TVP\00", align 1
@FB_ACCEL_IMS_TWINTURBO = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@imsttfb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@SSTATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"%s frame buffer; %uMB vram; chip version %u\0A\00", align 1
@CMODE_32 = common dso_local global i32 0, align 4
@CMODE_8 = common dso_local global i32 0, align 4
@CONFIG_NVRAM = common dso_local global i32 0, align 4
@NV_CMODE = common dso_local global i32 0, align 4
@NV_VMODE = common dso_local global i32 0, align 4
@VMODE_640_480_67 = common dso_local global i32 0, align 4
@VMODE_MAX = common dso_local global i32 0, align 4
@init_cmode = common dso_local global i32 0, align 4
@init_vmode = common dso_local global i32 0, align 4
@powermac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @init_imstt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_imstt(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.imstt_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 6
  %10 = load %struct.imstt_par*, %struct.imstt_par** %9, align 8
  store %struct.imstt_par* %10, %struct.imstt_par** %3, align 8
  %11 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %12 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PRC, align 4
  %15 = call i32 @read_reg_le32(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %17 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IBM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 4194304, i32 2097152
  %27 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 8388608, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %21
  %35 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %6, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %41, %46
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %53, %34
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ult i32* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  store i32 0, i32* %54, align 4
  br label %49

56:                                               ; preds = %49
  %57 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %58 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @STGCTL, align 4
  %61 = call i32 @read_reg_le32(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %63 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @STGCTL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, -2
  %68 = call i32 @write_reg_le32(i32 %64, i32 %65, i32 %67)
  %69 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %70 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SSR, align 4
  %73 = call i32 @write_reg_le32(i32 %71, i32 %72, i32 0)
  %74 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %75 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IBM, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %126

79:                                               ; preds = %56
  %80 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %81 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @PPMASK, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 255, i32* %84, align 4
  %85 = call i32 (...) @eieio()
  %86 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %87 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @PIDXHI, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 0, i32* %90, align 4
  %91 = call i32 (...) @eieio()
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %122, %79
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ibm_initregs, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ibm_initregs, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %105 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @PIDXLO, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = call i32 (...) @eieio()
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ibm_initregs, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %117 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @PIDXDATA, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = call i32 (...) @eieio()
  br label %122

122:                                              ; preds = %97
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %92

125:                                              ; preds = %92
  br label %161

126:                                              ; preds = %56
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %157, %126
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tvp_initregs, align 8
  %130 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %129)
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %127
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tvp_initregs, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %140 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @TVPADDRW, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = call i32 (...) @eieio()
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tvp_initregs, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %152 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @TVPIDATA, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %150, i32* %155, align 4
  %156 = call i32 (...) @eieio()
  br label %157

157:                                              ; preds = %132
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %127

160:                                              ; preds = %127
  br label %161

161:                                              ; preds = %160, %125
  %162 = load i8*, i8** @INIT_XRES, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %165 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32 %163, i32* %169, align 8
  %170 = load i8*, i8** @INIT_YRES, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 4
  %175 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  store i32 %171, i32* %177, align 8
  %178 = load i8*, i8** @INIT_BPP, align 8
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %181 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 4
  store i32 %179, i32* %182, align 8
  %183 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %188 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %186, %190
  %192 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %193 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = ashr i32 %195, 3
  %197 = mul nsw i32 %191, %196
  %198 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %199 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %197, %201
  br i1 %202, label %215, label %203

203:                                              ; preds = %161
  %204 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %205 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @compute_imstt_regvals(%struct.imstt_par* %204, i32 %208, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %231, label %215

215:                                              ; preds = %203, %161
  %216 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %217 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %221 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %225 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %219, i32 %223, i32 %227)
  %229 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %230 = call i32 @framebuffer_release(%struct.fb_info* %229)
  br label %360

231:                                              ; preds = %203
  %232 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %233 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %237 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @IBM, align 8
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %243 = call i32 @sprintf(i32 %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %242)
  %244 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %245 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  store i32 4096, i32* %246, align 4
  %247 = load i32, i32* @FB_ACCEL_IMS_TWINTURBO, align 4
  %248 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 9
  store i32 %247, i32* %250, align 8
  %251 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %252 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %253 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 8
  store i32 %251, i32* %254, align 4
  %255 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %256 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 8
  br i1 %259, label %260, label %262

260:                                              ; preds = %231
  %261 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %264

262:                                              ; preds = %231
  %263 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %267 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 7
  store i32 %265, i32* %268, align 8
  %269 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %270 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %274 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = ashr i32 %276, 3
  %278 = mul nsw i32 %272, %277
  %279 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %280 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  store i32 %278, i32* %281, align 8
  %282 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %283 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 3
  store i32 8, i32* %284, align 4
  %285 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %286 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 4
  store i32 1, i32* %287, align 8
  %288 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %289 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 6
  store i64 0, i64* %290, align 8
  %291 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %292 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %293 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 7
  store i32 %291, i32* %294, align 4
  %295 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %296 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 6
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, 6
  br i1 %300, label %301, label %304

301:                                              ; preds = %264
  %302 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %303 = call i32 @set_565(%struct.imstt_par* %302)
  br label %307

304:                                              ; preds = %264
  %305 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %306 = call i32 @set_555(%struct.imstt_par* %305)
  br label %307

307:                                              ; preds = %304, %301
  %308 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %309 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %310 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @set_imstt_regvals(%struct.fb_info* %308, i32 %312)
  %314 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %315 = call i32 @getclkMHz(%struct.imstt_par* %314)
  %316 = sdiv i32 1000000, %315
  %317 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %318 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 5
  store i32 %316, i32* %319, align 4
  %320 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %321 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %320, i32 0, i32 3
  store i32* @imsttfb_ops, i32** %321, align 8
  %322 = load i32, i32* @FBINFO_DEFAULT, align 4
  %323 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %328 = or i32 %326, %327
  %329 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %330 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %332 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %331, i32 0, i32 2
  %333 = call i32 @fb_alloc_cmap(i32* %332, i32 0, i32 0)
  %334 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %335 = call i64 @register_framebuffer(%struct.fb_info* %334)
  %336 = icmp slt i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %307
  %338 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %339 = call i32 @framebuffer_release(%struct.fb_info* %338)
  br label %360

340:                                              ; preds = %307
  %341 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %342 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @SSTATUS, align 4
  %345 = call i32 @read_reg_le32(i32 %343, i32 %344)
  %346 = and i32 %345, 3840
  %347 = ashr i32 %346, 8
  store i32 %347, i32* %5, align 4
  %348 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %349 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %350 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %354 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = ashr i32 %356, 20
  %358 = load i32, i32* %5, align 4
  %359 = call i32 @fb_info(%struct.fb_info* %348, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %352, i32 %357, i32 %358)
  br label %360

360:                                              ; preds = %340, %337, %215
  ret void
}

declare dso_local i32 @read_reg_le32(i32, i32) #1

declare dso_local i32 @write_reg_le32(i32, i32, i32) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @compute_imstt_regvals(%struct.imstt_par*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @set_565(%struct.imstt_par*) #1

declare dso_local i32 @set_555(%struct.imstt_par*) #1

declare dso_local i32 @set_imstt_regvals(%struct.fb_info*, i32) #1

declare dso_local i32 @getclkMHz(%struct.imstt_par*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
