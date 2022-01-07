; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slave_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slave_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_slave_resource = type { i32, %struct.vme_bridge* }
%struct.vme_bridge = type { i32, %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@CA91CX42_VSI_CTL_VAS_A16 = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_A24 = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_A32 = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_USER1 = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_USER2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid VME base alignment\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid VME bound alignment\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid PCI Offset alignment\0A\00", align 1
@CA91CX42_VSI_CTL = common dso_local global i64* null, align 8
@CA91CX42_VSI_CTL_EN = common dso_local global i32 0, align 4
@CA91CX42_VSI_BS = common dso_local global i64* null, align 8
@CA91CX42_VSI_BD = common dso_local global i64* null, align 8
@CA91CX42_VSI_TO = common dso_local global i64* null, align 8
@CA91CX42_VSI_CTL_VAS_M = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_PGM_M = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_SUPER_M = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_SUPER_SUPR = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_SUPER_NPRIV = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_PGM_PGM = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_PGM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_slave_resource*, i32, i64, i64, i64, i32, i32)* @ca91cx42_slave_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_slave_set(%struct.vme_slave_resource* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
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
  %22 = alloca %struct.vme_bridge*, align 8
  %23 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %25 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %24, i32 0, i32 1
  %26 = load %struct.vme_bridge*, %struct.vme_bridge** %25, align 8
  store %struct.vme_bridge* %26, %struct.vme_bridge** %22, align 8
  %27 = load %struct.vme_bridge*, %struct.vme_bridge** %22, align 8
  %28 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %27, i32 0, i32 1
  %29 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %28, align 8
  store %struct.ca91cx42_driver* %29, %struct.ca91cx42_driver** %23, align 8
  %30 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %31 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %14, align 4
  switch i32 %33, label %55 [
    i32 136, label %34
    i32 135, label %38
    i32 134, label %42
    i32 131, label %46
    i32 130, label %50
    i32 133, label %54
    i32 132, label %54
    i32 129, label %54
    i32 128, label %54
  ]

34:                                               ; preds = %7
  %35 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %17, align 4
  br label %62

38:                                               ; preds = %7
  %39 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A24, align 4
  %40 = load i32, i32* %17, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %17, align 4
  br label %62

42:                                               ; preds = %7
  %43 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A32, align 4
  %44 = load i32, i32* %17, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %17, align 4
  br label %62

46:                                               ; preds = %7
  %47 = load i32, i32* @CA91CX42_VSI_CTL_VAS_USER1, align 4
  %48 = load i32, i32* %17, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %17, align 4
  br label %62

50:                                               ; preds = %7
  %51 = load i32, i32* @CA91CX42_VSI_CTL_VAS_USER2, align 4
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  br label %62

54:                                               ; preds = %7, %7, %7, %7
  br label %55

55:                                               ; preds = %7, %54
  %56 = load %struct.vme_bridge*, %struct.vme_bridge** %22, align 8
  %57 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %256

62:                                               ; preds = %50, %46, %42, %38, %34
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %20, align 4
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %62
  store i32 4096, i32* %18, align 4
  br label %78

77:                                               ; preds = %73
  store i32 65536, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sub i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = and i64 %79, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.vme_bridge*, %struct.vme_bridge** %22, align 8
  %87 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %256

92:                                               ; preds = %78
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %18, align 4
  %95 = sub i32 %94, 1
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.vme_bridge*, %struct.vme_bridge** %22, align 8
  %100 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %256

105:                                              ; preds = %92
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %18, align 4
  %108 = sub i32 %107, 1
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.vme_bridge*, %struct.vme_bridge** %22, align 8
  %113 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %256

118:                                              ; preds = %105
  %119 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %23, align 8
  %120 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** @CA91CX42_VSI_CTL, align 8
  %123 = load i32, i32* %16, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %121, %126
  %128 = call i32 @ioread32(i64 %127)
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* @CA91CX42_VSI_CTL_EN, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %19, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %23, align 8
  %135 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** @CA91CX42_VSI_CTL, align 8
  %138 = load i32, i32* %16, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %136, %141
  %143 = call i32 @iowrite32(i32 %133, i64 %142)
  %144 = load i64, i64* %11, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %23, align 8
  %147 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** @CA91CX42_VSI_BS, align 8
  %150 = load i32, i32* %16, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %148, %153
  %155 = call i32 @iowrite32(i32 %145, i64 %154)
  %156 = load i32, i32* %20, align 4
  %157 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %23, align 8
  %158 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** @CA91CX42_VSI_BD, align 8
  %161 = load i32, i32* %16, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %159, %164
  %166 = call i32 @iowrite32(i32 %156, i64 %165)
  %167 = load i32, i32* %21, align 4
  %168 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %23, align 8
  %169 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** @CA91CX42_VSI_TO, align 8
  %172 = load i32, i32* %16, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %170, %175
  %177 = call i32 @iowrite32(i32 %167, i64 %176)
  %178 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %19, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %19, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* @CA91CX42_VSI_CTL_PGM_M, align 4
  %186 = load i32, i32* @CA91CX42_VSI_CTL_SUPER_M, align 4
  %187 = or i32 %185, %186
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %19, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @VME_SUPER, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %118
  %196 = load i32, i32* @CA91CX42_VSI_CTL_SUPER_SUPR, align 4
  %197 = load i32, i32* %19, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %19, align 4
  br label %199

199:                                              ; preds = %195, %118
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* @VME_USER, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i32, i32* @CA91CX42_VSI_CTL_SUPER_NPRIV, align 4
  %206 = load i32, i32* %19, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %204, %199
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @VME_PROG, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i32, i32* @CA91CX42_VSI_CTL_PGM_PGM, align 4
  %215 = load i32, i32* %19, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %19, align 4
  br label %217

217:                                              ; preds = %213, %208
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @VME_DATA, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32, i32* @CA91CX42_VSI_CTL_PGM_DATA, align 4
  %224 = load i32, i32* %19, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %19, align 4
  br label %226

226:                                              ; preds = %222, %217
  %227 = load i32, i32* %19, align 4
  %228 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %23, align 8
  %229 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** @CA91CX42_VSI_CTL, align 8
  %232 = load i32, i32* %16, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %230, %235
  %237 = call i32 @iowrite32(i32 %227, i64 %236)
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %226
  %241 = load i32, i32* @CA91CX42_VSI_CTL_EN, align 4
  %242 = load i32, i32* %19, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %19, align 4
  br label %244

244:                                              ; preds = %240, %226
  %245 = load i32, i32* %19, align 4
  %246 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %23, align 8
  %247 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64*, i64** @CA91CX42_VSI_CTL, align 8
  %250 = load i32, i32* %16, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %248, %253
  %255 = call i32 @iowrite32(i32 %245, i64 %254)
  store i32 0, i32* %8, align 4
  br label %256

256:                                              ; preds = %244, %111, %98, %85, %55
  %257 = load i32, i32* %8, align 4
  ret i32 %257
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
