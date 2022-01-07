; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_encode_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_encode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.amifb_par = type { i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@BPC0_HAM = common dso_local global i32 0, align 4
@FB_NONSTD_HAM = common dso_local global i64 0, align 8
@pixclock = common dso_local global i32* null, align 8
@IS_AGA = common dso_local global i64 0, align 8
@FMODE_BSCAN2 = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@BPC0_LACE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@IS_OCS = common dso_local global i32 0, align 4
@BMC0_VARBEAMEN = common dso_local global i32 0, align 4
@BMC0_HSYTRUE = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@BMC0_VSYTRUE = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@BMC0_CSYTRUE = common dso_local global i32 0, align 4
@FB_SYNC_COMP_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_BROADCAST = common dso_local global i32 0, align 4
@BPC0_ERSY = common dso_local global i32 0, align 4
@FB_SYNC_EXT = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.amifb_par*)* @ami_encode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ami_encode_var(%struct.fb_var_screeninfo* %0, %struct.amifb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.amifb_par*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.amifb_par* %1, %struct.amifb_par** %4, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %8 = call i32 @memset(%struct.fb_var_screeninfo* %7, i32 0, i32 224)
  %9 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %10 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %13 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %16 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %21 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %26 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 24
  store i32 %27, i32* %29, align 4
  %30 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %31 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 23
  store i32 %32, i32* %34, align 8
  %35 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %36 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 22
  store i32 %37, i32* %39, align 4
  %40 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %41 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 21
  store i32 %42, i32* %44, align 8
  %45 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %46 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 20
  store i64 0, i64* %51, align 8
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 17
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 17
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %59 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 17
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %65 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BPC0_HAM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %2
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 17
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 2
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %2
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 19
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 18
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 17
  %83 = bitcast %struct.TYPE_3__* %80 to i8*
  %84 = bitcast %struct.TYPE_3__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 24, i1 false)
  %85 = bitcast %struct.TYPE_3__* %78 to i8*
  %86 = bitcast %struct.TYPE_3__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 24, i1 false)
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 16
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 16
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 16
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %97 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BPC0_HAM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %76
  %103 = load i64, i64* @FB_NONSTD_HAM, align 8
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 15
  store i64 %103, i64* %105, align 8
  br label %109

106:                                              ; preds = %76
  %107 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %108 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %107, i32 0, i32 15
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %102
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 14
  store i64 0, i64* %111, align 8
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 3
  store i32 -1, i32* %113, align 4
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 4
  store i32 -1, i32* %115, align 8
  %116 = load i32*, i32** @pixclock, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 13
  store i32 %119, i32* %121, align 4
  %122 = load i64, i64* @IS_AGA, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %109
  %125 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %126 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @FMODE_BSCAN2, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  br label %151

135:                                              ; preds = %124, %109
  %136 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %137 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @BPC0_LACE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  br label %150

146:                                              ; preds = %135
  %147 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %142
  br label %151

151:                                              ; preds = %150, %131
  %152 = load i32, i32* @IS_OCS, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %277, label %154

154:                                              ; preds = %151
  %155 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %156 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @BMC0_VARBEAMEN, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %277

161:                                              ; preds = %154
  %162 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %163 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %166 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %165, i32 0, i32 9
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %164, %167
  %169 = load i64, i64* %5, align 8
  %170 = lshr i64 %168, %169
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 6
  store i64 %170, i64* %172, align 8
  %173 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %174 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %173, i32 0, i32 9
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %5, align 8
  %177 = lshr i64 %175, %176
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 7
  store i64 %177, i64* %179, align 8
  %180 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %181 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %180, i32 0, i32 10
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %5, align 8
  %184 = lshr i64 %182, %183
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %184, %187
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = sub i64 %188, %191
  %193 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %194 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %192, %195
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 8
  store i64 %196, i64* %198, align 8
  %199 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %200 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %199, i32 0, i32 11
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %203 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %202, i32 0, i32 12
  %204 = load i64, i64* %203, align 8
  %205 = sub i64 %201, %204
  %206 = load i64, i64* %6, align 8
  %207 = lshr i64 %205, %206
  %208 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 9
  store i64 %207, i64* %209, align 8
  %210 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %211 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %210, i32 0, i32 12
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %6, align 8
  %214 = lshr i64 %212, %213
  %215 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %215, i32 0, i32 10
  store i64 %214, i64* %216, align 8
  %217 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %218 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %217, i32 0, i32 13
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %6, align 8
  %221 = lshr i64 %219, %220
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = sub i64 %221, %224
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 10
  %228 = load i64, i64* %227, align 8
  %229 = sub i64 %225, %228
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = sub i64 %229, %232
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 11
  store i64 %233, i64* %235, align 8
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 12
  store i32 0, i32* %237, align 8
  %238 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %239 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @BMC0_HSYTRUE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %161
  %245 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %246 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %247 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %246, i32 0, i32 12
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %161
  %251 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %252 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @BMC0_VSYTRUE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %250
  %258 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 12
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %257, %250
  %264 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %265 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @BMC0_CSYTRUE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %263
  %271 = load i32, i32* @FB_SYNC_COMP_HIGH_ACT, align 4
  %272 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %273 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %272, i32 0, i32 12
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %270, %263
  br label %369

