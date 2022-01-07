; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, %struct.hisi_sas_slot*, i8*, i8**, %struct.TYPE_6__*, i8**, %struct.hisi_sas_dq*, %struct.hisi_sas_cq*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, %struct.device* }
%struct.hisi_sas_slot = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.hisi_sas_dq = type { i32, %struct.hisi_hba*, i32, i32 }
%struct.hisi_sas_cq = type { i32, %struct.hisi_hba* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.device = type { i32 }

@HISI_SAS_MAX_COMMANDS = common dso_local global i32 0, align 4
@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@HISI_SAS_DEV_INIT = common dso_local global i32 0, align 4
@HISI_SAS_QUEUE_SLOTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HISI_SAS_MAX_ITCT_ENTRIES = common dso_local global i32 0, align 4
@HISI_SAS_DIX_PROT_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@HISI_SAS_MAX_PHYS = common dso_local global i32 0, align 4
@HISI_SAS_UNRESERVED_IPTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sas_alloc: failed to create workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_alloc(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hisi_sas_cq*, align 8
  %14 = alloca %struct.hisi_sas_dq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.hisi_sas_slot*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 29
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %4, align 8
  %22 = load i32, i32* @HISI_SAS_MAX_COMMANDS, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %23, i32 0, i32 28
  %25 = call i32 @sema_init(i32* %24, i32 1)
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %26, i32 0, i32 27
  %28 = call i32 @spin_lock_init(i32* %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %53, %1
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @hisi_sas_phy_init(%struct.hisi_hba* %36, i32 %37)
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %40 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %39, i32 0, i32 26
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %47 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %46, i32 0, i32 26
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  br label %53

53:                                               ; preds = %35
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %29

56:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %86, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  %62 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %63 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %64 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %63, i32 0, i32 25
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %72 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %71, i32 0, i32 25
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* @HISI_SAS_DEV_INIT, align 4
  %79 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %80 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %79, i32 0, i32 25
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %61
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %57

89:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %190, %89
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %93 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %193

96:                                               ; preds = %90
  %97 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %98 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %97, i32 0, i32 24
  %99 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %99, i64 %101
  store %struct.hisi_sas_cq* %102, %struct.hisi_sas_cq** %13, align 8
  %103 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %104 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %103, i32 0, i32 23
  %105 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %105, i64 %107
  store %struct.hisi_sas_dq* %108, %struct.hisi_sas_dq** %14, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %13, align 8
  %111 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %113 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %13, align 8
  %114 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %113, i32 0, i32 1
  store %struct.hisi_hba* %112, %struct.hisi_hba** %114, align 8
  %115 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %14, align 8
  %116 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %115, i32 0, i32 3
  %117 = call i32 @spin_lock_init(i32* %116)
  %118 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %14, align 8
  %119 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %118, i32 0, i32 2
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %14, align 8
  %123 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %125 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %14, align 8
  %126 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %125, i32 0, i32 1
  store %struct.hisi_hba* %124, %struct.hisi_hba** %126, align 8
  %127 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 4, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %7, align 4
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %134 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i8* @dmam_alloc_coherent(%struct.device* %131, i32 %132, i32* %138, i32 %139)
  %141 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %142 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %141, i32 0, i32 22
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* %140, i8** %146, align 8
  %147 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %148 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %147, i32 0, i32 22
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %96
  br label %413

156:                                              ; preds = %96
  %157 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %158 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %157, i32 0, i32 21
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %163 = mul nsw i32 %161, %162
  store i32 %163, i32* %7, align 4
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %167 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @dmam_alloc_coherent(%struct.device* %164, i32 %165, i32* %171, i32 %172)
  %174 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %175 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %174, i32 0, i32 20
  %176 = load i8**, i8*** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  store i8* %173, i8** %179, align 8
  %180 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %181 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %180, i32 0, i32 20
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %156
  br label %413

189:                                              ; preds = %156
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %90

193:                                              ; preds = %90
  %194 = load i32, i32* @HISI_SAS_MAX_ITCT_ENTRIES, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %7, align 4
  %198 = load %struct.device*, %struct.device** %4, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %201 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %200, i32 0, i32 4
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call i8* @dmam_alloc_coherent(%struct.device* %198, i32 %199, i32* %201, i32 %202)
  %204 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %205 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %204, i32 0, i32 19
  store i8* %203, i8** %205, align 8
  %206 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %207 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %206, i32 0, i32 19
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %193
  br label %413

211:                                              ; preds = %193
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @GFP_KERNEL, align 4
  %215 = call %struct.hisi_sas_slot* @devm_kcalloc(%struct.device* %212, i32 %213, i32 16, i32 %214)
  %216 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %217 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %216, i32 0, i32 18
  store %struct.hisi_sas_slot* %215, %struct.hisi_sas_slot** %217, align 8
  %218 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %219 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %218, i32 0, i32 18
  %220 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %219, align 8
  %221 = icmp ne %struct.hisi_sas_slot* %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %211
  br label %413

223:                                              ; preds = %211
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @roundup(i32 %224, i32 64)
  store i32 %225, i32* %9, align 4
  %226 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %227 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @HISI_SAS_DIX_PROT_MASK, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  store i32 4, i32* %10, align 4
  br label %234

233:                                              ; preds = %223
  store i32 4, i32* %10, align 4
  br label %234

234:                                              ; preds = %233, %232
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @roundup(i32 %235, i32 64)
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @lcm(i32 %237, i32 %238)
  %240 = load i32, i32* @PAGE_SIZE, align 4
  %241 = call i32 @max(i32 %239, i32 %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load i32, i32* %7, align 4
  %246 = sdiv i32 %244, %245
  store i32 %246, i32* %11, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %10, align 4
  %249 = sdiv i32 %247, %248
  store i32 %249, i32* %12, align 4
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %299, %234
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %11, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %302

254:                                              ; preds = %250
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %12, align 4
  %257 = mul nsw i32 %255, %256
  store i32 %257, i32* %15, align 4
  %258 = load %struct.device*, %struct.device** %4, align 8
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* @GFP_KERNEL, align 4
  %261 = call i8* @dmam_alloc_coherent(%struct.device* %258, i32 %259, i32* %16, i32 %260)
  store i8* %261, i8** %17, align 8
  %262 = load i8*, i8** %17, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %254
  br label %413

265:                                              ; preds = %254
  store i32 0, i32* %6, align 4
  br label %266

266:                                              ; preds = %293, %265
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* %12, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %298

270:                                              ; preds = %266
  %271 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %272 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %271, i32 0, i32 18
  %273 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %272, align 8
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %273, i64 %275
  store %struct.hisi_sas_slot* %276, %struct.hisi_sas_slot** %18, align 8
  %277 = load i8*, i8** %17, align 8
  %278 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %279 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %278, i32 0, i32 2
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* %16, align 4
  %281 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %282 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load i32, i32* %15, align 4
  %284 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %285 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load i8*, i8** %17, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr i8, i8* %287, i64 %288
  store i8* %289, i8** %17, align 8
  %290 = load i32, i32* %10, align 4
  %291 = load i32, i32* %16, align 4
  %292 = add nsw i32 %291, %290
  store i32 %292, i32* %16, align 4
  br label %293

293:                                              ; preds = %270
  %294 = load i32, i32* %6, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %6, align 4
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %15, align 4
  br label %266

298:                                              ; preds = %266
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %5, align 4
  br label %250

302:                                              ; preds = %250
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = mul i64 %304, 4
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %7, align 4
  %307 = load %struct.device*, %struct.device** %4, align 8
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %310 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %309, i32 0, i32 6
  %311 = load i32, i32* @GFP_KERNEL, align 4
  %312 = call i8* @dmam_alloc_coherent(%struct.device* %307, i32 %308, i32* %310, i32 %311)
  %313 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %314 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %313, i32 0, i32 17
  store i8* %312, i8** %314, align 8
  %315 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %316 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %315, i32 0, i32 17
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %302
  br label %413

320:                                              ; preds = %302
  %321 = load i32, i32* %8, align 4
  %322 = sext i32 %321 to i64
  %323 = mul i64 %322, 4
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %7, align 4
  %325 = load %struct.device*, %struct.device** %4, align 8
  %326 = load i32, i32* %7, align 4
  %327 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %328 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %327, i32 0, i32 7
  %329 = load i32, i32* @GFP_KERNEL, align 4
  %330 = call i8* @dmam_alloc_coherent(%struct.device* %325, i32 %326, i32* %328, i32 %329)
  %331 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %332 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %331, i32 0, i32 16
  store i8* %330, i8** %332, align 8
  %333 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %334 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %333, i32 0, i32 16
  %335 = load i8*, i8** %334, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %338, label %337

337:                                              ; preds = %320
  br label %413

338:                                              ; preds = %320
  %339 = load i32, i32* %8, align 4
  %340 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %341 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %340, i32 0, i32 8
  store i32 %339, i32* %341, align 8
  %342 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %343 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %342, i32 0, i32 8
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @BITS_PER_BYTE, align 4
  %346 = sdiv i32 %344, %345
  store i32 %346, i32* %7, align 4
  %347 = load %struct.device*, %struct.device** %4, align 8
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* @GFP_KERNEL, align 4
  %350 = call i32 @devm_kzalloc(%struct.device* %347, i32 %348, i32 %349)
  %351 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %352 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %351, i32 0, i32 15
  store i32 %350, i32* %352, align 8
  %353 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %354 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %353, i32 0, i32 15
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %338
  br label %413

358:                                              ; preds = %338
  %359 = load i32, i32* @HISI_SAS_MAX_PHYS, align 4
  %360 = sext i32 %359 to i64
  %361 = mul i64 4, %360
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %7, align 4
  %363 = load %struct.device*, %struct.device** %4, align 8
  %364 = load i32, i32* %7, align 4
  %365 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %366 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %365, i32 0, i32 9
  %367 = load i32, i32* @GFP_KERNEL, align 4
  %368 = call i8* @dmam_alloc_coherent(%struct.device* %363, i32 %364, i32* %366, i32 %367)
  %369 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %370 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %369, i32 0, i32 14
  store i8* %368, i8** %370, align 8
  %371 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %372 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %371, i32 0, i32 14
  %373 = load i8*, i8** %372, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %358
  br label %413

376:                                              ; preds = %358
  %377 = load i32, i32* @HISI_SAS_MAX_ITCT_ENTRIES, align 4
  %378 = sext i32 %377 to i64
  %379 = mul i64 %378, 4
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %7, align 4
  %381 = load %struct.device*, %struct.device** %4, align 8
  %382 = load i32, i32* %7, align 4
  %383 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %384 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %383, i32 0, i32 10
  %385 = load i32, i32* @GFP_KERNEL, align 4
  %386 = call i8* @dmam_alloc_coherent(%struct.device* %381, i32 %382, i32* %384, i32 %385)
  %387 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %388 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %387, i32 0, i32 13
  store i8* %386, i8** %388, align 8
  %389 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %390 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %389, i32 0, i32 13
  %391 = load i8*, i8** %390, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %376
  br label %413

394:                                              ; preds = %376
  %395 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %396 = call i32 @hisi_sas_slot_index_init(%struct.hisi_hba* %395)
  %397 = load i32, i32* @HISI_SAS_UNRESERVED_IPTT, align 4
  %398 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %399 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %398, i32 0, i32 12
  store i32 %397, i32* %399, align 8
  %400 = load %struct.device*, %struct.device** %4, align 8
  %401 = call i32 @dev_name(%struct.device* %400)
  %402 = call i32 @create_singlethread_workqueue(i32 %401)
  %403 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %404 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %403, i32 0, i32 11
  store i32 %402, i32* %404, align 4
  %405 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %406 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %405, i32 0, i32 11
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %412, label %409

409:                                              ; preds = %394
  %410 = load %struct.device*, %struct.device** %4, align 8
  %411 = call i32 @dev_err(%struct.device* %410, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %413

412:                                              ; preds = %394
  store i32 0, i32* %2, align 4
  br label %416

413:                                              ; preds = %409, %393, %375, %357, %337, %319, %264, %222, %210, %188, %155
  %414 = load i32, i32* @ENOMEM, align 4
  %415 = sub nsw i32 0, %414
  store i32 %415, i32* %2, align 4
  br label %416

416:                                              ; preds = %413, %412
  %417 = load i32, i32* %2, align 4
  ret i32 %417
}

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hisi_sas_phy_init(%struct.hisi_hba*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local %struct.hisi_sas_slot* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @lcm(i32, i32) #1

declare dso_local i32 @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @hisi_sas_slot_index_init(%struct.hisi_hba*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
