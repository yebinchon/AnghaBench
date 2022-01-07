; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_master_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_master_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i32, %struct.TYPE_2__, %struct.vme_bridge* }
%struct.TYPE_2__ = type { i64 }
%struct.vme_bridge = type { i32, %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid VME Window alignment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for resource name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL = common dso_local global i64* null, align 8
@CA91CX42_LSI_CTL_EN = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VCT_M = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VCT_BLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VCT_MBLT = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VDW_M = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VDW_D8 = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VDW_D16 = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VDW_D32 = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VDW_D64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid data width\0A\00", align 1
@CA91CX42_LSI_CTL_VAS_M = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_A16 = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_A24 = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_A32 = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_CRCSR = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_USER1 = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_USER2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@CA91CX42_LSI_CTL_PGM_M = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_SUPER_M = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_SUPER_SUPR = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_PGM_PGM = common dso_local global i32 0, align 4
@CA91CX42_LSI_BS = common dso_local global i64* null, align 8
@CA91CX42_LSI_BD = common dso_local global i64* null, align 8
@CA91CX42_LSI_TO = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32, i64, i64, i32, i32, i32)* @ca91cx42_master_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_master_set(%struct.vme_master_resource* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_master_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.vme_bridge*, align 8
  %24 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %26 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %25, i32 0, i32 3
  %27 = load %struct.vme_bridge*, %struct.vme_bridge** %26, align 8
  store %struct.vme_bridge* %27, %struct.vme_bridge** %23, align 8
  %28 = load %struct.vme_bridge*, %struct.vme_bridge** %23, align 8
  %29 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %28, i32 0, i32 1
  %30 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %29, align 8
  store %struct.ca91cx42_driver* %30, %struct.ca91cx42_driver** %24, align 8
  %31 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %32 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load i32, i32* %17, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %7
  store i32 4096, i32* %18, align 4
  br label %41

40:                                               ; preds = %36
  store i32 65536, i32* %18, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sub i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = and i64 %42, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.vme_bridge*, %struct.vme_bridge** %23, align 8
  %50 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %16, align 4
  br label %316

55:                                               ; preds = %41
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sub i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.vme_bridge*, %struct.vme_bridge** %23, align 8
  %64 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  br label %316

69:                                               ; preds = %55
  %70 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %71 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %70, i32 0, i32 1
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @ca91cx42_alloc_resource(%struct.vme_master_resource* %73, i64 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %80 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.vme_bridge*, %struct.vme_bridge** %23, align 8
  %83 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %16, align 4
  br label %315

88:                                               ; preds = %69
  %89 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %90 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %22, align 8
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %93, %94
  store i64 %95, i64* %20, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %22, align 8
  %98 = sub i64 %96, %97
  store i64 %98, i64* %21, align 8
  %99 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  %100 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** @CA91CX42_LSI_CTL, align 8
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %101, %106
  %108 = call i32 @ioread32(i64 %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* @CA91CX42_LSI_CTL_EN, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %19, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  %115 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** @CA91CX42_LSI_CTL, align 8
  %118 = load i32, i32* %17, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %116, %121
  %123 = call i32 @iowrite32(i32 %113, i64 %122)
  %124 = load i32, i32* @CA91CX42_LSI_CTL_VCT_M, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %19, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @VME_BLT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %88
  %133 = load i32, i32* @CA91CX42_LSI_CTL_VCT_BLT, align 4
  %134 = load i32, i32* %19, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %132, %88
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @VME_MBLT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @CA91CX42_LSI_CTL_VCT_MBLT, align 4
  %143 = load i32, i32* %19, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %19, align 4
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i32, i32* @CA91CX42_LSI_CTL_VDW_M, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %19, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %15, align 4
  switch i32 %150, label %167 [
    i32 132, label %151
    i32 135, label %155
    i32 134, label %159
    i32 133, label %163
  ]

151:                                              ; preds = %145
  %152 = load i32, i32* @CA91CX42_LSI_CTL_VDW_D8, align 4
  %153 = load i32, i32* %19, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %19, align 4
  br label %177

155:                                              ; preds = %145
  %156 = load i32, i32* @CA91CX42_LSI_CTL_VDW_D16, align 4
  %157 = load i32, i32* %19, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %19, align 4
  br label %177

159:                                              ; preds = %145
  %160 = load i32, i32* @CA91CX42_LSI_CTL_VDW_D32, align 4
  %161 = load i32, i32* %19, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %19, align 4
  br label %177

163:                                              ; preds = %145
  %164 = load i32, i32* @CA91CX42_LSI_CTL_VDW_D64, align 4
  %165 = load i32, i32* %19, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %19, align 4
  br label %177

167:                                              ; preds = %145
  %168 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %169 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %168, i32 0, i32 1
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load %struct.vme_bridge*, %struct.vme_bridge** %23, align 8
  %172 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %16, align 4
  br label %312

177:                                              ; preds = %163, %159, %155, %151
  %178 = load i32, i32* @CA91CX42_LSI_CTL_VAS_M, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %19, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %13, align 4
  switch i32 %182, label %208 [
    i32 140, label %183
    i32 139, label %187
    i32 138, label %191
    i32 136, label %195
    i32 131, label %199
    i32 130, label %203
    i32 137, label %207
    i32 129, label %207
    i32 128, label %207
  ]

183:                                              ; preds = %177
  %184 = load i32, i32* @CA91CX42_LSI_CTL_VAS_A16, align 4
  %185 = load i32, i32* %19, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %19, align 4
  br label %218

187:                                              ; preds = %177
  %188 = load i32, i32* @CA91CX42_LSI_CTL_VAS_A24, align 4
  %189 = load i32, i32* %19, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %19, align 4
  br label %218

191:                                              ; preds = %177
  %192 = load i32, i32* @CA91CX42_LSI_CTL_VAS_A32, align 4
  %193 = load i32, i32* %19, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %19, align 4
  br label %218

195:                                              ; preds = %177
  %196 = load i32, i32* @CA91CX42_LSI_CTL_VAS_CRCSR, align 4
  %197 = load i32, i32* %19, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %19, align 4
  br label %218

199:                                              ; preds = %177
  %200 = load i32, i32* @CA91CX42_LSI_CTL_VAS_USER1, align 4
  %201 = load i32, i32* %19, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %19, align 4
  br label %218

203:                                              ; preds = %177
  %204 = load i32, i32* @CA91CX42_LSI_CTL_VAS_USER2, align 4
  %205 = load i32, i32* %19, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %19, align 4
  br label %218

207:                                              ; preds = %177, %177, %177
  br label %208

208:                                              ; preds = %177, %207
  %209 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %210 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %209, i32 0, i32 1
  %211 = call i32 @spin_unlock(i32* %210)
  %212 = load %struct.vme_bridge*, %struct.vme_bridge** %23, align 8
  %213 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @dev_err(i32 %214, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %16, align 4
  br label %311

218:                                              ; preds = %203, %199, %195, %191, %187, %183
  %219 = load i32, i32* @CA91CX42_LSI_CTL_PGM_M, align 4
  %220 = load i32, i32* @CA91CX42_LSI_CTL_SUPER_M, align 4
  %221 = or i32 %219, %220
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %19, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %19, align 4
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* @VME_SUPER, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %218
  %230 = load i32, i32* @CA91CX42_LSI_CTL_SUPER_SUPR, align 4
  %231 = load i32, i32* %19, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %19, align 4
  br label %233

233:                                              ; preds = %229, %218
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* @VME_PROG, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i32, i32* @CA91CX42_LSI_CTL_PGM_PGM, align 4
  %240 = load i32, i32* %19, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %19, align 4
  br label %242

242:                                              ; preds = %238, %233
  %243 = load i64, i64* %22, align 8
  %244 = trunc i64 %243 to i32
  %245 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  %246 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64*, i64** @CA91CX42_LSI_BS, align 8
  %249 = load i32, i32* %17, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %247, %252
  %254 = call i32 @iowrite32(i32 %244, i64 %253)
  %255 = load i64, i64* %20, align 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  %258 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64*, i64** @CA91CX42_LSI_BD, align 8
  %261 = load i32, i32* %17, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %259, %264
  %266 = call i32 @iowrite32(i32 %256, i64 %265)
  %267 = load i64, i64* %21, align 8
  %268 = trunc i64 %267 to i32
  %269 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  %270 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64*, i64** @CA91CX42_LSI_TO, align 8
  %273 = load i32, i32* %17, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %271, %276
  %278 = call i32 @iowrite32(i32 %268, i64 %277)
  %279 = load i32, i32* %19, align 4
  %280 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  %281 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64*, i64** @CA91CX42_LSI_CTL, align 8
  %284 = load i32, i32* %17, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %282, %287
  %289 = call i32 @iowrite32(i32 %279, i64 %288)
  %290 = load i32, i32* %10, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %242
  %293 = load i32, i32* @CA91CX42_LSI_CTL_EN, align 4
  %294 = load i32, i32* %19, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %19, align 4
  br label %296

296:                                              ; preds = %292, %242
  %297 = load i32, i32* %19, align 4
  %298 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  %299 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64*, i64** @CA91CX42_LSI_CTL, align 8
  %302 = load i32, i32* %17, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %300, %305
  %307 = call i32 @iowrite32(i32 %297, i64 %306)
  %308 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %309 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %308, i32 0, i32 1
  %310 = call i32 @spin_unlock(i32* %309)
  store i32 0, i32* %8, align 4
  br label %318

311:                                              ; preds = %208
  br label %312

312:                                              ; preds = %311, %167
  %313 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %314 = call i32 @ca91cx42_free_resource(%struct.vme_master_resource* %313)
  br label %315

315:                                              ; preds = %312, %78
  br label %316

316:                                              ; preds = %315, %62, %48
  %317 = load i32, i32* %16, align 4
  store i32 %317, i32* %8, align 4
  br label %318

318:                                              ; preds = %316, %296
  %319 = load i32, i32* %8, align 4
  ret i32 %319
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ca91cx42_alloc_resource(%struct.vme_master_resource*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ca91cx42_free_resource(%struct.vme_master_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
