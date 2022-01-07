; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pinmux_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pinmux_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2880_priv = type { i32, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate gpio data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"io%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2880_priv*)* @rt2880_pinmux_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2880_pinmux_pins(%struct.rt2880_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2880_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.rt2880_priv* %0, %struct.rt2880_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %119, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %122

14:                                               ; preds = %8
  %15 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %119

26:                                               ; preds = %14
  %27 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %30, i32 0, i32 6
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kcalloc(i32 %29, i32 %38, i32 4, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %42, i32 0, i32 6
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32* %41, i32** %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %86, %26
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %53 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %52, i32 0, i32 6
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %51, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %50
  %63 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %63, i32 0, i32 6
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %74, i32 0, i32 6
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %78
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %73, i32* %85, align 4
  br label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %50

89:                                               ; preds = %50
  %90 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %90, i32 0, i32 6
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %100 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %99, i32 0, i32 6
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %101, i64 %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %98, %107
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %111 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %89
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %117 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %89
  br label %119

119:                                              ; preds = %118, %25
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %8

122:                                              ; preds = %8
  %123 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %124 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %127 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @devm_kcalloc(i32 %125, i32 %128, i32 4, i32 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %133 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  %134 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %135 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %138 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i8* @devm_kcalloc(i32 %136, i32 %139, i32 4, i32 %140)
  %142 = bitcast i8* %141 to %struct.TYPE_5__*
  %143 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %144 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %143, i32 0, i32 4
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %144, align 8
  %145 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %145, i32 0, i32 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = icmp ne %struct.TYPE_5__* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %122
  %150 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %151 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %161, label %154

154:                                              ; preds = %149, %122
  %155 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %156 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_err(i32 %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %289

161:                                              ; preds = %149
  %162 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %163 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %166 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 4, %168
  %170 = trunc i64 %169 to i32
  %171 = call i32 @memset(i32* %164, i32 1, i32 %170)
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %226, %161
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %175 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %229

178:                                              ; preds = %172
  %179 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %180 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %179, i32 0, i32 6
  %181 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %181, i64 %183
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %178
  br label %226

190:                                              ; preds = %178
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %222, %190
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %194 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %193, i32 0, i32 6
  %195 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %195, i64 %197
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %192, %201
  br i1 %202, label %203, label %225

203:                                              ; preds = %191
  %204 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %205 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %208 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %207, i32 0, i32 6
  %209 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %209, i64 %211
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %206, i64 %220
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %203
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %5, align 4
  br label %191

225:                                              ; preds = %191
  br label %226

226:                                              ; preds = %225, %189
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %172

229:                                              ; preds = %172
  %230 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %231 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 1, i32* %233, align 4
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %271, %229
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %237 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %274

240:                                              ; preds = %234
  %241 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %242 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @GFP_KERNEL, align 4
  %245 = call i8* @devm_kzalloc(i32 %243, i32 5, i32 %244)
  store i8* %245, i8** %7, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %240
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %2, align 4
  br label %289

251:                                              ; preds = %240
  %252 = load i8*, i8** %7, align 8
  %253 = load i32, i32* %4, align 4
  %254 = call i32 @snprintf(i8* %252, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* %4, align 4
  %256 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %257 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %256, i32 0, i32 4
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  store i32 %255, i32* %262, align 8
  %263 = load i8*, i8** %7, align 8
  %264 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %265 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %264, i32 0, i32 4
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 1
  store i8* %263, i8** %270, align 8
  br label %271

271:                                              ; preds = %251
  %272 = load i32, i32* %4, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %4, align 4
  br label %234

274:                                              ; preds = %234
  %275 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %276 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %275, i32 0, i32 4
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %279 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %278, i32 0, i32 3
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  store %struct.TYPE_5__* %277, %struct.TYPE_5__** %281, align 8
  %282 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %283 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.rt2880_priv*, %struct.rt2880_priv** %3, align 8
  %286 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %285, i32 0, i32 3
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  store i32 %284, i32* %288, align 8
  store i32 0, i32* %2, align 4
  br label %289

289:                                              ; preds = %274, %248, %154
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
