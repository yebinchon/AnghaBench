; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.neofb_par* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.neofb_par = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"neofb_set_par\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @neofb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neofb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.neofb_par*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load %struct.neofb_par*, %struct.neofb_par** %14, align 8
  store %struct.neofb_par* %15, %struct.neofb_par** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @neoUnlock()
  %18 = call i32 @vgaHWProtect(i32 1)
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %28, %32
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %42 = call i64 @vgaHWInit(%struct.TYPE_5__* %40, %struct.neofb_par* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %841

47:                                               ; preds = %1
  %48 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %49 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  store i32 1, i32* %51, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %115 [
    i32 8, label %56
    i32 16, label %75
    i32 24, label %94
  ]

56:                                               ; preds = %47
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 3
  %62 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %63 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 19
  store i32 %61, i32* %65, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 11
  %71 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %72 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %74 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %73, i32 0, i32 3
  store i32 17, i32* %74, align 4
  br label %116

75:                                               ; preds = %47
  %76 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 2
  %81 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %82 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 19
  store i32 %80, i32* %84, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 10
  %90 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %91 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %93 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %92, i32 0, i32 3
  store i32 19, i32* %93, align 4
  br label %116

94:                                               ; preds = %47
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 3
  %100 = ashr i32 %99, 3
  %101 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %102 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 19
  store i32 %100, i32* %104, align 4
  %105 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 3
  %110 = ashr i32 %109, 11
  %111 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %112 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %114 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %113, i32 0, i32 3
  store i32 20, i32* %114, align 4
  br label %116

115:                                              ; preds = %47
  br label %116

116:                                              ; preds = %115, %94, %75, %56
  %117 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %118 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %117, i32 0, i32 4
  store i32 16, i32* %118, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %119, 2
  %121 = and i32 %120, 1024
  %122 = ashr i32 %121, 10
  %123 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = and i32 %127, 1024
  %129 = ashr i32 %128, 9
  %130 = or i32 %122, %129
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 1024
  %133 = ashr i32 %132, 8
  %134 = or i32 %130, %133
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, 1024
  %137 = ashr i32 %136, 7
  %138 = or i32 %134, %137
  %139 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %140 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %142 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %141, i32 0, i32 35
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %116
  %146 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %147 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %146, i32 0, i32 6
  store i32 48, i32* %147, align 8
  br label %151

148:                                              ; preds = %116
  %149 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %150 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %149, i32 0, i32 6
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %145
  %152 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %153 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %152, i32 0, i32 7
  store i32 192, i32* %153, align 4
  %154 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %155 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %154, i32 0, i32 8
  store i32 1, i32* %155, align 8
  %156 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %157 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %156, i32 0, i32 9
  store i32 0, i32* %157, align 4
  %158 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %159 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %158, i32 0, i32 34
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %151
  %163 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %164 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, 2
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %162, %151
  %168 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %169 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %168, i32 0, i32 33
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %174 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %179 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = call i32 @vga_rgfx(i32* null, i32 32)
  %184 = and i32 %183, 3
  %185 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %186 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %182, %177
  %188 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %189 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  switch i64 %191, label %208 [
    i64 1280, label %192
    i64 1024, label %197
    i64 800, label %202
    i64 640, label %207
  ]

192:                                              ; preds = %187
  %193 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %194 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, 96
  store i32 %196, i32* %194, align 4
  br label %209

197:                                              ; preds = %187
  %198 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %199 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, 64
  store i32 %201, i32* %199, align 4
  br label %209

202:                                              ; preds = %187
  %203 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %204 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, 32
  store i32 %206, i32* %204, align 4
  br label %209

207:                                              ; preds = %187
  br label %208

208:                                              ; preds = %187, %207
  br label %209

209:                                              ; preds = %208, %202, %197, %192
  %210 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %211 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 3
  switch i32 %213, label %224 [
    i32 1, label %214
    i32 2, label %219
    i32 3, label %219
  ]

214:                                              ; preds = %209
  %215 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %216 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %215, i32 0, i32 10
  store i32 0, i32* %216, align 8
  %217 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %218 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %217, i32 0, i32 11
  store i32 1, i32* %218, align 4
  br label %224

219:                                              ; preds = %209, %209
  %220 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %221 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %220, i32 0, i32 10
  store i32 1, i32* %221, align 8
  %222 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %223 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %222, i32 0, i32 11
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %209, %219, %214
  %225 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %226 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %225, i32 0, i32 12
  store i32 0, i32* %226, align 8
  %227 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %228 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %227, i32 0, i32 13
  store i32 0, i32* %228, align 4
  %229 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %230 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %229, i32 0, i32 32
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %259

233:                                              ; preds = %224
  %234 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %235 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %234, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %259

238:                                              ; preds = %233
  %239 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %240 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %244 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %243, i32 0, i32 14
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %242, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %238
  %248 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  switch i64 %251, label %257 [
    i64 320, label %252
    i64 400, label %252
    i64 640, label %252
    i64 800, label %252
    i64 1024, label %252
  ]

252:                                              ; preds = %247, %247, %247, %247, %247
  store i32 1, i32* %8, align 4
  %253 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %254 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %253, i32 0, i32 12
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, 198
  store i32 %256, i32* %254, align 8
  br label %258

257:                                              ; preds = %247
  store i32 0, i32* %8, align 4
  br label %258

258:                                              ; preds = %257, %252
  br label %260

259:                                              ; preds = %238, %233, %224
  store i32 0, i32* %8, align 4
  br label %260

260:                                              ; preds = %259, %258
  %261 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %262 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %261, i32 0, i32 15
  store i32 0, i32* %262, align 8
  %263 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %264 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %263, i32 0, i32 16
  store i32 0, i32* %264, align 4
  %265 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %266 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %265, i32 0, i32 17
  store i32 0, i32* %266, align 8
  %267 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %268 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %267, i32 0, i32 18
  store i32 0, i32* %268, align 4
  %269 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %270 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %269, i32 0, i32 19
  store i32 0, i32* %270, align 8
  %271 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %272 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %271, i32 0, i32 20
  store i32 0, i32* %272, align 4
  %273 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %274 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %273, i32 0, i32 21
  store i32 0, i32* %274, align 8
  %275 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %276 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %275, i32 0, i32 22
  store i32 0, i32* %276, align 4
  %277 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %278 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %277, i32 0, i32 23
  store i32 0, i32* %278, align 8
  %279 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %280 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %279, i32 0, i32 24
  store i32 0, i32* %280, align 4
  %281 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %282 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 2
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %374

286:                                              ; preds = %260
  %287 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %288 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %292 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %291, i32 0, i32 14
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %290, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %286
  br label %373

296:                                              ; preds = %286
  %297 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %298 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, 1
  store i32 %300, i32* %298, align 8
  %301 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %302 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %301, i32 0, i32 13
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, 16
  store i32 %304, i32* %302, align 4
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %329, label %307

307:                                              ; preds = %296
  %308 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %309 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %308, i32 0, i32 14
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %312 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = sub nsw i64 %310, %314
  %316 = ashr i64 %315, 4
  %317 = sub nsw i64 %316, 1
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %9, align 4
  %319 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %320 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %319, i32 0, i32 25
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %323 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sub nsw i32 %321, %325
  %327 = ashr i32 %326, 1
  %328 = sub nsw i32 %327, 2
  store i32 %328, i32* %10, align 4
  br label %330

329:                                              ; preds = %296
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %330

330:                                              ; preds = %329, %307
  %331 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %332 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 6
  %334 = load i64, i64* %333, align 8
  switch i64 %334, label %371 [
    i64 320, label %335
    i64 400, label %342
    i64 640, label %349
    i64 800, label %356
    i64 1024, label %363
    i64 1280, label %370
  ]

335:                                              ; preds = %330
  %336 = load i32, i32* %9, align 4
  %337 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %338 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %337, i32 0, i32 22
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* %10, align 4
  %340 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %341 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %340, i32 0, i32 16
  store i32 %339, i32* %341, align 4
  br label %372

342:                                              ; preds = %330
  %343 = load i32, i32* %9, align 4
  %344 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %345 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %344, i32 0, i32 23
  store i32 %343, i32* %345, align 8
  %346 = load i32, i32* %10, align 4
  %347 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %348 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %347, i32 0, i32 15
  store i32 %346, i32* %348, align 8
  br label %372

349:                                              ; preds = %330
  %350 = load i32, i32* %9, align 4
  %351 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %352 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %351, i32 0, i32 20
  store i32 %350, i32* %352, align 4
  %353 = load i32, i32* %10, align 4
  %354 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %355 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %354, i32 0, i32 17
  store i32 %353, i32* %355, align 8
  br label %372

356:                                              ; preds = %330
  %357 = load i32, i32* %9, align 4
  %358 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %359 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %358, i32 0, i32 21
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* %10, align 4
  %361 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %362 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %361, i32 0, i32 18
  store i32 %360, i32* %362, align 4
  br label %372

363:                                              ; preds = %330
  %364 = load i32, i32* %9, align 4
  %365 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %366 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %365, i32 0, i32 24
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %10, align 4
  %368 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %369 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %368, i32 0, i32 19
  store i32 %367, i32* %369, align 8
  br label %372

370:                                              ; preds = %330
  br label %371

371:                                              ; preds = %330, %370
  br label %372

372:                                              ; preds = %371, %363, %356, %349, %342, %335
  br label %373

373:                                              ; preds = %372, %295
  br label %374

374:                                              ; preds = %373, %260
  %375 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %376 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 6
  %378 = load i64, i64* %377, align 8
  %379 = trunc i64 %378 to i32
  %380 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %381 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %385 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @neoFindMode(i32 %379, i32 %383, i32 %387)
  %389 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %390 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %389, i32 0, i32 26
  store i32 %388, i32* %390, align 4
  %391 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %392 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %393 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %394 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @PICOS2KHZ(i32 %396)
  %398 = call i32 @neoCalcVCLK(%struct.fb_info* %391, %struct.neofb_par* %392, i32 %397)
  %399 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %400 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %399, i32 0, i32 27
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, 12
  store i32 %402, i32* %400, align 8
  %403 = call i32 @vga_wgfx(i32* null, i32 21, i32 0)
  %404 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %405 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %404, i32 0, i32 10
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @vga_wgfx(i32* null, i32 10, i32 %406)
  %408 = call i32 @vga_rgfx(i32* null, i32 144)
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %5, align 1
  %410 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %411 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  switch i32 %413, label %440 [
    i32 136, label %414
    i32 135, label %427
    i32 134, label %427
    i32 133, label %427
    i32 132, label %427
    i32 131, label %427
    i32 130, label %427
    i32 129, label %427
    i32 128, label %427
  ]

414:                                              ; preds = %374
  %415 = load i8, i8* %5, align 1
  %416 = zext i8 %415 to i32
  %417 = and i32 %416, 240
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %5, align 1
  %419 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %420 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = and i32 %421, -241
  %423 = load i8, i8* %5, align 1
  %424 = zext i8 %423 to i32
  %425 = or i32 %424, %422
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %5, align 1
  br label %440

427:                                              ; preds = %374, %374, %374, %374, %374, %374, %374, %374
  %428 = load i8, i8* %5, align 1
  %429 = zext i8 %428 to i32
  %430 = and i32 %429, 112
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %5, align 1
  %432 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %433 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = and i32 %434, -113
  %436 = load i8, i8* %5, align 1
  %437 = zext i8 %436 to i32
  %438 = or i32 %437, %435
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %5, align 1
  br label %440

440:                                              ; preds = %374, %427, %414
  %441 = load i8, i8* %5, align 1
  %442 = zext i8 %441 to i32
  %443 = call i32 @vga_wgfx(i32* null, i32 144, i32 %442)
  %444 = call i32 @vga_rgfx(i32* null, i32 37)
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %5, align 1
  %446 = load i8, i8* %5, align 1
  %447 = zext i8 %446 to i32
  %448 = and i32 %447, 57
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %5, align 1
  %450 = load i8, i8* %5, align 1
  %451 = zext i8 %450 to i32
  %452 = call i32 @vga_wgfx(i32* null, i32 37, i32 %451)
  %453 = call i32 @mdelay(i32 200)
  %454 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %455 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %456 = call i32 @vgaHWRestore(%struct.fb_info* %454, %struct.neofb_par* %455)
  %457 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %458 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 8
  switch i32 %460, label %510 [
    i32 8, label %461
    i32 16, label %466
    i32 24, label %489
  ]

461:                                              ; preds = %440
  %462 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %463 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %464 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 2
  store i8* %462, i8** %465, align 8
  br label %510

466:                                              ; preds = %440
  %467 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %468 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %469 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 2
  store i8* %467, i8** %470, align 8
  store i32 0, i32* %6, align 4
  br label %471

471:                                              ; preds = %485, %466
  %472 = load i32, i32* %6, align 4
  %473 = icmp slt i32 %472, 64
  br i1 %473, label %474, label %488

474:                                              ; preds = %471
  %475 = load i32, i32* %6, align 4
  %476 = call i32 @outb(i32 %475, i32 968)
  %477 = load i32, i32* %6, align 4
  %478 = shl i32 %477, 1
  %479 = call i32 @outb(i32 %478, i32 969)
  %480 = load i32, i32* %6, align 4
  %481 = call i32 @outb(i32 %480, i32 969)
  %482 = load i32, i32* %6, align 4
  %483 = shl i32 %482, 1
  %484 = call i32 @outb(i32 %483, i32 969)
  br label %485

485:                                              ; preds = %474
  %486 = load i32, i32* %6, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %6, align 4
  br label %471

488:                                              ; preds = %471
  br label %510

489:                                              ; preds = %440
  %490 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %491 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %492 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 2
  store i8* %490, i8** %493, align 8
  store i32 0, i32* %6, align 4
  br label %494

494:                                              ; preds = %506, %489
  %495 = load i32, i32* %6, align 4
  %496 = icmp slt i32 %495, 256
  br i1 %496, label %497, label %509

497:                                              ; preds = %494
  %498 = load i32, i32* %6, align 4
  %499 = call i32 @outb(i32 %498, i32 968)
  %500 = load i32, i32* %6, align 4
  %501 = call i32 @outb(i32 %500, i32 969)
  %502 = load i32, i32* %6, align 4
  %503 = call i32 @outb(i32 %502, i32 969)
  %504 = load i32, i32* %6, align 4
  %505 = call i32 @outb(i32 %504, i32 969)
  br label %506

506:                                              ; preds = %497
  %507 = load i32, i32* %6, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %6, align 4
  br label %494

509:                                              ; preds = %494
  br label %510

510:                                              ; preds = %440, %509, %488, %461
  %511 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %512 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %511, i32 0, i32 4
  %513 = load i32, i32* %512, align 8
  %514 = call i32 @vga_wgfx(i32* null, i32 14, i32 %513)
  %515 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %516 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = call i32 @vga_wgfx(i32* null, i32 15, i32 %517)
  %519 = call i32 @vga_rgfx(i32* null, i32 16)
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %5, align 1
  %521 = load i8, i8* %5, align 1
  %522 = zext i8 %521 to i32
  %523 = and i32 %522, 15
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %5, align 1
  %525 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %526 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %525, i32 0, i32 6
  %527 = load i32, i32* %526, align 8
  %528 = and i32 %527, -16
  %529 = load i8, i8* %5, align 1
  %530 = zext i8 %529 to i32
  %531 = or i32 %530, %528
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %5, align 1
  %533 = load i8, i8* %5, align 1
  %534 = zext i8 %533 to i32
  %535 = call i32 @vga_wgfx(i32* null, i32 16, i32 %534)
  %536 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %537 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %536, i32 0, i32 7
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @vga_wgfx(i32* null, i32 17, i32 %538)
  %540 = call i32 @vga_wgfx(i32* null, i32 21, i32 0)
  %541 = call i32 @vga_wgfx(i32* null, i32 22, i32 0)
  %542 = call i32 @vga_rgfx(i32* null, i32 32)
  %543 = trunc i32 %542 to i8
  store i8 %543, i8* %5, align 1
  %544 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %545 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  switch i32 %547, label %587 [
    i32 136, label %548
    i32 135, label %561
    i32 134, label %561
    i32 133, label %561
    i32 132, label %561
    i32 131, label %574
    i32 130, label %574
    i32 129, label %574
    i32 128, label %574
  ]

548:                                              ; preds = %510
  %549 = load i8, i8* %5, align 1
  %550 = zext i8 %549 to i32
  %551 = and i32 %550, 252
  %552 = trunc i32 %551 to i8
  store i8 %552, i8* %5, align 1
  %553 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %554 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %553, i32 0, i32 9
  %555 = load i32, i32* %554, align 4
  %556 = and i32 %555, -253
  %557 = load i8, i8* %5, align 1
  %558 = zext i8 %557 to i32
  %559 = or i32 %558, %556
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %5, align 1
  br label %587

561:                                              ; preds = %510, %510, %510, %510
  %562 = load i8, i8* %5, align 1
  %563 = zext i8 %562 to i32
  %564 = and i32 %563, 220
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %5, align 1
  %566 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %567 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %566, i32 0, i32 9
  %568 = load i32, i32* %567, align 4
  %569 = and i32 %568, -221
  %570 = load i8, i8* %5, align 1
  %571 = zext i8 %570 to i32
  %572 = or i32 %571, %569
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %5, align 1
  br label %587

574:                                              ; preds = %510, %510, %510, %510
  %575 = load i8, i8* %5, align 1
  %576 = zext i8 %575 to i32
  %577 = and i32 %576, 152
  %578 = trunc i32 %577 to i8
  store i8 %578, i8* %5, align 1
  %579 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %580 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %579, i32 0, i32 9
  %581 = load i32, i32* %580, align 4
  %582 = and i32 %581, -153
  %583 = load i8, i8* %5, align 1
  %584 = zext i8 %583 to i32
  %585 = or i32 %584, %582
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %5, align 1
  br label %587

587:                                              ; preds = %510, %574, %561, %548
  %588 = load i8, i8* %5, align 1
  %589 = zext i8 %588 to i32
  %590 = call i32 @vga_wgfx(i32* null, i32 32, i32 %589)
  %591 = call i32 @vga_rgfx(i32* null, i32 37)
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %5, align 1
  %593 = load i8, i8* %5, align 1
  %594 = zext i8 %593 to i32
  %595 = and i32 %594, 56
  %596 = trunc i32 %595 to i8
  store i8 %596, i8* %5, align 1
  %597 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %598 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %597, i32 0, i32 12
  %599 = load i32, i32* %598, align 8
  %600 = and i32 %599, -57
  %601 = load i8, i8* %5, align 1
  %602 = zext i8 %601 to i32
  %603 = or i32 %602, %600
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %5, align 1
  %605 = load i8, i8* %5, align 1
  %606 = zext i8 %605 to i32
  %607 = call i32 @vga_wgfx(i32* null, i32 37, i32 %606)
  %608 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %609 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = icmp ne i32 %611, 136
  br i1 %612, label %613, label %631

613:                                              ; preds = %587
  %614 = call i32 @vga_rgfx(i32* null, i32 48)
  %615 = trunc i32 %614 to i8
  store i8 %615, i8* %5, align 1
  %616 = load i8, i8* %5, align 1
  %617 = zext i8 %616 to i32
  %618 = and i32 %617, 239
  %619 = trunc i32 %618 to i8
  store i8 %619, i8* %5, align 1
  %620 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %621 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %620, i32 0, i32 13
  %622 = load i32, i32* %621, align 4
  %623 = and i32 %622, -240
  %624 = load i8, i8* %5, align 1
  %625 = zext i8 %624 to i32
  %626 = or i32 %625, %623
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %5, align 1
  %628 = load i8, i8* %5, align 1
  %629 = zext i8 %628 to i32
  %630 = call i32 @vga_wgfx(i32* null, i32 48, i32 %629)
  br label %631

631:                                              ; preds = %613, %587
  %632 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %633 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %632, i32 0, i32 15
  %634 = load i32, i32* %633, align 8
  %635 = call i32 @vga_wgfx(i32* null, i32 40, i32 %634)
  %636 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %637 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %636, i32 0, i32 16
  %638 = load i32, i32* %637, align 4
  %639 = call i32 @vga_wgfx(i32* null, i32 41, i32 %638)
  %640 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %641 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %640, i32 0, i32 17
  %642 = load i32, i32* %641, align 8
  %643 = call i32 @vga_wgfx(i32* null, i32 42, i32 %642)
  %644 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %645 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %644, i32 0, i32 1
  %646 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 8
  %648 = icmp ne i32 %647, 136
  br i1 %648, label %649, label %666

649:                                              ; preds = %631
  %650 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %651 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %650, i32 0, i32 18
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @vga_wgfx(i32* null, i32 50, i32 %652)
  %654 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %655 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %654, i32 0, i32 20
  %656 = load i32, i32* %655, align 4
  %657 = call i32 @vga_wgfx(i32* null, i32 51, i32 %656)
  %658 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %659 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %658, i32 0, i32 21
  %660 = load i32, i32* %659, align 8
  %661 = call i32 @vga_wgfx(i32* null, i32 52, i32 %660)
  %662 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %663 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %662, i32 0, i32 22
  %664 = load i32, i32* %663, align 4
  %665 = call i32 @vga_wgfx(i32* null, i32 53, i32 %664)
  br label %666

666:                                              ; preds = %649, %631
  %667 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %668 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %667, i32 0, i32 1
  %669 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = icmp eq i32 %670, 132
  br i1 %671, label %672, label %677

672:                                              ; preds = %666
  %673 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %674 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %673, i32 0, i32 23
  %675 = load i32, i32* %674, align 8
  %676 = call i32 @vga_wgfx(i32* null, i32 54, i32 %675)
  br label %677

677:                                              ; preds = %672, %666
  %678 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %679 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %678, i32 0, i32 1
  %680 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 8
  %682 = icmp eq i32 %681, 131
  br i1 %682, label %701, label %683

683:                                              ; preds = %677
  %684 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %685 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 8
  %688 = icmp eq i32 %687, 130
  br i1 %688, label %701, label %689

689:                                              ; preds = %683
  %690 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %691 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 8
  %694 = icmp eq i32 %693, 129
  br i1 %694, label %701, label %695

695:                                              ; preds = %689
  %696 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %697 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %696, i32 0, i32 1
  %698 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = icmp eq i32 %699, 128
  br i1 %700, label %701, label %714

701:                                              ; preds = %695, %689, %683, %677
  %702 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %703 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %702, i32 0, i32 23
  %704 = load i32, i32* %703, align 8
  %705 = call i32 @vga_wgfx(i32* null, i32 54, i32 %704)
  %706 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %707 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %706, i32 0, i32 19
  %708 = load i32, i32* %707, align 8
  %709 = call i32 @vga_wgfx(i32* null, i32 55, i32 %708)
  %710 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %711 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %710, i32 0, i32 24
  %712 = load i32, i32* %711, align 4
  %713 = call i32 @vga_wgfx(i32* null, i32 56, i32 %712)
  store i32 1, i32* %7, align 4
  br label %714

714:                                              ; preds = %701, %695
  %715 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %716 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %715, i32 0, i32 11
  %717 = load i32, i32* %716, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %772

719:                                              ; preds = %714
  %720 = call i32 @vga_rgfx(i32* null, i32 155)
  %721 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %722 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %721, i32 0, i32 28
  %723 = load i32, i32* %722, align 4
  %724 = icmp ne i32 %720, %723
  br i1 %724, label %742, label %725

725:                                              ; preds = %719
  %726 = call i32 @vga_rgfx(i32* null, i32 159)
  %727 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %728 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %727, i32 0, i32 29
  %729 = load i32, i32* %728, align 8
  %730 = icmp ne i32 %726, %729
  br i1 %730, label %742, label %731

731:                                              ; preds = %725
  %732 = load i32, i32* %7, align 4
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %772

734:                                              ; preds = %731
  %735 = call i32 @vga_rgfx(i32* null, i32 143)
  %736 = and i32 %735, -16
  %737 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %738 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %737, i32 0, i32 30
  %739 = load i32, i32* %738, align 4
  %740 = and i32 %739, -16
  %741 = icmp ne i32 %736, %740
  br i1 %741, label %742, label %772

742:                                              ; preds = %734, %725, %719
  %743 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %744 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %743, i32 0, i32 28
  %745 = load i32, i32* %744, align 4
  %746 = call i32 @vga_wgfx(i32* null, i32 155, i32 %745)
  %747 = load i32, i32* %7, align 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %767

749:                                              ; preds = %742
  %750 = call i32 @vga_rgfx(i32* null, i32 143)
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %5, align 1
  %752 = load i8, i8* %5, align 1
  %753 = zext i8 %752 to i32
  %754 = and i32 %753, 15
  %755 = trunc i32 %754 to i8
  store i8 %755, i8* %5, align 1
  %756 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %757 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %756, i32 0, i32 30
  %758 = load i32, i32* %757, align 4
  %759 = and i32 %758, -16
  %760 = load i8, i8* %5, align 1
  %761 = zext i8 %760 to i32
  %762 = or i32 %761, %759
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %5, align 1
  %764 = load i8, i8* %5, align 1
  %765 = zext i8 %764 to i32
  %766 = call i32 @vga_wgfx(i32* null, i32 143, i32 %765)
  br label %767

767:                                              ; preds = %749, %742
  %768 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %769 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %768, i32 0, i32 29
  %770 = load i32, i32* %769, align 8
  %771 = call i32 @vga_wgfx(i32* null, i32 159, i32 %770)
  br label %772

772:                                              ; preds = %767, %734, %731, %714
  %773 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %774 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %773, i32 0, i32 26
  %775 = load i32, i32* %774, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %782

777:                                              ; preds = %772
  %778 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %779 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %778, i32 0, i32 26
  %780 = load i32, i32* %779, align 4
  %781 = call i32 @vga_wcrt(i32* null, i32 35, i32 %780)
  br label %782

782:                                              ; preds = %777, %772
  %783 = call i32 @vga_wgfx(i32* null, i32 147, i32 192)
  %784 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %785 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 8
  %788 = icmp eq i32 %787, 131
  br i1 %788, label %807, label %789

789:                                              ; preds = %782
  %790 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %791 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 8
  %794 = icmp eq i32 %793, 130
  br i1 %794, label %807, label %795

795:                                              ; preds = %789
  %796 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %797 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %796, i32 0, i32 1
  %798 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %797, i32 0, i32 0
  %799 = load i32, i32* %798, align 8
  %800 = icmp eq i32 %799, 129
  br i1 %800, label %807, label %801

801:                                              ; preds = %795
  %802 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %803 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %802, i32 0, i32 1
  %804 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = icmp eq i32 %805, 128
  br i1 %806, label %807, label %812

807:                                              ; preds = %801, %795, %789, %782
  %808 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %809 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %808, i32 0, i32 5
  %810 = load i32, i32* %809, align 4
  %811 = call i32 @vga_wcrt(i32* null, i32 112, i32 %810)
  br label %812

812:                                              ; preds = %807, %801
  %813 = call i32 @vgaHWProtect(i32 0)
  %814 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %815 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %814, i32 0, i32 31
  %816 = call i32 @neoLock(i32* %815)
  %817 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %818 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %817, i32 0, i32 0
  %819 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %818, i32 0, i32 5
  %820 = load i32, i32* %819, align 4
  %821 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %822 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %821, i32 0, i32 0
  %823 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %822, i32 0, i32 4
  %824 = load i32, i32* %823, align 8
  %825 = ashr i32 %824, 3
  %826 = mul nsw i32 %820, %825
  %827 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %828 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %828, i32 0, i32 1
  store i32 %826, i32* %829, align 4
  %830 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %831 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %830, i32 0, i32 1
  %832 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %831, i32 0, i32 0
  %833 = load i32, i32* %832, align 8
  switch i32 %833, label %839 [
    i32 131, label %834
    i32 130, label %834
    i32 129, label %834
    i32 128, label %834
  ]

834:                                              ; preds = %812, %812, %812, %812
  %835 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %836 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %837 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %836, i32 0, i32 0
  %838 = call i32 @neo2200_accel_init(%struct.fb_info* %835, %struct.TYPE_5__* %837)
  br label %840

839:                                              ; preds = %812
  br label %840

840:                                              ; preds = %839, %834
  store i32 0, i32* %2, align 4
  br label %841

841:                                              ; preds = %840, %44
  %842 = load i32, i32* %2, align 4
  ret i32 %842
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @neoUnlock(...) #1

declare dso_local i32 @vgaHWProtect(i32) #1

declare dso_local i64 @vgaHWInit(%struct.TYPE_5__*, %struct.neofb_par*) #1

declare dso_local i32 @vga_rgfx(i32*, i32) #1

declare dso_local i32 @neoFindMode(i32, i32, i32) #1

declare dso_local i32 @neoCalcVCLK(%struct.fb_info*, %struct.neofb_par*, i32) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i32 @vga_wgfx(i32*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vgaHWRestore(%struct.fb_info*, %struct.neofb_par*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @vga_wcrt(i32*, i32, i32) #1

declare dso_local i32 @neoLock(i32*) #1

declare dso_local i32 @neo2200_accel_init(%struct.fb_info*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
