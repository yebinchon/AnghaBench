; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"depth not supported: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"virtual x resolution != physical x resolution not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"virtual y resolution < physical y resolution not possible\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"xoffset not supported\0A\00", align 1
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"interlace not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"width not supported: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"height not supported: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"no memory for screen (%ux%ux%u)\0A\00", align 1
@PM3_MAX_PIXCLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"pixclock too high (%ldKHz)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Checking graphics mode at %dx%d depth %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pm3fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 11
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 13
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add i32 %11, %15
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 14
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add i32 %16, %20
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 12
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %21, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %2
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %87 [
    i32 8, label %36
    i32 16, label %61
    i32 32, label %74
  ]

36:                                               ; preds = %32
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 11
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 8, i32* %39, align 8
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 13
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 8, i32* %42, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 14
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 8, i32* %45, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 13
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 14
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 12
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 12
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %94

61:                                               ; preds = %32
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 11
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 5, i32* %64, align 8
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 14
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 5, i32* %67, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 13
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 6, i32* %70, align 8
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %94

74:                                               ; preds = %32
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 11
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 8, i32* %77, align 8
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 13
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 8, i32* %80, align 8
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 8, i32* %83, align 8
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 8, i32* %86, align 8
  br label %94

87:                                               ; preds = %32
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %286

94:                                               ; preds = %74, %61, %36
  br label %95

95:                                               ; preds = %94, %2
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ugt i32 %98, 8
  br i1 %99, label %100, label %135

100:                                              ; preds = %95
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 14
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 14
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 13
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 13
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 13
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add i32 %114, %118
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 11
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 11
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 11
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add i32 %126, %130
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 12
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %100, %95
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 1
  store i32 -1, i32* %137, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 2
  store i32 -1, i32* %139, align 8
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %286

151:                                              ; preds = %135
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %286

163:                                              ; preds = %151
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %286

172:                                              ; preds = %163
  %173 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %174 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @FB_VMODE_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %286

184:                                              ; preds = %172
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 31
  %189 = and i32 %188, -32
  %190 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %191 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add i32 %197, 7
  %199 = lshr i32 %198, 3
  %200 = mul i32 %194, %199
  store i32 %200, i32* %6, align 4
  %201 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %202 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %203, 200
  br i1 %204, label %210, label %205

205:                                              ; preds = %184
  %206 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %208, 2048
  br i1 %209, label %210, label %217

210:                                              ; preds = %205, %184
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %286

217:                                              ; preds = %205
  %218 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %219 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %220, 200
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %225, 4095
  br i1 %226, label %227, label %234

227:                                              ; preds = %222, %217
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %286

234:                                              ; preds = %222
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %235, %238
  %240 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %241 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %239, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %234
  %246 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %247 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %250 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %248, i32 %251, i32 %254)
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %3, align 4
  br label %286

258:                                              ; preds = %234
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @PICOS2KHZ(i32 %261)
  %263 = load i32, i32* @PM3_MAX_PIXCLOCK, align 4
  %264 = icmp sgt i32 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %258
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @PICOS2KHZ(i32 %268)
  %270 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %3, align 4
  br label %286

273:                                              ; preds = %258
  %274 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %275 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %274, i32 0, i32 8
  store i64 0, i64* %275, align 8
  %276 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %277 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %278, i32 %281, i32 %284)
  store i32 0, i32* %3, align 4
  br label %286

286:                                              ; preds = %273, %265, %245, %227, %210, %180, %168, %159, %147, %87
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