277:                                              ; preds = %154, %151
  %278 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 12
  store i32 %278, i32* %280, align 8
  %281 = load i64, i64* %5, align 8
  %282 = trunc i64 %281 to i32
  %283 = ashr i32 152, %282
  %284 = sext i32 %283 to i64
  %285 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %286 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %285, i32 0, i32 16
  %287 = load i32, i32* %286, align 4
  %288 = call i64 @mod4(i32 %287)
  %289 = add i64 %284, %288
  %290 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %291 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %290, i32 0, i32 6
  store i64 %289, i64* %291, align 8
  %292 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %293 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %292, i32 0, i32 10
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %296 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %295, i32 0, i32 16
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @down4(i32 %297)
  %299 = sub i64 %294, %298
  %300 = load i64, i64* %5, align 8
  %301 = lshr i64 %299, %300
  %302 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = add i64 %301, %304
  %306 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %307 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %306, i32 0, i32 7
  store i64 %305, i64* %307, align 8
  %308 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %309 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %308, i32 0, i32 10
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* %5, align 8
  %312 = lshr i64 %310, %311
  %313 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %314 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = sub i64 %312, %315
  %317 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %318 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %317, i32 0, i32 7
  %319 = load i64, i64* %318, align 8
  %320 = sub i64 %316, %319
  %321 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %322 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %321, i32 0, i32 6
  %323 = load i64, i64* %322, align 8
  %324 = sub i64 %320, %323
  %325 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %326 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %325, i32 0, i32 8
  store i64 %324, i64* %326, align 8
  %327 = load i64, i64* %6, align 8
  %328 = trunc i64 %327 to i32
  %329 = ashr i32 4, %328
  %330 = sext i32 %329 to i64
  %331 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %332 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %331, i32 0, i32 9
  store i64 %330, i64* %332, align 8
  %333 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %334 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %333, i32 0, i32 13
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %337 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %336, i32 0, i32 14
  %338 = load i64, i64* %337, align 8
  %339 = sub i64 %335, %338
  %340 = load i64, i64* %6, align 8
  %341 = lshr i64 %339, %340
  %342 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %343 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %342, i32 0, i32 9
  %344 = load i64, i64* %343, align 8
  %345 = add i64 %341, %344
  %346 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %347 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %346, i32 0, i32 10
  store i64 %345, i64* %347, align 8
  %348 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %349 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %348, i32 0, i32 13
  %350 = load i64, i64* %349, align 8
  %351 = sub i64 %350, 2
  %352 = load i64, i64* %6, align 8
  %353 = lshr i64 %351, %352
  %354 = add i64 %353, 1
  %355 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %356 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = sub i64 %354, %357
  %359 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %360 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %359, i32 0, i32 10
  %361 = load i64, i64* %360, align 8
  %362 = sub i64 %358, %361
  %363 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %364 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %363, i32 0, i32 9
  %365 = load i64, i64* %364, align 8
  %366 = sub i64 %362, %365
  %367 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %368 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %367, i32 0, i32 11
  store i64 %366, i64* %368, align 8
  br label %369

369:                                              ; preds = %277, %276
  %370 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %371 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @BPC0_ERSY, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %369
  %377 = load i32, i32* @FB_SYNC_EXT, align 4
  %378 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %379 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %378, i32 0, i32 12
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  br label %382

382:                                              ; preds = %376, %369
  %383 = load %struct.amifb_par*, %struct.amifb_par** %4, align 8
  %384 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %383, i32 0, i32 15
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %382
  %390 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %391 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %392 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %391, i32 0, i32 5
  %393 = load i32, i32* %392, align 4
  %394 = or i32 %393, %390
  store i32 %394, i32* %392, align 4
  br label %395

395:                                              ; preds = %389, %382
  ret void
}

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mod4(i32) #1

declare dso_local i64 @down4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
