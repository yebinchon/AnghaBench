; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c___nd_label_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c___nd_label_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.nd_namespace_index = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@NSINDEX_SIG_LEN = common dso_local global i32 0, align 4
@NSINDEX_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"nsindex%d signature invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nsindex%d labelsize %d invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"nsindex%d checksum invalid\0A\00", align 1
@NSINDEX_SEQ_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"nsindex%d sequence: %#x invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"nsindex%d myoff: %#llx invalid\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"nsindex%d otheroff: %#llx invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"nsindex%d labeloff: %#llx invalid\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"nsindex%d mysize: %#llx invalid\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"nsindex%d nslot: %u invalid, config_size: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_drvdata*)* @__nd_label_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nd_label_validate(%struct.nvdimm_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvdimm_drvdata*, align 8
  %4 = alloca [2 x %struct.nd_namespace_index*], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %3, align 8
  %20 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 0
  %21 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %22 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %21, i32 0)
  store %struct.nd_namespace_index* %22, %struct.nd_namespace_index** %20, align 8
  %23 = getelementptr inbounds %struct.nd_namespace_index*, %struct.nd_namespace_index** %20, i64 1
  %24 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %25 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %24, i32 1)
  store %struct.nd_namespace_index* %25, %struct.nd_namespace_index** %23, align 8
  %26 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(%struct.nd_namespace_index** %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %29 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %28, i32 0, i32 1
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %6, align 8
  %31 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %293, %1
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %296

36:                                               ; preds = %32
  %37 = load i32, i32* @NSINDEX_SIG_LEN, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %12, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %13, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %42
  %44 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %43, align 8
  %45 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NSINDEX_SIG_LEN, align 4
  %48 = call i32 @memcpy(i32* %40, i32 %46, i32 %47)
  %49 = load i32, i32* @NSINDEX_SIGNATURE, align 4
  %50 = load i32, i32* @NSINDEX_SIG_LEN, align 4
  %51 = call i64 @memcmp(i32* %40, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 4, i32* %19, align 4
  br label %289

57:                                               ; preds = %36
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %59
  %61 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %60, align 8
  %62 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__le16_to_cpu(i32 %63)
  %65 = mul nsw i32 %64, 100
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %67
  %69 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %68, align 8
  %70 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__le16_to_cpu(i32 %71)
  %73 = add nsw i32 %65, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp uge i32 %74, 102
  br i1 %75, label %76, label %85

76:                                               ; preds = %57
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %78
  %80 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %79, align 8
  %81 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 7, %82
  %84 = shl i32 1, %83
  store i32 %84, i32* %18, align 4
  br label %86

85:                                               ; preds = %57
  store i32 128, i32* %18, align 4
  br label %86

86:                                               ; preds = %85, %76
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %89 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %88)
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %95
  %97 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %96, align 8
  %98 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %99)
  store i32 4, i32* %19, align 4
  br label %289

101:                                              ; preds = %86
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %103
  %105 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %104, align 8
  %106 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @__le64_to_cpu(i8* %107)
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %14, align 8
  %110 = call i8* @__cpu_to_le64(i64 0)
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %112
  %114 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %113, align 8
  %115 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %114, i32 0, i32 7
  store i8* %110, i8** %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %117
  %119 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %118, align 8
  %120 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %121 = call i32 @sizeof_namespace_index(%struct.nvdimm_drvdata* %120)
  %122 = call i64 @nd_fletcher64(%struct.nd_namespace_index* %119, i32 %121, i32 1)
  store i64 %122, i64* %15, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i8* @__cpu_to_le64(i64 %123)
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %126
  %128 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %127, align 8
  %129 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %128, i32 0, i32 7
  store i8* %124, i8** %129, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %101
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  store i32 4, i32* %19, align 4
  br label %289

137:                                              ; preds = %101
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %139
  %141 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %140, align 8
  %142 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @__le32_to_cpu(i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @NSINDEX_SEQ_MASK, align 4
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %137
  %150 = load %struct.device*, %struct.device** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %152)
  store i32 4, i32* %19, align 4
  br label %289

154:                                              ; preds = %137
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %156
  %158 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %157, align 8
  %159 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @__le64_to_cpu(i8* %160)
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %164 = call i32 @sizeof_namespace_index(%struct.nvdimm_drvdata* %163)
  %165 = mul nsw i32 %162, %164
  %166 = icmp ne i32 %161, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %154
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %171
  %173 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %172, align 8
  %174 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %173, i32 0, i32 6
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @__le64_to_cpu(i8* %175)
  %177 = sext i32 %176 to i64
  %178 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %169, i64 %177)
  store i32 4, i32* %19, align 4
  br label %289

179:                                              ; preds = %154
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %181
  %183 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %182, align 8
  %184 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %183, i32 0, i32 5
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @__le64_to_cpu(i8* %185)
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %192 = call i32 @sizeof_namespace_index(%struct.nvdimm_drvdata* %191)
  %193 = mul nsw i32 %190, %192
  %194 = icmp ne i32 %186, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %179
  %196 = load %struct.device*, %struct.device** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %199
  %201 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %200, align 8
  %202 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %201, i32 0, i32 5
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @__le64_to_cpu(i8* %203)
  %205 = sext i32 %204 to i64
  %206 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %197, i64 %205)
  store i32 4, i32* %19, align 4
  br label %289

