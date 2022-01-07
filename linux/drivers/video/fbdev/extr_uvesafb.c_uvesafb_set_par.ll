; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_9__, %struct.TYPE_15__, %struct.uvesafb_par* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.uvesafb_par = type { i32, %struct.TYPE_13__, i32, i32, %struct.vbe_mode_ib* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.vbe_mode_ib = type { i32, i32, i32 }
%struct.uvesafb_ktask = type { %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.vbe_crtc_ib = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@UVESAFB_EXACT_RES = common dso_local global i32 0, align 4
@UVESAFB_EXACT_DEPTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TF_BUF_ESDI = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"mode switch failed (eax=0x%x, err=%d) - trying again with default timings\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mode switch failed (eax=0x%x, err=%d)\0A\00", align 1
@VBE_CAP_CAN_SWITCH_DAC = common dso_local global i32 0, align 4
@dac_width = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @uvesafb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.uvesafb_par*, align 8
  %5 = alloca %struct.uvesafb_ktask*, align 8
  %6 = alloca %struct.vbe_crtc_ib*, align 8
  %7 = alloca %struct.vbe_mode_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = load %struct.uvesafb_par*, %struct.uvesafb_par** %12, align 8
  store %struct.uvesafb_par* %13, %struct.uvesafb_par** %4, align 8
  store %struct.uvesafb_ktask* null, %struct.uvesafb_ktask** %5, align 8
  store %struct.vbe_crtc_ib* null, %struct.vbe_crtc_ib** %6, align 8
  store %struct.vbe_mode_ib* null, %struct.vbe_mode_ib** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 8
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 14
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %28, %33
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %23, %20, %1
  %42 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @UVESAFB_EXACT_RES, align 4
  %53 = load i32, i32* @UVESAFB_EXACT_DEPTH, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @uvesafb_vbe_find_mode(%struct.uvesafb_par* %42, i32 %46, i32 %50, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %41
  %59 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %60 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %59, i32 0, i32 4
  %61 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %61, i64 %63
  store %struct.vbe_mode_ib* %64, %struct.vbe_mode_ib** %7, align 8
  br label %68

65:                                               ; preds = %41
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %395

68:                                               ; preds = %58
  %69 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %69, %struct.uvesafb_ktask** %5, align 8
  %70 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %71 = icmp ne %struct.uvesafb_ktask* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %395

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %292, %75
  %77 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %78 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i32 20226, i32* %80, align 4
  %81 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %7, align 8
  %82 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, 16384
  %85 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %86 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %90 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 768
  br i1 %93, label %94, label %265

94:                                               ; preds = %76
  %95 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %96 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %265, label %99

99:                                               ; preds = %94
  %100 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %265

105:                                              ; preds = %99
  %106 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %107 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, 2048
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @TF_BUF_ESDI, align 4
  %113 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %114 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.vbe_crtc_ib* @kzalloc(i32 40, i32 %116)
  store %struct.vbe_crtc_ib* %117, %struct.vbe_crtc_ib** %6, align 8
  %118 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %119 = icmp ne %struct.vbe_crtc_ib* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %105
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  br label %389

123:                                              ; preds = %105
  %124 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %127, %131
  %133 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %134 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %136 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %137, %141
  %143 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %144 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %146 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %147, %151
  %153 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %154 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %158, %162
  %164 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %165 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %167 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %170 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %168, %172
  %174 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %175 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %177 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %178, %182
  %184 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %185 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @PICOS2KHZ(i64 %189)
  %191 = mul nsw i32 %190, 1000
  %192 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %193 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 8
  %194 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %195 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %198 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %201 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 %199, %202
  %204 = sdiv i32 %196, %203
  %205 = mul nsw i32 100, %204
  %206 = sext i32 %205 to i64
  %207 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %208 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %207, i32 0, i32 8
  store i64 %206, i64* %208, align 8
  %209 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 10
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %123
  %217 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %218 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %216, %123
  %222 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %223 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %221
  %230 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %231 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, 2
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %229, %221
  %235 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %236 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 11
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %234
  %243 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %244 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, 4
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %242, %234
  %248 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %247
  %256 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %257 = getelementptr inbounds %struct.vbe_crtc_ib, %struct.vbe_crtc_ib* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, 8
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %255, %247
  %261 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %262 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %261, i32 0, i32 2
  %263 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %264 = call i32 @memcpy(i32* %262, %struct.vbe_crtc_ib* %263, i32 40)
  br label %269

265:                                              ; preds = %99, %94, %76
  %266 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %267 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %266, i32 0, i32 2
  %268 = call i32 @memset(i32* %267, i32 0, i32 40)
  br label %269

269:                                              ; preds = %265, %260
  %270 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %271 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  store i32 40, i32* %272, align 8
  %273 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %274 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %273, i32 0, i32 2
  %275 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %276 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %275, i32 0, i32 1
  store i32* %274, i32** %276, align 8
  %277 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %278 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %289, label %281

281:                                              ; preds = %269
  %282 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %283 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 65535
  %288 = icmp ne i32 %287, 79
  br i1 %288, label %289, label %317

289:                                              ; preds = %281, %269
  %290 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %291 = icmp ne %struct.vbe_crtc_ib* %290, null
  br i1 %291, label %292, label %307

292:                                              ; preds = %289
  %293 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %294 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %9, align 4
  %299 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %297, i32 %298)
  %300 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %301 = call i32 @uvesafb_reset(%struct.uvesafb_ktask* %300)
  %302 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %303 = call i32 @kfree(%struct.vbe_crtc_ib* %302)
  store %struct.vbe_crtc_ib* null, %struct.vbe_crtc_ib** %6, align 8
  %304 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %305 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 3
  store i64 0, i64* %306, align 8
  br label %76

307:                                              ; preds = %289
  %308 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %309 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %312, i32 %313)
  %315 = load i32, i32* @EINVAL, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %9, align 4
  br label %389

317:                                              ; preds = %281
  %318 = load i32, i32* %8, align 4
  %319 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %320 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %322 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @VBE_CAP_CAN_SWITCH_DAC, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %368

328:                                              ; preds = %317
  %329 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %7, align 8
  %330 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = icmp sle i32 %331, 8
  br i1 %332, label %333, label %368

333:                                              ; preds = %328
  %334 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %335 = call i32 @uvesafb_reset(%struct.uvesafb_ktask* %334)
  %336 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %337 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  store i32 20232, i32* %339, align 4
  %340 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %341 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 1
  store i32 2048, i32* %343, align 4
  %344 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %345 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %344)
  store i32 %345, i32* %9, align 4
  %346 = load i32, i32* %9, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %365, label %348

