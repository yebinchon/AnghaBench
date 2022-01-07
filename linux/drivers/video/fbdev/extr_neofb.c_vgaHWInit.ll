; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_vgaHWInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_vgaHWInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.neofb_par = type { i32, i32*, i32*, i32*, i32* }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.neofb_par*)* @vgaHWInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgaHWInit(%struct.fb_var_screeninfo* %0, %struct.neofb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.neofb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.neofb_par* %1, %struct.neofb_par** %4, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %6, align 4
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %45 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %44, i32 0, i32 0
  store i32 35, i32* %45, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %2
  %53 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %54 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, 64
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %2
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %66 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, 128
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %71 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %75 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %79 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 15, i32* %81, align 4
  %82 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %83 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  store i32 0, i32* %85, align 4
  %86 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %87 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 14, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 5
  %92 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %93 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 3
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %102 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 3
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %111 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %115, 31
  %117 = or i32 %116, 128
  %118 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %119 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  store i32 %117, i32* %121, align 4
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = ashr i32 %128, 3
  %130 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %131 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %6, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %135, 32
  %137 = shl i32 %136, 2
  %138 = load i32, i32* %5, align 4
  %139 = ashr i32 %138, 3
  %140 = and i32 %139, 31
  %141 = or i32 %137, %140
  %142 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %143 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, 2
  %148 = and i32 %147, 255
  %149 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %150 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 2
  %155 = and i32 %154, 256
  %156 = ashr i32 %155, 8
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 1
  %161 = and i32 %160, 256
  %162 = ashr i32 %161, 7
  %163 = or i32 %156, %162
  %164 = load i32, i32* %7, align 4
  %165 = and i32 %164, 256
  %166 = ashr i32 %165, 6
  %167 = or i32 %163, %166
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 1
  %172 = and i32 %171, 256
  %173 = ashr i32 %172, 5
  %174 = or i32 %167, %173
  %175 = or i32 %174, 16
  %176 = load i32, i32* %9, align 4
  %177 = sub nsw i32 %176, 2
  %178 = and i32 %177, 512
  %179 = ashr i32 %178, 4
  %180 = or i32 %175, %179
  %181 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = and i32 %184, 512
  %186 = ashr i32 %185, 3
  %187 = or i32 %180, %186
  %188 = load i32, i32* %7, align 4
  %189 = and i32 %188, 512
  %190 = ashr i32 %189, 2
  %191 = or i32 %187, %190
  %192 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %193 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 7
  store i32 %191, i32* %195, align 4
  %196 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %197 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  store i32 0, i32* %199, align 4
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %202, 1
  %204 = and i32 %203, 512
  %205 = ashr i32 %204, 4
  %206 = or i32 %205, 64
  %207 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %208 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 9
  store i32 %206, i32* %210, align 4
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %69
  %218 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %219 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 9
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, 128
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %217, %69
  %225 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %226 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 10
  store i32 0, i32* %228, align 4
  %229 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %230 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 11
  store i32 0, i32* %232, align 4
  %233 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %234 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 12
  store i32 0, i32* %236, align 4
  %237 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %238 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 13
  store i32 0, i32* %240, align 4
  %241 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %242 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 14
  store i32 0, i32* %244, align 4
  %245 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %246 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 15
  store i32 0, i32* %248, align 4
  %249 = load i32, i32* %7, align 4
  %250 = and i32 %249, 255
  %251 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %252 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 16
  store i32 %250, i32* %254, align 4
  %255 = load i32, i32* %8, align 4
  %256 = and i32 %255, 15
  %257 = or i32 %256, 32
  %258 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %259 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 17
  store i32 %257, i32* %261, align 4
  %262 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %263 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %264, 1
  %266 = and i32 %265, 255
  %267 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %268 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 18
  store i32 %266, i32* %270, align 4
  %271 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %272 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %271, i32 0, i32 10
  %273 = load i32, i32* %272, align 4
  %274 = ashr i32 %273, 4
  %275 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %276 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 19
  store i32 %274, i32* %278, align 4
  %279 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %280 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 20
  store i32 0, i32* %282, align 4
  %283 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %285, 1
  %287 = and i32 %286, 255
  %288 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %289 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %288, i32 0, i32 2
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 21
  store i32 %287, i32* %291, align 4
  %292 = load i32, i32* %9, align 4
  %293 = sub nsw i32 %292, 1
  %294 = and i32 %293, 255
  %295 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %296 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 22
  store i32 %294, i32* %298, align 4
  %299 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %300 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 23
  store i32 195, i32* %302, align 4
  %303 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %304 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 24
  store i32 255, i32* %306, align 4
  %307 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %308 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %307, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  store i32 0, i32* %310, align 4
  %311 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %312 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %311, i32 0, i32 3
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  store i32 0, i32* %314, align 4
  %315 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %316 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  store i32 0, i32* %318, align 4
  %319 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %320 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 3
  store i32 0, i32* %322, align 4
  %323 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %324 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %323, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 4
  store i32 0, i32* %326, align 4
  %327 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %328 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 5
  store i32 64, i32* %330, align 4
  %331 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %332 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 6
  store i32 5, i32* %334, align 4
  %335 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %336 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 7
  store i32 15, i32* %338, align 4
  %339 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %340 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 8
  store i32 255, i32* %342, align 4
  %343 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %344 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  store i32 0, i32* %346, align 4
  %347 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %348 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %347, i32 0, i32 4
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 1
  store i32 1, i32* %350, align 4
  %351 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %352 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %351, i32 0, i32 4
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 2
  store i32 2, i32* %354, align 4
  %355 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %356 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %355, i32 0, i32 4
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  store i32 3, i32* %358, align 4
  %359 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %360 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 4
  store i32 4, i32* %362, align 4
  %363 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %364 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %363, i32 0, i32 4
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 5
  store i32 5, i32* %366, align 4
  %367 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %368 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %367, i32 0, i32 4
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 6
  store i32 6, i32* %370, align 4
  %371 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %372 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %371, i32 0, i32 4
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 7
  store i32 7, i32* %374, align 4
  %375 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %376 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %375, i32 0, i32 4
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 8
  store i32 8, i32* %378, align 4
  %379 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %380 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %379, i32 0, i32 4
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 9
  store i32 9, i32* %382, align 4
  %383 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %384 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %383, i32 0, i32 4
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 10
  store i32 10, i32* %386, align 4
  %387 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %388 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %387, i32 0, i32 4
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 11
  store i32 11, i32* %390, align 4
  %391 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %392 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %391, i32 0, i32 4
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 12
  store i32 12, i32* %394, align 4
  %395 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %396 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %395, i32 0, i32 4
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 13
  store i32 13, i32* %398, align 4
  %399 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %400 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %399, i32 0, i32 4
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 14
  store i32 14, i32* %402, align 4
  %403 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %404 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %403, i32 0, i32 4
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 15
  store i32 15, i32* %406, align 4
  %407 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %408 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %407, i32 0, i32 4
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 16
  store i32 65, i32* %410, align 4
  %411 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %412 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %411, i32 0, i32 4
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 17
  store i32 255, i32* %414, align 4
  %415 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %416 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %415, i32 0, i32 4
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 18
  store i32 15, i32* %418, align 4
  %419 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %420 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %419, i32 0, i32 4
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 19
  store i32 0, i32* %422, align 4
  %423 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %424 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %423, i32 0, i32 4
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 20
  store i32 0, i32* %426, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
