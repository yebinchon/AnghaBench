; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_set_sprite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_set_sprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*** }
%struct.TYPE_5__ = type { i8** }
%struct.amifb_par = type { i32, i16, i16, i16, i16, i32, i32, %struct.TYPE_4__, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i16, i16, i16, i16, i32, i32, i64 }

@copdisplay = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@currentcop = common dso_local global i64 0, align 8
@dummysprite = common dso_local global i32* null, align 8
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@is_blanked = common dso_local global i32 0, align 4
@cursorstate = common dso_local global i64 0, align 8
@lofsprite = common dso_local global i32* null, align 8
@BPC0_LACE = common dso_local global i32 0, align 4
@shfsprite = common dso_local global i32* null, align 8
@IS_AGA = common dso_local global i64 0, align 8
@FMODE_BSCAN2 = common dso_local global i32 0, align 4
@cop_spr0ptrh = common dso_local global i64 0, align 8
@cop_spr0ptrl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amifb_par*)* @ami_set_sprite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ami_set_sprite(%struct.amifb_par* %0) #0 {
  %2 = alloca %struct.amifb_par*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.amifb_par* %0, %struct.amifb_par** %2, align 8
  %12 = load %struct.TYPE_5__***, %struct.TYPE_5__**** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @copdisplay, i32 0, i32 0), align 8
  %13 = load i64, i64* @currentcop, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %12, i64 %13
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.TYPE_5__***, %struct.TYPE_5__**** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @copdisplay, i32 0, i32 0), align 8
  %19 = load i64, i64* @currentcop, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %18, i64 %19
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %3, align 8
  %24 = load i32*, i32** @dummysprite, align 8
  %25 = call i32 @ZTWO_PADDR(i32* %24)
  store i32 %25, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %27 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  %31 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %32 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 %30, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %10, align 2
  %38 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %39 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 4
  %42 = sext i16 %41 to i32
  %43 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %44 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = sub nsw i32 %42, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %11, align 2
  %50 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %51 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %1
  %57 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %58 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %57, i32 0, i32 11
  %59 = load i64, i64* %58, align 8
  %60 = load i16, i16* %10, align 2
  %61 = sext i16 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i16
  store i16 %63, i16* %10, align 2
  %64 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %65 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = load i16, i16* %11, align 2
  %68 = sext i16 %67 to i64
  %69 = sub nsw i64 %68, %66
  %70 = trunc i64 %69 to i16
  store i16 %70, i16* %11, align 2
  br label %71

71:                                               ; preds = %56, %1
  %72 = load i32, i32* @is_blanked, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %275, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @cursorstate, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %275

77:                                               ; preds = %74
  %78 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %79 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %275

83:                                               ; preds = %77
  %84 = load i16, i16* %10, align 2
  %85 = sext i16 %84 to i32
  %86 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %87 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i16
  %91 = sext i16 %90 to i32
  %92 = sub nsw i32 0, %91
  %93 = icmp sgt i32 %85, %92
  br i1 %93, label %94, label %275

94:                                               ; preds = %83
  %95 = load i16, i16* %10, align 2
  %96 = sext i16 %95 to i32
  %97 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %98 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %97, i32 0, i32 1
  %99 = load i16, i16* %98, align 4
  %100 = sext i16 %99 to i32
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %275

102:                                              ; preds = %94
  %103 = load i16, i16* %11, align 2
  %104 = sext i16 %103 to i32
  %105 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %106 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = trunc i32 %108 to i16
  %110 = sext i16 %109 to i32
  %111 = sub nsw i32 0, %110
  %112 = icmp sgt i32 %104, %111
  br i1 %112, label %113, label %275

113:                                              ; preds = %102
  %114 = load i16, i16* %11, align 2
  %115 = sext i16 %114 to i32
  %116 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %117 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %116, i32 0, i32 2
  %118 = load i16, i16* %117, align 2
  %119 = sext i16 %118 to i32
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %275

