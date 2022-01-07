; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_tt_encode_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_tt_encode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.atafb_par = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@FB_SYNC_EXT = common dso_local global i64 0, align 8
@TT_SHIFTER_MODEMASK = common dso_local global i32 0, align 4
@sttt_xres = common dso_local global i32 0, align 4
@sttt_xres_virtual = common dso_local global i32 0, align 4
@st_yres = common dso_local global i32 0, align 4
@tt_yres = common dso_local global i32 0, align 4
@use_hwscroll = common dso_local global i32 0, align 4
@screen_len = common dso_local global i32 0, align 4
@hwscroll = common dso_local global i32 0, align 4
@screen_base = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.atafb_par*)* @tt_encode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_encode_var(%struct.fb_var_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.atafb_par*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %4, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %7 = call i32 @memset(%struct.fb_var_screeninfo* %6, i32 0, i32 200)
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 20
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 20
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 20
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 24
  store i64 0, i64* %18, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  store i32 31041, i32* %20, align 8
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 1
  store i32 120, i32* %22, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 2
  store i32 100, i32* %24, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 3
  store i32 8, i32* %26, align 4
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 4
  store i32 16, i32* %28, align 8
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 5
  store i32 140, i32* %30, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 6
  store i32 30, i32* %32, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 7
  store i32 -1, i32* %34, align 4
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 8
  store i32 -1, i32* %36, align 8
  %37 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %38 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 23
  store i64 0, i64* %46, align 8
  br label %51

47:                                               ; preds = %2
  %48 = load i64, i64* @FB_SYNC_EXT, align 8
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 23
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %53 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TT_SHIFTER_MODEMASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %143 [
    i32 132, label %59
    i32 131, label %74
    i32 133, label %87
    i32 129, label %99
    i32 128, label %113
    i32 130, label %125
  ]

59:                                               ; preds = %51
  %60 = load i32, i32* @sttt_xres, align 4
  %61 = sdiv i32 %60, 2
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @sttt_xres_virtual, align 4
  %65 = sdiv i32 %64, 2
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @st_yres, align 4
  %69 = sdiv i32 %68, 2
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 12
  store i32 4, i32* %73, align 8
  br label %143

74:                                               ; preds = %51
  %75 = load i32, i32* @sttt_xres, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @sttt_xres_virtual, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @st_yres, align 4
  %82 = sdiv i32 %81, 2
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 4
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 12
  store i32 2, i32* %86, align 8
  br label %143

87:                                               ; preds = %51
  %88 = load i32, i32* @sttt_xres, align 4
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @sttt_xres_virtual, align 4
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @st_yres, align 4
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 4
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 12
  store i32 1, i32* %98, align 8
  br label %143

99:                                               ; preds = %51
  %100 = load i32, i32* @sttt_xres, align 4
  %101 = sdiv i32 %100, 2
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @sttt_xres_virtual, align 4
  %105 = sdiv i32 %104, 2
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @tt_yres, align 4
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 12
  store i32 8, i32* %112, align 8
  br label %143

113:                                              ; preds = %51
  %114 = load i32, i32* @sttt_xres, align 4
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @sttt_xres_virtual, align 4
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @tt_yres, align 4
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 12
  store i32 4, i32* %124, align 8
  br label %143

125:                                              ; preds = %51
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 20
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* @sttt_xres, align 4
  %130 = mul nsw i32 %129, 2
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @sttt_xres_virtual, align 4
  %134 = mul nsw i32 %133, 2
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 10
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @tt_yres, align 4
  %138 = mul nsw i32 %137, 2
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 11
  store i32 %138, i32* %140, align 4
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 12
  store i32 1, i32* %142, align 8
  br label %143

143:                                              ; preds = %51, %125, %113, %99, %87, %74, %59
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 22
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 21
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 20
  %150 = bitcast %struct.TYPE_7__* %147 to i8*
  %151 = bitcast %struct.TYPE_7__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 24, i1 false)
  %152 = bitcast %struct.TYPE_7__* %145 to i8*
  %153 = bitcast %struct.TYPE_7__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 24, i1 false)
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 19
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 19
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 19
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %165, %168
  %170 = sdiv i32 %169, 8
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* @use_hwscroll, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %143
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %178 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %177, i32 0, i32 13
  store i32 %176, i32* %178, align 4
  br label %221

179:                                              ; preds = %143
  %180 = load i32, i32* @screen_len, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %179
  %183 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %184 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %189 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 13
  store i32 %190, i32* %192, align 4
  br label %199

193:                                              ; preds = %182
  %194 = load i32, i32* @screen_len, align 4
  %195 = load i32, i32* %5, align 4
  %196 = sdiv i32 %194, %195
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 13
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %187
  br label %220

200:                                              ; preds = %179
  %201 = load i32, i32* @hwscroll, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 2, %206
  %208 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 13
  store i32 %207, i32* %209, align 4
  br label %219

210:                                              ; preds = %200
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @hwscroll, align 4
  %215 = mul nsw i32 %214, 16
  %216 = add nsw i32 %213, %215
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 13
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %210, %203
  br label %220

220:                                              ; preds = %219, %199
  br label %221

221:                                              ; preds = %220, %173
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 18
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* @screen_base, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %221
  %227 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %228 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @screen_base, align 4
  %231 = sub nsw i32 %229, %230
  %232 = load i32, i32* %5, align 4
  %233 = sdiv i32 %231, %232
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 14
  store i32 %233, i32* %235, align 8
  br label %239

236:                                              ; preds = %221
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 14
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %236, %226
  %240 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %241 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %240, i32 0, i32 17
  store i64 0, i64* %241, align 8
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 16
  store i64 0, i64* %243, align 8
  %244 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 15
  store i32 %244, i32* %246, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