207:                                              ; preds = %179
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %209
  %211 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %210, align 8
  %212 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %211, i32 0, i32 4
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @__le64_to_cpu(i8* %213)
  %215 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %216 = call i32 @sizeof_namespace_index(%struct.nvdimm_drvdata* %215)
  %217 = mul nsw i32 2, %216
  %218 = icmp ne i32 %214, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %207
  %220 = load %struct.device*, %struct.device** %6, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %223
  %225 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %224, align 8
  %226 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %225, i32 0, i32 4
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @__le64_to_cpu(i8* %227)
  %229 = sext i32 %228 to i64
  %230 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %221, i64 %229)
  store i32 4, i32* %19, align 4
  br label %289

231:                                              ; preds = %207
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %233
  %235 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %234, align 8
  %236 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @__le64_to_cpu(i8* %237)
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %16, align 8
  %240 = load i64, i64* %16, align 8
  %241 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %242 = call i32 @sizeof_namespace_index(%struct.nvdimm_drvdata* %241)
  %243 = sext i32 %242 to i64
  %244 = icmp sgt i64 %240, %243
  br i1 %244, label %248, label %245

245:                                              ; preds = %231
  %246 = load i64, i64* %16, align 8
  %247 = icmp ult i64 %246, 72
  br i1 %247, label %248, label %253

248:                                              ; preds = %245, %231
  %249 = load %struct.device*, %struct.device** %6, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load i64, i64* %16, align 8
  %252 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %249, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %250, i64 %251)
  store i32 4, i32* %19, align 4
  br label %289

253:                                              ; preds = %245
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 %255
  %257 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %256, align 8
  %258 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @__le32_to_cpu(i32 %259)
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %263 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %262)
  %264 = mul nsw i32 %261, %263
  %265 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %266 = call i32 @sizeof_namespace_index(%struct.nvdimm_drvdata* %265)
  %267 = mul nsw i32 2, %266
  %268 = add nsw i32 %264, %267
  %269 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %270 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp sgt i32 %268, %272
  br i1 %273, label %274, label %283

274:                                              ; preds = %253
  %275 = load %struct.device*, %struct.device** %6, align 8
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %279 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %275, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %276, i32 %277, i32 %281)
  store i32 4, i32* %19, align 4
  br label %289

283:                                              ; preds = %253
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %285
  store i32 1, i32* %286, align 4
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  store i32 0, i32* %19, align 4
  br label %289

289:                                              ; preds = %283, %274, %248, %219, %195, %167, %149, %133, %91, %53
  %290 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %290)
  %291 = load i32, i32* %19, align 4
  switch i32 %291, label %344 [
    i32 0, label %292
    i32 4, label %293
  ]

292:                                              ; preds = %289
  br label %293

293:                                              ; preds = %292, %289
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %32

296:                                              ; preds = %32
  %297 = load i32, i32* %9, align 4
  switch i32 %297, label %318 [
    i32 0, label %298
    i32 1, label %299
  ]

298:                                              ; preds = %296
  br label %341

299:                                              ; preds = %296
  store i32 0, i32* %8, align 4
  br label %300

300:                                              ; preds = %313, %299
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %5, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %316

304:                                              ; preds = %300
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = load i32, i32* %8, align 4
  store i32 %311, i32* %2, align 4
  br label %342

312:                                              ; preds = %304
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %8, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %8, align 4
  br label %300

316:                                              ; preds = %300
  %317 = call i32 @WARN_ON(i32 1)
  br label %341

318:                                              ; preds = %296
  %319 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 0
  %320 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %319, align 16
  %321 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @__le32_to_cpu(i32 %322)
  %324 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 1
  %325 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %324, align 8
  %326 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @__le32_to_cpu(i32 %327)
  %329 = call i32 @best_seq(i32 %323, i32 %328)
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %10, align 4
  %331 = getelementptr inbounds [2 x %struct.nd_namespace_index*], [2 x %struct.nd_namespace_index*]* %4, i64 0, i64 1
  %332 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %331, align 8
  %333 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @__le32_to_cpu(i32 %334)
  %336 = load i32, i32* @NSINDEX_SEQ_MASK, align 4
  %337 = and i32 %335, %336
  %338 = icmp eq i32 %330, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %318
  store i32 1, i32* %2, align 4
  br label %342

340:                                              ; preds = %318
  store i32 0, i32* %2, align 4
  br label %342

341:                                              ; preds = %316, %298
  store i32 -1, i32* %2, align 4
  br label %342

342:                                              ; preds = %341, %340, %339, %310
  %343 = load i32, i32* %2, align 4
  ret i32 %343

344:                                              ; preds = %289
  unreachable
}

declare dso_local %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nd_namespace_index**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @sizeof_namespace_label(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @__le64_to_cpu(i8*) #1

declare dso_local i8* @__cpu_to_le64(i64) #1

declare dso_local i64 @nd_fletcher64(%struct.nd_namespace_index*, i32, i32) #1

declare dso_local i32 @sizeof_namespace_index(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @best_seq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
