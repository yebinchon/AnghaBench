; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.fbtft_par = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.fbtft_par.0*, i32*, i64)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_6__ = type { i32* }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gamma_correction_table = common dso_local global i64* null, align 8
@BLACK = common dso_local global i16 0, align 2
@WHITE = common dso_local global i16 0, align 2
@addr_win = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"write failed and returned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i64, i64)* @write_vmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vmem(%struct.fbtft_par* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fbtft_par*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  store %struct.fbtft_par* %0, %struct.fbtft_par** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %23 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %8, align 8
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %29 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %33 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %39 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %37, %43
  %45 = load i32, i32* @GFP_NOIO, align 4
  %46 = call i16* @kmalloc_array(i32 %44, i32 2, i32 %45)
  store i16* %46, i16** %13, align 8
  %47 = load i16*, i16** %13, align 8
  %48 = icmp ne i16* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %376

52:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %131, %52
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %56 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %54, %60
  br i1 %61, label %62, label %134

62:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %127, %62
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %66 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %64, %70
  br i1 %71, label %72, label %130

72:                                               ; preds = %63
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %76 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %74, %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %73, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = and i32 %87, 31
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = and i32 %89, 2016
  %91 = ashr i32 %90, 5
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %14, align 4
  %93 = and i32 %92, 63488
  %94 = ashr i32 %93, 11
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = mul nsw i32 299, %95
  %97 = load i32, i32* %16, align 4
  %98 = mul nsw i32 587, %97
  %99 = add nsw i32 %96, %98
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 114, %100
  %102 = add nsw i32 %99, %101
  %103 = sdiv i32 %102, 200
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp sgt i32 %104, 255
  br i1 %105, label %106, label %107

106:                                              ; preds = %72
  store i32 255, i32* %14, align 4
  br label %107

107:                                              ; preds = %106, %72
  %108 = load i64*, i64** @gamma_correction_table, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i16
  %114 = load i16*, i16** %13, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %117 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %116, i32 0, i32 2
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %115, %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, i16* %114, i64 %125
  store i16 %113, i16* %126, align 2
  br label %127

127:                                              ; preds = %107
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %63

130:                                              ; preds = %63
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %53

134:                                              ; preds = %53
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %217, %134
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %138 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %136, %142
  br i1 %143, label %144, label %220

144:                                              ; preds = %135
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %213, %144
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %148 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %146, %152
  br i1 %153, label %154, label %216

154:                                              ; preds = %145
  %155 = load i16*, i16** %13, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %158 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %156, %162
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i16, i16* %155, i64 %166
  %168 = load i16, i16* %167, align 2
  store i16 %168, i16* %18, align 2
  %169 = load i16, i16* %18, align 2
  %170 = sext i16 %169 to i32
  %171 = load i16, i16* @BLACK, align 2
  %172 = sext i16 %171 to i32
  %173 = sub nsw i32 %170, %172
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %19, align 2
  %175 = load i16, i16* %18, align 2
  %176 = sext i16 %175 to i32
  %177 = load i16, i16* @WHITE, align 2
  %178 = sext i16 %177 to i32
  %179 = sub nsw i32 %176, %178
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %20, align 2
  %181 = load i16, i16* %19, align 2
  %182 = call i64 @abs(i16 signext %181)
  %183 = load i16, i16* %20, align 2
  %184 = call i64 @abs(i16 signext %183)
  %185 = icmp sge i64 %182, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %154
  %187 = load i16, i16* %20, align 2
  store i16 %187, i16* %21, align 2
  store i16 255, i16* %18, align 2
  br label %190

188:                                              ; preds = %154
  %189 = load i16, i16* %19, align 2
  store i16 %189, i16* %21, align 2
  store i16 0, i16* %18, align 2
  br label %190

190:                                              ; preds = %188, %186
  %191 = load i16, i16* %21, align 2
  %192 = sext i16 %191 to i32
  %193 = sdiv i32 %192, 8
  %194 = trunc i32 %193 to i16
  store i16 %194, i16* %21, align 2
  %195 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %196 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %195, i32 0, i32 2
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %202 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %201, i32 0, i32 2
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i16*, i16** %13, align 8
  %210 = load i16, i16* %18, align 2
  %211 = load i16, i16* %21, align 2
  %212 = call i32 @iterate_diffusion_matrix(i32 %200, i32 %206, i32 %207, i32 %208, i16* %209, i16 signext %210, i16 signext %211)
  br label %213

213:                                              ; preds = %190
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %145

216:                                              ; preds = %145
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %135

220:                                              ; preds = %135
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 0), align 4
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %361, %220
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 1), align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %364

226:                                              ; preds = %222
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 2), align 4
  %228 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %229 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %228, i32 0, i32 2
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 2
  %235 = icmp slt i32 %227, %234
  br i1 %235, label %236, label %293

