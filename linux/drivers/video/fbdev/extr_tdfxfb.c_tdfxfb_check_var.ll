; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_tdfxfb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_tdfxfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.tdfx_par* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.tdfx_par = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"depth not supported: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"xoffset not supported\0A\00", align 1
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@VOODOO3_MAX_PIXCLOCK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"interlace not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"mode outside monitor's specs\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"width not supported: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"height not supported: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"no memory for screen (%ux%ux%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"pixclock too high (%ldKHz)\0A\00", align 1
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Checking graphics mode at %dx%d depth %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @tdfxfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfxfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.tdfx_par*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.tdfx_par*, %struct.tdfx_par** %9, align 8
  store %struct.tdfx_par* %10, %struct.tdfx_par** %6, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 16
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 24
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 32
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %321

37:                                               ; preds = %25, %20, %15, %2
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 15
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %321

74:                                               ; preds = %65
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 14
  store i64 0, i64* %76, align 8
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FB_VMODE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = load %struct.tdfx_par*, %struct.tdfx_par** %6, align 8
  %86 = getelementptr inbounds %struct.tdfx_par, %struct.tdfx_par* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VOODOO3_MAX_PIXCLOCK, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %321

94:                                               ; preds = %84, %74
  %95 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %115 = call i64 @fb_validate_mode(%struct.fb_var_screeninfo* %113, %struct.fb_info* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %321

121:                                              ; preds = %112, %106, %100, %94
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 15
  %126 = and i32 %125, -16
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 7
  %136 = ashr i32 %135, 3
  %137 = mul nsw i32 %131, %136
  store i32 %137, i32* %7, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 320
  br i1 %141, label %147, label %142

142:                                              ; preds = %121
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 2048
  br i1 %146, label %147, label %154

147:                                              ; preds = %142, %121
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %321

154:                                              ; preds = %142
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 200
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 2048
  br i1 %163, label %164, label %171

164:                                              ; preds = %159, %154
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %321

171:                                              ; preds = %159
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %174 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %172, %175
  %177 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %178 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sgt i32 %176, %180
  br i1 %181, label %182, label %212

182:                                              ; preds = %171
  %183 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sdiv i32 %186, %187
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %182
  %199 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %200 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %206 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %201, i32 %204, i32 %207)
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %321

211:                                              ; preds = %182
  br label %212

212:                                              ; preds = %211, %171
  %213 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %214 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %213, i32 0, i32 13
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @PICOS2KHZ(i32 %215)
  %217 = load %struct.tdfx_par*, %struct.tdfx_par** %6, align 8
  %218 = getelementptr inbounds %struct.tdfx_par, %struct.tdfx_par* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %216, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %212
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 13
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @PICOS2KHZ(i32 %224)
  %226 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %225)
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %3, align 4
  br label %321

229:                                              ; preds = %212
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 12
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  store i32 0, i32* %232, align 4
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 12
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  store i32 0, i32* %235, align 4
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  switch i32 %238, label %303 [
    i32 8, label %239
    i32 16, label %258
    i32 32, label %277
    i32 24, label %284
  ]

239:                                              ; preds = %229
  %240 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %241 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %240, i32 0, i32 11
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  store i32 8, i32* %242, align 4
  %243 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %244 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %243, i32 0, i32 11
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  %246 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %247 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %246, i32 0, i32 10
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 11
  %250 = bitcast %struct.TYPE_8__* %247 to i8*
  %251 = bitcast %struct.TYPE_8__* %249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 8, i1 false)
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 9
  %254 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %255 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %254, i32 0, i32 11
  %256 = bitcast %struct.TYPE_8__* %253 to i8*
  %257 = bitcast %struct.TYPE_8__* %255 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %256, i8* align 4 %257, i64 8, i1 false)
  br label %303

258:                                              ; preds = %229
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 11
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  store i32 11, i32* %261, align 4
  %262 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %263 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %262, i32 0, i32 11
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  store i32 5, i32* %264, align 4
  %265 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %266 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %265, i32 0, i32 10
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  store i32 5, i32* %267, align 4
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 10
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  store i32 6, i32* %270, align 4
  %271 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %272 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %271, i32 0, i32 9
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  store i32 0, i32* %273, align 4
  %274 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %275 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %274, i32 0, i32 9
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  store i32 5, i32* %276, align 4
  br label %303

277:                                              ; preds = %229
  %278 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %279 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %278, i32 0, i32 12
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  store i32 24, i32* %280, align 4
  %281 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %282 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %281, i32 0, i32 12
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 1
  store i32 8, i32* %283, align 4
  br label %284

284:                                              ; preds = %229, %277
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 11
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 1
  store i32 16, i32* %287, align 4
  %288 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %289 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %288, i32 0, i32 10
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  store i32 8, i32* %290, align 4
  %291 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %292 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %291, i32 0, i32 9
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i32 0, i32* %293, align 4
  %294 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %295 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %294, i32 0, i32 9
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  store i32 8, i32* %296, align 4
  %297 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %298 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %297, i32 0, i32 10
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  store i32 8, i32* %299, align 4
  %300 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %301 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %300, i32 0, i32 11
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  store i32 8, i32* %302, align 4
  br label %303

303:                                              ; preds = %229, %284, %258, %239
  %304 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %305 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %304, i32 0, i32 6
  store i32 -1, i32* %305, align 8
  %306 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %307 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %306, i32 0, i32 7
  store i32 -1, i32* %307, align 4
  %308 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %309 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %310 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %309, i32 0, i32 8
  store i32 %308, i32* %310, align 8
  %311 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %312 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %315 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %318 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %313, i32 %316, i32 %319)
  store i32 0, i32* %3, align 4
  br label %321

321:                                              ; preds = %303, %221, %198, %164, %147, %117, %90, %70, %30
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i64 @fb_validate_mode(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i64 @PICOS2KHZ(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