121:                                              ; preds = %113
  %122 = load i32*, i32** @lofsprite, align 8
  %123 = call i32 @ZTWO_PADDR(i32* %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %125 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = load i16, i16* %10, align 2
  %128 = sext i16 %127 to i32
  %129 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %130 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %129, i32 0, i32 3
  %131 = load i16, i16* %130, align 8
  %132 = sext i16 %131 to i32
  %133 = shl i32 %128, %132
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %126, %134
  %136 = sub nsw i64 %135, 4
  store i64 %136, i64* %5, align 8
  %137 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %138 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = load i16, i16* %11, align 2
  %141 = sext i16 %140 to i32
  %142 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %143 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %142, i32 0, i32 4
  %144 = load i16, i16* %143, align 2
  %145 = sext i16 %144 to i32
  %146 = shl i32 %141, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %139, %147
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %151 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %155 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %154, i32 0, i32 4
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i32
  %158 = shl i32 %153, %157
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %149, %159
  store i64 %160, i64* %7, align 8
  %161 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %162 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @BPC0_LACE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %242

167:                                              ; preds = %121
  %168 = load i32*, i32** @shfsprite, align 8
  %169 = call i32 @ZTWO_PADDR(i32* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* %5, align 8
  %172 = call i32 @spr2hw_pos(i64 %170, i64 %171)
  %173 = load i32*, i32** @lofsprite, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  %175 = load i64, i64* %6, align 8
  %176 = add nsw i64 %175, 1
  %177 = load i64, i64* %5, align 8
  %178 = call i32 @spr2hw_pos(i64 %176, i64 %177)
  %179 = load i32*, i32** @shfsprite, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 %178, i32* %180, align 4
  %181 = load i64, i64* %6, align 8
  %182 = call i64 @mod2(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %214

184:                                              ; preds = %167
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* %7, align 8
  %188 = call i32 @spr2hw_ctl(i64 %185, i64 %186, i64 %187)
  %189 = load i32*, i32** @lofsprite, align 8
  %190 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %191 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 1, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %189, i64 %195
  store i32 %188, i32* %196, align 4
  %197 = load i64, i64* %6, align 8
  %198 = add nsw i64 %197, 1
  %199 = load i64, i64* %5, align 8
  %200 = load i64, i64* %7, align 8
  %201 = add nsw i64 %200, 1
  %202 = call i32 @spr2hw_ctl(i64 %198, i64 %199, i64 %201)
  %203 = load i32*, i32** @shfsprite, align 8
  %204 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %205 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 1, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %203, i64 %209
  store i32 %202, i32* %210, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @swap(i32 %211, i32 %212)
  br label %241

214:                                              ; preds = %167
  %215 = load i64, i64* %6, align 8
  %216 = load i64, i64* %5, align 8
  %217 = load i64, i64* %7, align 8
  %218 = add nsw i64 %217, 1
  %219 = call i32 @spr2hw_ctl(i64 %215, i64 %216, i64 %218)
  %220 = load i32*, i32** @lofsprite, align 8
  %221 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %222 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 1, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  store i32 %219, i32* %227, align 4
  %228 = load i64, i64* %6, align 8
  %229 = add nsw i64 %228, 1
  %230 = load i64, i64* %5, align 8
  %231 = load i64, i64* %7, align 8
  %232 = call i32 @spr2hw_ctl(i64 %229, i64 %230, i64 %231)
  %233 = load i32*, i32** @shfsprite, align 8
  %234 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %235 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 1, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %233, i64 %239
  store i32 %232, i32* %240, align 4
  br label %241

241:                                              ; preds = %214, %184
  br label %274

242:                                              ; preds = %121
  %243 = load i64, i64* %6, align 8
  %244 = load i64, i64* %5, align 8
  %245 = call i32 @spr2hw_pos(i64 %243, i64 %244)
  %246 = load i64, i64* @IS_AGA, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %242
  %249 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %250 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @FMODE_BSCAN2, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br label %255

255:                                              ; preds = %248, %242
  %256 = phi i1 [ false, %242 ], [ %254, %248 ]
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 128, i32 0
  %259 = or i32 %245, %258
  %260 = load i32*, i32** @lofsprite, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 %259, i32* %261, align 4
  %262 = load i64, i64* %6, align 8
  %263 = load i64, i64* %5, align 8
  %264 = load i64, i64* %7, align 8
  %265 = call i32 @spr2hw_ctl(i64 %262, i64 %263, i64 %264)
  %266 = load i32*, i32** @lofsprite, align 8
  %267 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %268 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %267, i32 0, i32 7
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = shl i32 1, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %266, i64 %272
  store i32 %265, i32* %273, align 4
  br label %274

274:                                              ; preds = %255, %241
  br label %275

275:                                              ; preds = %274, %113, %102, %94, %83, %77, %74, %71
  %276 = load i32, i32* %8, align 4
  %277 = call i8* @highw(i32 %276)
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %279 = load i64, i64* @cop_spr0ptrh, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  %282 = load i8**, i8*** %281, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 1
  store i8* %277, i8** %283, align 8
  %284 = load i32, i32* %8, align 4
  %285 = call i8* @loww(i32 %284)
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %287 = load i64, i64* @cop_spr0ptrl, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  store i8* %285, i8** %291, align 8
  %292 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %293 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @BPC0_LACE, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %315

298:                                              ; preds = %275
  %299 = load i32, i32* %9, align 4
  %300 = call i8* @highw(i32 %299)
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %302 = load i64, i64* @cop_spr0ptrh, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load i8**, i8*** %304, align 8
  %306 = getelementptr inbounds i8*, i8** %305, i64 1
  store i8* %300, i8** %306, align 8
  %307 = load i32, i32* %9, align 4
  %308 = call i8* @loww(i32 %307)
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %310 = load i64, i64* @cop_spr0ptrl, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 0
  %313 = load i8**, i8*** %312, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 1
  store i8* %308, i8** %314, align 8
  br label %315

315:                                              ; preds = %298, %275
  ret void
}

declare dso_local i32 @ZTWO_PADDR(i32*) #1

declare dso_local i32 @spr2hw_pos(i64, i64) #1

declare dso_local i64 @mod2(i64) #1

declare dso_local i32 @spr2hw_ctl(i64, i64, i64) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i8* @highw(i32) #1

declare dso_local i8* @loww(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
