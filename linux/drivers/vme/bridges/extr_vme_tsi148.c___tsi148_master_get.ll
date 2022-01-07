; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c___tsi148_master_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c___tsi148_master_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_OT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_OTAT = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTOFU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTOFL = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_A64 = common dso_local global i32 0, align 4
@VME_A64 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_CRCSR = common dso_local global i32 0, align 4
@VME_CRCSR = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_USER1 = common dso_local global i32 0, align 4
@VME_USER1 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_USER2 = common dso_local global i32 0, align 4
@VME_USER2 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_USER3 = common dso_local global i32 0, align 4
@VME_USER3 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_AMODE_USER4 = common dso_local global i32 0, align 4
@VME_USER4 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_2eSSTM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_160 = common dso_local global i32 0, align 4
@VME_2eSST160 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_2eSSTM_267 = common dso_local global i32 0, align 4
@VME_2eSST267 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_2eSST320 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_TM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_SCT = common dso_local global i32 0, align 4
@VME_SCT = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_TM_BLT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_TM_MBLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_TM_2eVME = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_TM_2eSST = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_TM_2eSSTB = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_SUP = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i64 0, align 8
@VME_USER = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i64 0, align 8
@VME_DATA = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_DBW_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_DBW_16 = common dso_local global i32 0, align 4
@VME_D16 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_DBW_32 = common dso_local global i32 0, align 4
@VME_D32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32*, i64*, i64*, i64*, i64*, i64*)* @__tsi148_master_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tsi148_master_get(%struct.vme_master_resource* %0, i32* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.vme_master_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %27 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %28 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.tsi148_driver*, %struct.tsi148_driver** %30, align 8
  store %struct.tsi148_driver* %31, %struct.tsi148_driver** %26, align 8
  %32 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %33 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %36 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %37, %42
  %44 = load i64, i64* @TSI148_LCSR_OFFSET_OTAT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ioread32be(i64 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %48 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %49, %54
  %56 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAU, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @ioread32be(i64 %57)
  store i32 %58, i32* %18, align 4
  %59 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %60 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @ioread32be(i64 %69)
  store i32 %70, i32* %17, align 4
  %71 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %72 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = load i64, i64* @TSI148_LCSR_OFFSET_OTEAU, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @ioread32be(i64 %81)
  store i32 %82, i32* %20, align 4
  %83 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %84 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %85, %90
  %92 = load i64, i64* @TSI148_LCSR_OFFSET_OTEAL, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @ioread32be(i64 %93)
  store i32 %94, i32* %19, align 4
  %95 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %96 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = load i64, i64* @TSI148_LCSR_OFFSET_OTOFU, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @ioread32be(i64 %105)
  store i32 %106, i32* %22, align 4
  %107 = load %struct.tsi148_driver*, %struct.tsi148_driver** %26, align 8
  %108 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %111 = load i32, i32* %15, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = load i64, i64* @TSI148_LCSR_OFFSET_OTOFL, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @ioread32be(i64 %117)
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @reg_join(i32 %119, i32 %120, i64* %23)
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @reg_join(i32 %122, i32 %123, i64* %24)
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %21, align 4
  %127 = call i32 @reg_join(i32 %125, i32 %126, i64* %25)
  %128 = load i64, i64* %23, align 8
  %129 = load i64, i64* %25, align 8
  %130 = add i64 %128, %129
  %131 = load i64*, i64** %10, align 8
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* %24, align 8
  %133 = load i64, i64* %23, align 8
  %134 = sub i64 %132, %133
  %135 = add i64 %134, 65536
  %136 = load i64*, i64** %11, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i32*, i32** %9, align 8
  store i32 0, i32* %137, align 4
  %138 = load i64*, i64** %12, align 8
  store i64 0, i64* %138, align 8
  %139 = load i64*, i64** %13, align 8
  store i64 0, i64* %139, align 8
  %140 = load i64*, i64** %14, align 8
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @TSI148_LCSR_OTAT_EN, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %7
  %146 = load i32*, i32** %9, align 8
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %145, %7
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A16, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load i64, i64* @VME_A16, align 8
  %155 = load i64*, i64** %12, align 8
  %156 = load i64, i64* %155, align 8
  %157 = or i64 %156, %154
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %153, %147
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A24, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load i64, i64* @VME_A24, align 8
  %166 = load i64*, i64** %12, align 8
  %167 = load i64, i64* %166, align 8
  %168 = or i64 %167, %165
  store i64 %168, i64* %166, align 8
  br label %169

169:                                              ; preds = %164, %158
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A32, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load i64, i64* @VME_A32, align 8
  %177 = load i64*, i64** %12, align 8
  %178 = load i64, i64* %177, align 8
  %179 = or i64 %178, %176
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %175, %169
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %183 = and i32 %181, %182
  %184 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A64, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load i64, i64* @VME_A64, align 8
  %188 = load i64*, i64** %12, align 8
  %189 = load i64, i64* %188, align 8
  %190 = or i64 %189, %187
  store i64 %190, i64* %188, align 8
  br label %191

191:                                              ; preds = %186, %180
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_CRCSR, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load i64, i64* @VME_CRCSR, align 8
  %199 = load i64*, i64** %12, align 8
  %200 = load i64, i64* %199, align 8
  %201 = or i64 %200, %198
  store i64 %201, i64* %199, align 8
  br label %202

202:                                              ; preds = %197, %191
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER1, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load i64, i64* @VME_USER1, align 8
  %210 = load i64*, i64** %12, align 8
  %211 = load i64, i64* %210, align 8
  %212 = or i64 %211, %209
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %208, %202
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER2, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = load i64, i64* @VME_USER2, align 8
  %221 = load i64*, i64** %12, align 8
  %222 = load i64, i64* %221, align 8
  %223 = or i64 %222, %220
  store i64 %223, i64* %221, align 8
  br label %224

224:                                              ; preds = %219, %213
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER3, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i64, i64* @VME_USER3, align 8
  %232 = load i64*, i64** %12, align 8
  %233 = load i64, i64* %232, align 8
  %234 = or i64 %233, %231
  store i64 %234, i64* %232, align 8
  br label %235

235:                                              ; preds = %230, %224
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %238 = and i32 %236, %237
  %239 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER4, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %235
  %242 = load i64, i64* @VME_USER4, align 8
  %243 = load i64*, i64** %12, align 8
  %244 = load i64, i64* %243, align 8
  %245 = or i64 %244, %242
  store i64 %245, i64* %243, align 8
  br label %246

246:                                              ; preds = %241, %235
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_M, align 4
  %249 = and i32 %247, %248
  %250 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_160, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %246
  %253 = load i64, i64* @VME_2eSST160, align 8
  %254 = load i64*, i64** %13, align 8
  %255 = load i64, i64* %254, align 8
  %256 = or i64 %255, %253
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %252, %246
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_M, align 4
  %260 = and i32 %258, %259
  %261 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_267, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load i64, i64* @VME_2eSST267, align 8
  %265 = load i64*, i64** %13, align 8
  %266 = load i64, i64* %265, align 8
  %267 = or i64 %266, %264
  store i64 %267, i64* %265, align 8
  br label %268

268:                                              ; preds = %263, %257
  %269 = load i32, i32* %16, align 4
  %270 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_M, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_320, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load i64, i64* @VME_2eSST320, align 8
  %276 = load i64*, i64** %13, align 8
  %277 = load i64, i64* %276, align 8
  %278 = or i64 %277, %275
  store i64 %278, i64* %276, align 8
  br label %279

279:                                              ; preds = %274, %268
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* @TSI148_LCSR_OTAT_TM_SCT, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %279
  %286 = load i64, i64* @VME_SCT, align 8
  %287 = load i64*, i64** %13, align 8
  %288 = load i64, i64* %287, align 8
  %289 = or i64 %288, %286
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %285, %279
  %291 = load i32, i32* %16, align 4
  %292 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %293 = and i32 %291, %292
  %294 = load i32, i32* @TSI148_LCSR_OTAT_TM_BLT, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %290
  %297 = load i64, i64* @VME_BLT, align 8
  %298 = load i64*, i64** %13, align 8
  %299 = load i64, i64* %298, align 8
  %300 = or i64 %299, %297
  store i64 %300, i64* %298, align 8
  br label %301

301:                                              ; preds = %296, %290
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %304 = and i32 %302, %303
  %305 = load i32, i32* @TSI148_LCSR_OTAT_TM_MBLT, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %312

307:                                              ; preds = %301
  %308 = load i64, i64* @VME_MBLT, align 8
  %309 = load i64*, i64** %13, align 8
  %310 = load i64, i64* %309, align 8
  %311 = or i64 %310, %308
  store i64 %311, i64* %309, align 8
  br label %312

312:                                              ; preds = %307, %301
  %313 = load i32, i32* %16, align 4
  %314 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %315 = and i32 %313, %314
  %316 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eVME, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %312
  %319 = load i64, i64* @VME_2eVME, align 8
  %320 = load i64*, i64** %13, align 8
  %321 = load i64, i64* %320, align 8
  %322 = or i64 %321, %319
  store i64 %322, i64* %320, align 8
  br label %323

323:                                              ; preds = %318, %312
  %324 = load i32, i32* %16, align 4
  %325 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %326 = and i32 %324, %325
  %327 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eSST, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %323
  %330 = load i64, i64* @VME_2eSST, align 8
  %331 = load i64*, i64** %13, align 8
  %332 = load i64, i64* %331, align 8
  %333 = or i64 %332, %330
  store i64 %333, i64* %331, align 8
  br label %334

334:                                              ; preds = %329, %323
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %337 = and i32 %335, %336
  %338 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eSSTB, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %334
  %341 = load i64, i64* @VME_2eSSTB, align 8
  %342 = load i64*, i64** %13, align 8
  %343 = load i64, i64* %342, align 8
  %344 = or i64 %343, %341
  store i64 %344, i64* %342, align 8
  br label %345

345:                                              ; preds = %340, %334
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* @TSI148_LCSR_OTAT_SUP, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %345
  %351 = load i64, i64* @VME_SUPER, align 8
  %352 = load i64*, i64** %13, align 8
  %353 = load i64, i64* %352, align 8
  %354 = or i64 %353, %351
  store i64 %354, i64* %352, align 8
  br label %360

355:                                              ; preds = %345
  %356 = load i64, i64* @VME_USER, align 8
  %357 = load i64*, i64** %13, align 8
  %358 = load i64, i64* %357, align 8
  %359 = or i64 %358, %356
  store i64 %359, i64* %357, align 8
  br label %360

360:                                              ; preds = %355, %350
  %361 = load i32, i32* %16, align 4
  %362 = load i32, i32* @TSI148_LCSR_OTAT_PGM, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %360
  %366 = load i64, i64* @VME_PROG, align 8
  %367 = load i64*, i64** %13, align 8
  %368 = load i64, i64* %367, align 8
  %369 = or i64 %368, %366
  store i64 %369, i64* %367, align 8
  br label %375

370:                                              ; preds = %360
  %371 = load i64, i64* @VME_DATA, align 8
  %372 = load i64*, i64** %13, align 8
  %373 = load i64, i64* %372, align 8
  %374 = or i64 %373, %371
  store i64 %374, i64* %372, align 8
  br label %375

375:                                              ; preds = %370, %365
  %376 = load i32, i32* %16, align 4
  %377 = load i32, i32* @TSI148_LCSR_OTAT_DBW_M, align 4
  %378 = and i32 %376, %377
  %379 = load i32, i32* @TSI148_LCSR_OTAT_DBW_16, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %375
  %382 = load i64, i64* @VME_D16, align 8
  %383 = load i64*, i64** %14, align 8
  store i64 %382, i64* %383, align 8
  br label %384

384:                                              ; preds = %381, %375
  %385 = load i32, i32* %16, align 4
  %386 = load i32, i32* @TSI148_LCSR_OTAT_DBW_M, align 4
  %387 = and i32 %385, %386
  %388 = load i32, i32* @TSI148_LCSR_OTAT_DBW_32, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %393

390:                                              ; preds = %384
  %391 = load i64, i64* @VME_D32, align 8
  %392 = load i64*, i64** %14, align 8
  store i64 %391, i64* %392, align 8
  br label %393

393:                                              ; preds = %390, %384
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
