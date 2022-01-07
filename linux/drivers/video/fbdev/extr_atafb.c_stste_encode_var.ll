; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_encode_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_encode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.atafb_par = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EXTD_SHIFTER = common dso_local global i32 0, align 4
@FB_SYNC_EXT = common dso_local global i64 0, align 8
@sttt_xres = common dso_local global i32 0, align 4
@st_yres = common dso_local global i32 0, align 4
@sttt_xres_virtual = common dso_local global i32 0, align 4
@sttt_yres_virtual = common dso_local global i32 0, align 4
@ovsc_addlen = common dso_local global i32 0, align 4
@use_hwscroll = common dso_local global i32 0, align 4
@screen_len = common dso_local global i32 0, align 4
@hwscroll = common dso_local global i32 0, align 4
@screen_base = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.atafb_par*)* @stste_encode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stste_encode_var(%struct.fb_var_screeninfo* %0, %struct.atafb_par* %1) #0 {
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
  %11 = load i32, i32* @EXTD_SHIFTER, align 4
  %12 = call i64 @ATARIHW_PRESENT(i32 %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 4, i32 3
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 20
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 20
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 24
  store i64 0, i64* %23, align 8
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 0
  store i32 31041, i32* %25, align 8
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 1
  store i32 120, i32* %27, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 2
  store i32 100, i32* %29, align 8
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 3
  store i32 8, i32* %31, align 4
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 4
  store i32 16, i32* %33, align 8
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 5
  store i32 140, i32* %35, align 4
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 6
  store i32 30, i32* %37, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 7
  store i32 -1, i32* %39, align 4
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 8
  store i32 -1, i32* %41, align 8
  %42 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %43 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %2
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 23
  store i64 0, i64* %51, align 8
  br label %56

52:                                               ; preds = %2
  %53 = load i64, i64* @FB_SYNC_EXT, align 8
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 23
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %58 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 3
  switch i32 %62, label %93 [
    i32 129, label %63
    i32 128, label %74
    i32 130, label %84
  ]

63:                                               ; preds = %56
  %64 = load i32, i32* @sttt_xres, align 4
  %65 = sdiv i32 %64, 2
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @st_yres, align 4
  %69 = sdiv i32 %68, 2
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 8
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 11
  store i32 4, i32* %73, align 4
  br label %93

74:                                               ; preds = %56
  %75 = load i32, i32* @sttt_xres, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @st_yres, align 4
  %79 = sdiv i32 %78, 2
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 8
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 11
  store i32 2, i32* %83, align 4
  br label %93

84:                                               ; preds = %56
  %85 = load i32, i32* @sttt_xres, align 4
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @st_yres, align 4
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 11
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %56, %84, %74, %63
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 22
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 21
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 20
  %100 = bitcast %struct.TYPE_7__* %97 to i8*
  %101 = bitcast %struct.TYPE_7__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  %102 = bitcast %struct.TYPE_7__* %95 to i8*
  %103 = bitcast %struct.TYPE_7__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 19
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %108 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %107, i32 0, i32 19
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 19
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @sttt_xres_virtual, align 4
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 12
  store i32 %113, i32* %115, align 8
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = sdiv i32 %122, 8
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @sttt_yres_virtual, align 4
  %126 = load i32, i32* @st_yres, align 4
  %127 = sub nsw i32 %125, %126
  %128 = mul nsw i32 %124, %127
  store i32 %128, i32* @ovsc_addlen, align 4
  %129 = load i32, i32* @use_hwscroll, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %93
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 13
  store i32 %134, i32* %136, align 4
  br label %179

137:                                              ; preds = %93
  %138 = load i32, i32* @screen_len, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %137
  %141 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %142 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %147 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 13
  store i32 %148, i32* %150, align 4
  br label %157

151:                                              ; preds = %140
  %152 = load i32, i32* @screen_len, align 4
  %153 = load i32, i32* %5, align 4
  %154 = sdiv i32 %152, %153
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 13
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %151, %145
  br label %178

158:                                              ; preds = %137
  %159 = load i32, i32* @hwscroll, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 2, %164
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 13
  store i32 %165, i32* %167, align 4
  br label %177

168:                                              ; preds = %158
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @hwscroll, align 4
  %173 = mul nsw i32 %172, 16
  %174 = add nsw i32 %171, %173
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 13
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %161
  br label %178

178:                                              ; preds = %177, %157
  br label %179

179:                                              ; preds = %178, %131
  %180 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %181 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %180, i32 0, i32 18
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* @screen_base, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %186 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @screen_base, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load i32, i32* %5, align 4
  %191 = sdiv i32 %189, %190
  %192 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 14
  store i32 %191, i32* %193, align 8
  br label %197

194:                                              ; preds = %179
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 14
  store i32 0, i32* %196, align 8
  br label %197

197:                                              ; preds = %194, %184
  %198 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 17
  store i64 0, i64* %199, align 8
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 16
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 15
  store i32 %202, i32* %204, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
