; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_slave_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_slave_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_slave_resource = type { i32, %struct.vme_bridge* }
%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_ITAT_AS_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid VME base alignment\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid VME bound alignment\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid PCI Offset alignment\0A\00", align 1
@TSI148_LCSR_IT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_ITAT = common dso_local global i64 0, align 8
@TSI148_LCSR_ITAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_OFFSET_ITSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFL = common dso_local global i64 0, align 8
@TSI148_LCSR_ITAT_2eSSTM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_160 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_267 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_BLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_MBLT = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eVME = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSST = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_M = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_SUPR = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_NPRIV = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_PGM = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_slave_resource*, i32, i64, i64, i64, i32, i32)* @tsi148_slave_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_slave_set(%struct.vme_slave_resource* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_slave_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.vme_bridge*, align 8
  %29 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %30 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %31 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %30, i32 0, i32 1
  %32 = load %struct.vme_bridge*, %struct.vme_bridge** %31, align 8
  store %struct.vme_bridge* %32, %struct.vme_bridge** %28, align 8
  %33 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %34 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %33, i32 0, i32 1
  %35 = load %struct.tsi148_driver*, %struct.tsi148_driver** %34, align 8
  store %struct.tsi148_driver* %35, %struct.tsi148_driver** %29, align 8
  %36 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %37 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  switch i32 %39, label %56 [
    i32 131, label %40
    i32 130, label %44
    i32 129, label %48
    i32 128, label %52
  ]

40:                                               ; preds = %7
  store i32 16, i32* %18, align 4
  %41 = load i32, i32* @TSI148_LCSR_ITAT_AS_A16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %17, align 4
  br label %63

44:                                               ; preds = %7
  store i32 4096, i32* %18, align 4
  %45 = load i32, i32* @TSI148_LCSR_ITAT_AS_A24, align 4
  %46 = load i32, i32* %17, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %17, align 4
  br label %63

48:                                               ; preds = %7
  store i32 65536, i32* %18, align 4
  %49 = load i32, i32* @TSI148_LCSR_ITAT_AS_A32, align 4
  %50 = load i32, i32* %17, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %17, align 4
  br label %63

52:                                               ; preds = %7
  store i32 65536, i32* %18, align 4
  %53 = load i32, i32* @TSI148_LCSR_ITAT_AS_A64, align 4
  %54 = load i32, i32* %17, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %17, align 4
  br label %63

56:                                               ; preds = %7
  %57 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %58 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %369

63:                                               ; preds = %52, %48, %44, %40
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @reg_split(i64 %64, i32* %21, i32* %20)
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %66, %67
  %69 = load i32, i32* %18, align 4
  %70 = zext i32 %69 to i64
  %71 = sub i64 %68, %70
  store i64 %71, i64* %26, align 8
  %72 = load i64, i64* %26, align 8
  %73 = call i32 @reg_split(i64 %72, i32* %23, i32* %22)
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %27, align 8
  %77 = load i64, i64* %27, align 8
  %78 = call i32 @reg_split(i64 %77, i32* %25, i32* %24)
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %18, align 4
  %81 = sub i32 %80, 1
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %63
  %85 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %86 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %369

91:                                               ; preds = %63
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %18, align 4
  %94 = sub i32 %93, 1
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %99 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %369

104:                                              ; preds = %91
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %18, align 4
  %107 = sub i32 %106, 1
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.vme_bridge*, %struct.vme_bridge** %28, align 8
  %112 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %369

117:                                              ; preds = %104
  %118 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %119 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %122 = load i32, i32* %16, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %120, %125
  %127 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @ioread32be(i64 %128)
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* @TSI148_LCSR_ITAT_EN, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %19, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %136 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %139 = load i32, i32* %16, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %137, %142
  %144 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @iowrite32be(i32 %134, i64 %145)
  %147 = load i32, i32* %21, align 4
  %148 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %149 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %152 = load i32, i32* %16, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %150, %155
  %157 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAU, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @iowrite32be(i32 %147, i64 %158)
  %160 = load i32, i32* %20, align 4
  %161 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %162 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %165 = load i32, i32* %16, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %163, %168
  %170 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAL, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @iowrite32be(i32 %160, i64 %171)
  %173 = load i32, i32* %23, align 4
  %174 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %175 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %178 = load i32, i32* %16, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %176, %181
  %183 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAU, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @iowrite32be(i32 %173, i64 %184)
  %186 = load i32, i32* %22, align 4
  %187 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %188 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %191 = load i32, i32* %16, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %189, %194
  %196 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAL, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @iowrite32be(i32 %186, i64 %197)
  %199 = load i32, i32* %25, align 4
  %200 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %201 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %204 = load i32, i32* %16, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %202, %207
  %209 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFU, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @iowrite32be(i32 %199, i64 %210)
  %212 = load i32, i32* %24, align 4
  %213 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %214 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %217 = load i32, i32* %16, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %215, %220
  %222 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFL, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @iowrite32be(i32 %212, i64 %223)
  %225 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %226 = xor i32 %225, -1
  %227 = load i32, i32* %19, align 4
  %228 = and i32 %227, %226
  store i32 %228, i32* %19, align 4
  %229 = load i32, i32* %15, align 4
  %230 = and i32 %229, 135
  switch i32 %230, label %243 [
    i32 134, label %231
    i32 133, label %235
    i32 132, label %239
  ]

231:                                              ; preds = %117
  %232 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_160, align 4
  %233 = load i32, i32* %19, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %19, align 4
  br label %243

235:                                              ; preds = %117
  %236 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_267, align 4
  %237 = load i32, i32* %19, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %19, align 4
  br label %243

239:                                              ; preds = %117
  %240 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_320, align 4
  %241 = load i32, i32* %19, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %19, align 4
  br label %243

243:                                              ; preds = %117, %239, %235, %231
  %244 = load i32, i32* %19, align 4
  %245 = and i32 %244, -3969
  store i32 %245, i32* %19, align 4
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* @VME_BLT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load i32, i32* @TSI148_LCSR_ITAT_BLT, align 4
  %252 = load i32, i32* %19, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %19, align 4
  br label %254

254:                                              ; preds = %250, %243
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* @VME_MBLT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load i32, i32* @TSI148_LCSR_ITAT_MBLT, align 4
  %261 = load i32, i32* %19, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %19, align 4
  br label %263

263:                                              ; preds = %259, %254
  %264 = load i32, i32* %15, align 4
  %265 = load i32, i32* @VME_2eVME, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, i32* @TSI148_LCSR_ITAT_2eVME, align 4
  %270 = load i32, i32* %19, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %19, align 4
  br label %272

272:                                              ; preds = %268, %263
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* @VME_2eSST, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load i32, i32* @TSI148_LCSR_ITAT_2eSST, align 4
  %279 = load i32, i32* %19, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %19, align 4
  br label %281

281:                                              ; preds = %277, %272
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* @VME_2eSSTB, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTB, align 4
  %288 = load i32, i32* %19, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %19, align 4
  br label %290

290:                                              ; preds = %286, %281
  %291 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %19, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %19, align 4
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* %19, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %19, align 4
  %298 = load i32, i32* %19, align 4
  %299 = and i32 %298, -16
  store i32 %299, i32* %19, align 4
  %300 = load i32, i32* %15, align 4
  %301 = load i32, i32* @VME_SUPER, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %290
  %305 = load i32, i32* @TSI148_LCSR_ITAT_SUPR, align 4
  %306 = load i32, i32* %19, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %19, align 4
  br label %308

308:                                              ; preds = %304, %290
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* @VME_USER, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = load i32, i32* @TSI148_LCSR_ITAT_NPRIV, align 4
  %315 = load i32, i32* %19, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %19, align 4
  br label %317

317:                                              ; preds = %313, %308
  %318 = load i32, i32* %15, align 4
  %319 = load i32, i32* @VME_PROG, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %317
  %323 = load i32, i32* @TSI148_LCSR_ITAT_PGM, align 4
  %324 = load i32, i32* %19, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %19, align 4
  br label %326

326:                                              ; preds = %322, %317
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* @VME_DATA, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %326
  %332 = load i32, i32* @TSI148_LCSR_ITAT_DATA, align 4
  %333 = load i32, i32* %19, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %19, align 4
  br label %335

335:                                              ; preds = %331, %326
  %336 = load i32, i32* %19, align 4
  %337 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %338 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %341 = load i32, i32* %16, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i64, i64* %340, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = add nsw i64 %339, %344
  %346 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %347 = add nsw i64 %345, %346
  %348 = call i32 @iowrite32be(i32 %336, i64 %347)
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %335
  %352 = load i32, i32* @TSI148_LCSR_ITAT_EN, align 4
  %353 = load i32, i32* %19, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %19, align 4
  br label %355

355:                                              ; preds = %351, %335
  %356 = load i32, i32* %19, align 4
  %357 = load %struct.tsi148_driver*, %struct.tsi148_driver** %29, align 8
  %358 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %361 = load i32, i32* %16, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %359, %364
  %366 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %367 = add nsw i64 %365, %366
  %368 = call i32 @iowrite32be(i32 %356, i64 %367)
  store i32 0, i32* %8, align 4
  br label %369

369:                                              ; preds = %355, %110, %97, %84, %56
  %370 = load i32, i32* %8, align 4
  ret i32 %370
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reg_split(i64, i32*, i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