348:                                              ; preds = %333
  %349 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %350 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = and i32 %353, 65535
  %355 = icmp ne i32 %354, 79
  br i1 %355, label %365, label %356

356:                                              ; preds = %348
  %357 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %358 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 65280
  %363 = ashr i32 %362, 8
  %364 = icmp ne i32 %363, 8
  br i1 %364, label %365, label %366

365:                                              ; preds = %356, %348, %333
  store i32 6, i32* @dac_width, align 4
  br label %367

366:                                              ; preds = %356
  store i32 8, i32* @dac_width, align 4
  br label %367

367:                                              ; preds = %366, %365
  br label %368

368:                                              ; preds = %367, %328, %317
  %369 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %370 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp eq i32 %372, 8
  br i1 %373, label %374, label %376

374:                                              ; preds = %368
  %375 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %378

376:                                              ; preds = %368
  %377 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %378

378:                                              ; preds = %376, %374
  %379 = phi i32 [ %375, %374 ], [ %377, %376 ]
  %380 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %381 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 1
  store i32 %379, i32* %382, align 4
  %383 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %7, align 8
  %384 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %387 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  store i32 %385, i32* %388, align 8
  br label %389

389:                                              ; preds = %378, %307, %120
  %390 = load %struct.vbe_crtc_ib*, %struct.vbe_crtc_ib** %6, align 8
  %391 = call i32 @kfree(%struct.vbe_crtc_ib* %390)
  %392 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %393 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %392)
  %394 = load i32, i32* %9, align 4
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %389, %72, %65
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i32 @uvesafb_vbe_find_mode(%struct.uvesafb_par*, i32, i32, i32, i32) #1

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local %struct.vbe_crtc_ib* @kzalloc(i32, i32) #1

declare dso_local i32 @PICOS2KHZ(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.vbe_crtc_ib*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @uvesafb_reset(%struct.uvesafb_ktask*) #1

declare dso_local i32 @kfree(%struct.vbe_crtc_ib*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