236:                                              ; preds = %226
  %237 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = load i16*, i16** %13, align 8
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 2), align 4
  %241 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %242 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %241, i32 0, i32 2
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = sdiv i32 %246, 2
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @construct_line_bitmap(%struct.fbtft_par* %237, i32* %238, i16* %239, i32 %240, i32 %247, i32 %248)
  %250 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %251 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %250, i32 0, i32 2
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sdiv i32 %255, 2
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 2), align 4
  %258 = sub nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %7, align 8
  %260 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %261 = call i32 @BIT(i32 6)
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 2), align 4
  %263 = or i32 %261, %262
  %264 = call i32 @write_reg(%struct.fbtft_par* %260, i32 0, i32 %263)
  %265 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %266 = load i32, i32* %11, align 4
  %267 = or i32 184, %266
  %268 = call i32 @write_reg(%struct.fbtft_par* %265, i32 0, i32 %267)
  %269 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %270 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @gpiod_set_value(i32 %271, i32 1)
  %273 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %274 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i32 (%struct.fbtft_par.0*, i32*, i64)*, i32 (%struct.fbtft_par.0*, i32*, i64)** %275, align 8
  %277 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %278 = bitcast %struct.fbtft_par* %277 to %struct.fbtft_par.0*
  %279 = load i32*, i32** %9, align 8
  %280 = load i64, i64* %7, align 8
  %281 = call i32 %276(%struct.fbtft_par.0* %278, i32* %279, i64 %280)
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %236
  %285 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %286 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %285, i32 0, i32 2
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @dev_err(i32 %289, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %290)
  br label %292

292:                                              ; preds = %284, %236
  br label %293

293:                                              ; preds = %292, %226
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 3), align 4
  %295 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %296 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %295, i32 0, i32 2
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = sdiv i32 %300, 2
  %302 = icmp sge i32 %294, %301
  br i1 %302, label %303, label %360

303:                                              ; preds = %293
  %304 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = load i16*, i16** %13, align 8
  %307 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %308 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %307, i32 0, i32 2
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = sdiv i32 %312, 2
  %314 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 3), align 4
  %315 = add nsw i32 %314, 1
  %316 = load i32, i32* %11, align 4
  %317 = call i32 @construct_line_bitmap(%struct.fbtft_par* %304, i32* %305, i16* %306, i32 %313, i32 %315, i32 %316)
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_win, i32 0, i32 3), align 4
  %319 = add nsw i32 %318, 1
  %320 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %321 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %320, i32 0, i32 2
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = sdiv i32 %325, 2
  %327 = sub nsw i32 %319, %326
  %328 = sext i32 %327 to i64
  store i64 %328, i64* %7, align 8
  %329 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %330 = call i32 @BIT(i32 6)
  %331 = call i32 @write_reg(%struct.fbtft_par* %329, i32 1, i32 %330)
  %332 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %333 = load i32, i32* %11, align 4
  %334 = or i32 184, %333
  %335 = call i32 @write_reg(%struct.fbtft_par* %332, i32 1, i32 %334)
  %336 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %337 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @gpiod_set_value(i32 %338, i32 1)
  %340 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %341 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32 (%struct.fbtft_par.0*, i32*, i64)*, i32 (%struct.fbtft_par.0*, i32*, i64)** %342, align 8
  %344 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %345 = bitcast %struct.fbtft_par* %344 to %struct.fbtft_par.0*
  %346 = load i32*, i32** %9, align 8
  %347 = load i64, i64* %7, align 8
  %348 = call i32 %343(%struct.fbtft_par.0* %345, i32* %346, i64 %347)
  %349 = load i32, i32* %12, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %303
  %352 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %353 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %352, i32 0, i32 2
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @dev_err(i32 %356, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %357)
  br label %359

359:                                              ; preds = %351, %303
  br label %360

360:                                              ; preds = %359, %293
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %11, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %11, align 4
  br label %222

364:                                              ; preds = %222
  %365 = load i16*, i16** %13, align 8
  %366 = call i32 @kfree(i16* %365)
  %367 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %368 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @gpiod_set_value(i32 %369, i32 1)
  %371 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %372 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @gpiod_set_value(i32 %373, i32 1)
  %375 = load i32, i32* %12, align 4
  store i32 %375, i32* %4, align 4
  br label %376

376:                                              ; preds = %364, %49
  %377 = load i32, i32* %4, align 4
  ret i32 %377
}

declare dso_local i16* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @abs(i16 signext) #1

declare dso_local i32 @iterate_diffusion_matrix(i32, i32, i32, i32, i16*, i16 signext, i16 signext) #1

declare dso_local i32 @construct_line_bitmap(%struct.fbtft_par*, i32*, i16*, i32, i32, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
