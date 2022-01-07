; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_slave_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_slave_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_slave_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_IT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_ITAT = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFL = common dso_local global i64 0, align 8
@TSI148_LCSR_ITAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_M = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A64 = common dso_local global i32 0, align 4
@VME_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_160 = common dso_local global i32 0, align 4
@VME_2eSST160 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_267 = common dso_local global i32 0, align 4
@VME_2eSST267 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_2eSST320 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_BLT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_MBLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eVME = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSST = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTB = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_NPRIV = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_DATA = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_slave_resource*, i32*, i64*, i64*, i64*, i32*, i32*)* @tsi148_slave_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_slave_get(%struct.vme_slave_resource* %0, i32* %1, i64* %2, i64* %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.vme_slave_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %8, align 8
  %28 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.tsi148_driver*, %struct.tsi148_driver** %30, align 8
  store %struct.tsi148_driver* %31, %struct.tsi148_driver** %26, align 8
  %32 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %8, align 8
  %33 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %36 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %37, %42
  %44 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ioread32be(i64 %45)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %48 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %49, %54
  %56 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAU, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @ioread32be(i64 %57)
  store i32 %58, i32* %19, align 4
  %59 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %60 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @ioread32be(i64 %69)
  store i32 %70, i32* %18, align 4
  %71 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %72 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAU, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @ioread32be(i64 %81)
  store i32 %82, i32* %21, align 4
  %83 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %84 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %85, %90
  %92 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAL, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @ioread32be(i64 %93)
  store i32 %94, i32* %20, align 4
  %95 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %96 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFU, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @ioread32be(i64 %105)
  store i32 %106, i32* %23, align 4
  %107 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %108 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %111 = load i32, i32* %15, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFL, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @ioread32be(i64 %117)
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i64*, i64** %10, align 8
  %122 = call i32 @reg_join(i32 %119, i32 %120, i64* %121)
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @reg_join(i32 %123, i32 %124, i64* %24)
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @reg_join(i32 %126, i32 %127, i64* %25)
  %129 = load i64*, i64** %10, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %25, align 8
  %132 = add i64 %130, %131
  %133 = load i64*, i64** %12, align 8
  store i64 %132, i64* %133, align 8
  %134 = load i32*, i32** %9, align 8
  store i32 0, i32* %134, align 4
  %135 = load i32*, i32** %13, align 8
  store i32 0, i32* %135, align 4
  %136 = load i32*, i32** %14, align 8
  store i32 0, i32* %136, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* @TSI148_LCSR_ITAT_EN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %7
  %142 = load i32*, i32** %9, align 8
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %141, %7
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @TSI148_LCSR_ITAT_AS_A16, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  store i32 16, i32* %16, align 4
  %150 = load i32, i32* @VME_A16, align 4
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %149, %143
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @TSI148_LCSR_ITAT_AS_A24, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  store i32 4096, i32* %16, align 4
  %161 = load i32, i32* @VME_A24, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %160, %154
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* @TSI148_LCSR_ITAT_AS_A32, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  store i32 65536, i32* %16, align 4
  %172 = load i32, i32* @VME_A32, align 4
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %172
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %171, %165
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* @TSI148_LCSR_ITAT_AS_A64, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  store i32 65536, i32* %16, align 4
  %183 = load i32, i32* @VME_A64, align 4
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %183
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %182, %176
  %188 = load i64, i64* %24, align 8
  %189 = load i64*, i64** %10, align 8
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %188, %190
  %192 = load i32, i32* %16, align 4
  %193 = zext i32 %192 to i64
  %194 = add i64 %191, %193
  %195 = load i64*, i64** %11, align 8
  store i64 %194, i64* %195, align 8
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %198 = and i32 %196, %197
  %199 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_160, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %187
  %202 = load i32, i32* @VME_2eSST160, align 4
  %203 = load i32*, i32** %14, align 8
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %202
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %201, %187
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %209 = and i32 %207, %208
  %210 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_267, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  %213 = load i32, i32* @VME_2eSST267, align 4
  %214 = load i32*, i32** %14, align 8
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %212, %206
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_320, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load i32, i32* @VME_2eSST320, align 4
  %225 = load i32*, i32** %14, align 8
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %224
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %223, %217
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @TSI148_LCSR_ITAT_BLT, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i32, i32* @VME_BLT, align 4
  %235 = load i32*, i32** %14, align 8
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %234
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %233, %228
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* @TSI148_LCSR_ITAT_MBLT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load i32, i32* @VME_MBLT, align 4
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %244
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %243, %238
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* @TSI148_LCSR_ITAT_2eVME, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load i32, i32* @VME_2eVME, align 4
  %255 = load i32*, i32** %14, align 8
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %254
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %253, %248
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* @TSI148_LCSR_ITAT_2eSST, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i32, i32* @VME_2eSST, align 4
  %265 = load i32*, i32** %14, align 8
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %264
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %263, %258
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTB, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load i32, i32* @VME_2eSSTB, align 4
  %275 = load i32*, i32** %14, align 8
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %274
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %273, %268
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* @TSI148_LCSR_ITAT_SUPR, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load i32, i32* @VME_SUPER, align 4
  %285 = load i32*, i32** %14, align 8
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %284
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %283, %278
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* @TSI148_LCSR_ITAT_NPRIV, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load i32, i32* @VME_USER, align 4
  %295 = load i32*, i32** %14, align 8
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %294
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %293, %288
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* @TSI148_LCSR_ITAT_PGM, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load i32, i32* @VME_PROG, align 4
  %305 = load i32*, i32** %14, align 8
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %304
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %303, %298
  %309 = load i32, i32* %17, align 4
  %310 = load i32, i32* @TSI148_LCSR_ITAT_DATA, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load i32, i32* @VME_DATA, align 4
  %315 = load i32*, i32** %14, align 8
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %314
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %313, %308
  ret i32 0
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @reg_join(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
