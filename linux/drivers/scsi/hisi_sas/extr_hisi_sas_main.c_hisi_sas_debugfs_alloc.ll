; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, i32, i32, %struct.device*, %struct.hisi_sas_hw* }
%struct.device = type { i32 }
%struct.hisi_sas_hw = type { i32, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@DEBUGFS_GLOBAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DEBUGFS_AXI = common dso_local global i64 0, align 8
@DEBUGFS_RAS = common dso_local global i64 0, align 8
@HISI_SAS_QUEUE_SLOTS = common dso_local global i32 0, align 4
@HISI_SAS_MAX_COMMANDS = common dso_local global i32 0, align 4
@HISI_SAS_IOST_ITCT_CACHE_NUM = common dso_local global i32 0, align 4
@HISI_SAS_MAX_ITCT_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @hisi_sas_debugfs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_debugfs_alloc(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_hw*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 13
  %12 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %11, align 8
  store %struct.hisi_sas_hw* %12, %struct.hisi_sas_hw** %4, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 12
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i64, i64* @DEBUGFS_GLOBAL, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %9, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kmalloc(%struct.device* %32, i64 %33, i32 %34)
  %36 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %36, i32 0, i32 8
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* @DEBUGFS_GLOBAL, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  store i8* %35, i8** %40, align 8
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %42 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %41, i32 0, i32 8
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* @DEBUGFS_GLOBAL, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  br label %275

49:                                               ; preds = %1
  %50 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %4, align 8
  %51 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %84, %49
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %60 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @devm_kmalloc(%struct.device* %64, i64 %65, i32 %66)
  %68 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %69 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %68, i32 0, i32 9
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  %74 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %75 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %74, i32 0, i32 9
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %63
  br label %275

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %57

87:                                               ; preds = %57
  %88 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %4, align 8
  %89 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %89, align 8
  %91 = load i64, i64* @DEBUGFS_AXI, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %90, i64 %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %9, align 8
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @devm_kmalloc(%struct.device* %98, i64 %99, i32 %100)
  %102 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %103 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %102, i32 0, i32 8
  %104 = load i8**, i8*** %103, align 8
  %105 = load i64, i64* @DEBUGFS_AXI, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  store i8* %101, i8** %106, align 8
  %107 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %108 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %107, i32 0, i32 8
  %109 = load i8**, i8*** %108, align 8
  %110 = load i64, i64* @DEBUGFS_AXI, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %87
  br label %275

115:                                              ; preds = %87
  %116 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %4, align 8
  %117 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %117, align 8
  %119 = load i64, i64* @DEBUGFS_RAS, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %118, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %9, align 8
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i8* @devm_kmalloc(%struct.device* %126, i64 %127, i32 %128)
  %130 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %131 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %130, i32 0, i32 8
  %132 = load i8**, i8*** %131, align 8
  %133 = load i64, i64* @DEBUGFS_RAS, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  store i8* %129, i8** %134, align 8
  %135 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %136 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %135, i32 0, i32 8
  %137 = load i8**, i8*** %136, align 8
  %138 = load i64, i64* @DEBUGFS_RAS, align 8
  %139 = getelementptr inbounds i8*, i8** %137, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %115
  br label %275

143:                                              ; preds = %115
  %144 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %4, align 8
  %145 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %148 = mul nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %177, %143
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %153 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %180

156:                                              ; preds = %150
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = call i8* @devm_kmalloc(%struct.device* %157, i64 %158, i32 %159)
  %161 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %162 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %161, i32 0, i32 7
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  store i8* %160, i8** %166, align 8
  %167 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %168 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %167, i32 0, i32 7
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %156
  br label %275

176:                                              ; preds = %156
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %150

180:                                              ; preds = %150
  %181 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 4, %182
  store i64 %183, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %211, %180
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %187 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %214

190:                                              ; preds = %184
  %191 = load %struct.device*, %struct.device** %5, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call i8* @devm_kmalloc(%struct.device* %191, i64 %192, i32 %193)
  %195 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %196 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %195, i32 0, i32 6
  %197 = load i8**, i8*** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  store i8* %194, i8** %200, align 8
  %201 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %202 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %201, i32 0, i32 6
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %190
  br label %275

210:                                              ; preds = %190
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %184

214:                                              ; preds = %184
  %215 = load i32, i32* @HISI_SAS_MAX_COMMANDS, align 4
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  store i64 %217, i64* %9, align 8
  %218 = load %struct.device*, %struct.device** %5, align 8
  %219 = load i64, i64* %9, align 8
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call i8* @devm_kmalloc(%struct.device* %218, i64 %219, i32 %220)
  %222 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %223 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %222, i32 0, i32 5
  store i8* %221, i8** %223, align 8
  %224 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %225 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %224, i32 0, i32 5
  %226 = load i8*, i8** %225, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %214
  br label %275

229:                                              ; preds = %214
  %230 = load i32, i32* @HISI_SAS_IOST_ITCT_CACHE_NUM, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 4
  store i64 %232, i64* %9, align 8
  %233 = load %struct.device*, %struct.device** %5, align 8
  %234 = load i64, i64* %9, align 8
  %235 = load i32, i32* @GFP_KERNEL, align 4
  %236 = call i8* @devm_kmalloc(%struct.device* %233, i64 %234, i32 %235)
  %237 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %238 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  %239 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %240 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %239, i32 0, i32 4
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %229
  br label %275

244:                                              ; preds = %229
  %245 = load i32, i32* @HISI_SAS_IOST_ITCT_CACHE_NUM, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 %246, 4
  store i64 %247, i64* %9, align 8
  %248 = load %struct.device*, %struct.device** %5, align 8
  %249 = load i64, i64* %9, align 8
  %250 = load i32, i32* @GFP_KERNEL, align 4
  %251 = call i8* @devm_kmalloc(%struct.device* %248, i64 %249, i32 %250)
  %252 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %253 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %252, i32 0, i32 3
  store i8* %251, i8** %253, align 8
  %254 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %255 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %244
  br label %275

259:                                              ; preds = %244
  %260 = load i32, i32* @HISI_SAS_MAX_ITCT_ENTRIES, align 4
  %261 = sext i32 %260 to i64
  %262 = mul i64 %261, 4
  store i64 %262, i64* %9, align 8
  %263 = load %struct.device*, %struct.device** %5, align 8
  %264 = load i64, i64* %9, align 8
  %265 = load i32, i32* @GFP_KERNEL, align 4
  %266 = call i8* @devm_kmalloc(%struct.device* %263, i64 %264, i32 %265)
  %267 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %268 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %267, i32 0, i32 2
  store i8* %266, i8** %268, align 8
  %269 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %270 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %259
  br label %275

274:                                              ; preds = %259
  store i32 0, i32* %2, align 4
  br label %280

275:                                              ; preds = %273, %258, %243, %228, %209, %175, %142, %114, %82, %48
  %276 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %277 = call i32 @hisi_sas_debugfs_release(%struct.hisi_hba* %276)
  %278 = load i32, i32* @ENOMEM, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %275, %274
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i8* @devm_kmalloc(%struct.device*, i64, i32) #1

declare dso_local i32 @hisi_sas_debugfs_release(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
