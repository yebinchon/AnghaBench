; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64, i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.fb_info = type { i32, i32, %struct.cirrusfb_info* }
%struct.cirrusfb_info = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unsupported bpp size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"virtual resolution set to maximum of %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"mode %dx%dx%d rejected... virtual resolution too high to fit into video memory!\0A\00", align 1
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"ERROR: VerticalTotal >= 1280; special treatment required! (TODO)\0A\00", align 1
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @cirrusfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cirrusfb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %18, align 8
  store %struct.cirrusfb_info* %19, %struct.cirrusfb_info** %8, align 8
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %99 [
    i32 1, label %23
    i32 8, label %42
    i32 16, label %61
    i32 24, label %80
  ]

23:                                               ; preds = %2
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 12
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 11
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 12
  %34 = bitcast %struct.TYPE_3__* %31 to i8*
  %35 = bitcast %struct.TYPE_3__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 10
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 12
  %40 = bitcast %struct.TYPE_3__* %37 to i8*
  %41 = bitcast %struct.TYPE_3__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  br label %109

42:                                               ; preds = %2
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 8, i32* %48, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 11
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 12
  %53 = bitcast %struct.TYPE_3__* %50 to i8*
  %54 = bitcast %struct.TYPE_3__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 10
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 12
  %59 = bitcast %struct.TYPE_3__* %56 to i8*
  %60 = bitcast %struct.TYPE_3__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %109

61:                                               ; preds = %2
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 12
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 11, i32* %64, align 8
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 11
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 5, i32* %67, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 10
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 5, i32* %73, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 11
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 6, i32* %76, align 4
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 10
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 5, i32* %79, align 4
  br label %109

80:                                               ; preds = %2
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 12
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 16, i32* %83, align 8
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 11
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 8, i32* %86, align 8
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 10
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 12
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 8, i32* %92, align 4
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 8, i32* %95, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 8, i32* %98, align 4
  br label %109

99:                                               ; preds = %2
  %100 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %312

109:                                              ; preds = %80, %61, %42, %23
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %117, %109
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %149

128:                                              ; preds = %123
  %129 = load i32, i32* %7, align 4
  %130 = zext i32 %129 to i64
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sdiv i64 %130, %133
  %135 = trunc i64 %134 to i32
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dev_info(i32 %140, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %128, %123
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %149
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %158, %149
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = mul nsw i64 %168, %172
  %174 = load i32, i32* %7, align 4
  %175 = zext i32 %174 to i64
  %176 = icmp sgt i64 %173, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %165
  %178 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %179 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %185 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i32, i8*, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i64 %183, i32 %186, i32 %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %312

193:                                              ; preds = %165
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  %204 = icmp sgt i64 %196, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %193
  %206 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %208, %211
  %213 = sub nsw i64 %212, 1
  %214 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %215 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %214, i32 0, i32 5
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %205, %193
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %221 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %223, %226
  %228 = icmp sgt i64 %219, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %216
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = sub nsw i64 %233, %236
  %238 = sub nsw i64 %237, 1
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %239, i32 0, i32 6
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %229, %216
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 9
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  store i64 0, i64* %244, align 8
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 9
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  store i64 0, i64* %247, align 8
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 9
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  %251 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %251, i32 0, i32 10
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 2
  store i64 0, i64* %253, align 8
  %254 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %255 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %254, i32 0, i32 11
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 2
  store i64 0, i64* %256, align 8
  %257 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %258 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %257, i32 0, i32 12
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  store i64 0, i64* %259, align 8
  %260 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %6, align 4
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %241
  %271 = load i32, i32* %6, align 4
  %272 = mul nsw i32 %271, 2
  store i32 %272, i32* %6, align 4
  br label %285

273:                                              ; preds = %241
  %274 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %275 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %273
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, 1
  %283 = sdiv i32 %282, 2
  store i32 %283, i32* %6, align 4
  br label %284

284:                                              ; preds = %280, %273
  br label %285

285:                                              ; preds = %284, %270
  %286 = load i32, i32* %6, align 4
  %287 = icmp sge i32 %286, 1280
  br i1 %287, label %288, label %295

288:                                              ; preds = %285
  %289 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %290 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (i32, i8*, ...) @dev_err(i32 %291, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %3, align 4
  br label %312

295:                                              ; preds = %285
  %296 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %297 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %298 = call i64 @cirrusfb_check_pixclock(%struct.fb_var_screeninfo* %296, %struct.fb_info* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %312

303:                                              ; preds = %295
  %304 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %305 = call i32 @is_laguna(%struct.cirrusfb_info* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %309 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %310 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %309, i32 0, i32 8
  store i32 %308, i32* %310, align 4
  br label %311

311:                                              ; preds = %307, %303
  store i32 0, i32* %3, align 4
  br label %312

312:                                              ; preds = %311, %300, %288, %177, %99
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #2

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i64 @cirrusfb_check_pixclock(%struct.fb_var_screeninfo*, %struct.fb_info*) #2

declare dso_local i32 @is_laguna(%struct.cirrusfb_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
