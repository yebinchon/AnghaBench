; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_10__, %struct.se_lun, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.se_hba* }
%struct.TYPE_7__ = type { i8*, i8*, {}* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.se_device*, i32, i32 }
%struct.se_lun = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.se_device* }
%struct.TYPE_11__ = type { %struct.se_device*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.se_hba = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@DA_EMULATE_MODEL_ALIAS = common dso_local global i32 0, align 4
@DA_EMULATE_WRITE_CACHE = common dso_local global i32 0, align 4
@DA_EMULATE_UA_INTLLCK_CTRL = common dso_local global i32 0, align 4
@DA_EMULATE_TAS = common dso_local global i32 0, align 4
@DA_EMULATE_TPU = common dso_local global i32 0, align 4
@DA_EMULATE_TPWS = common dso_local global i32 0, align 4
@DA_EMULATE_CAW = common dso_local global i32 0, align 4
@DA_EMULATE_3PC = common dso_local global i32 0, align 4
@DA_EMULATE_PR = common dso_local global i32 0, align 4
@TARGET_DIF_TYPE0_PROT = common dso_local global i32 0, align 4
@DA_ENFORCE_PR_ISIDS = common dso_local global i32 0, align 4
@DA_FORCE_PR_APTPL = common dso_local global i32 0, align 4
@DA_IS_NONROT = common dso_local global i32 0, align 4
@DA_EMULATE_REST_REORD = common dso_local global i32 0, align 4
@DA_MAX_UNMAP_LBA_COUNT = common dso_local global i32 0, align 4
@DA_MAX_UNMAP_BLOCK_DESC_COUNT = common dso_local global i32 0, align 4
@DA_UNMAP_GRANULARITY_DEFAULT = common dso_local global i32 0, align 4
@DA_UNMAP_GRANULARITY_ALIGNMENT_DEFAULT = common dso_local global i32 0, align 4
@DA_UNMAP_ZEROES_DATA_DEFAULT = common dso_local global i32 0, align 4
@DA_MAX_WRITE_SAME_LEN = common dso_local global i32 0, align 4
@xcopy_pt_tpg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"LIO-ORG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_device* @target_alloc_device(%struct.se_hba* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca %struct.se_lun*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %9 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = bitcast {}** %13 to %struct.se_device* (%struct.se_hba*, i8*)**
  %15 = load %struct.se_device* (%struct.se_hba*, i8*)*, %struct.se_device* (%struct.se_hba*, i8*)** %14, align 8
  %16 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.se_device* %15(%struct.se_hba* %16, i8* %17)
  store %struct.se_device* %18, %struct.se_device** %6, align 8
  %19 = load %struct.se_device*, %struct.se_device** %6, align 8
  %20 = icmp ne %struct.se_device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.se_device* null, %struct.se_device** %3, align 8
  br label %264

22:                                               ; preds = %2
  %23 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %24 = load %struct.se_device*, %struct.se_device** %6, align 8
  %25 = getelementptr inbounds %struct.se_device, %struct.se_device* %24, i32 0, i32 20
  store %struct.se_hba* %23, %struct.se_hba** %25, align 8
  %26 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %27 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load %struct.se_device*, %struct.se_device** %6, align 8
  %32 = getelementptr inbounds %struct.se_device, %struct.se_device* %31, i32 0, i32 1
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.se_device*, %struct.se_device** %6, align 8
  %34 = getelementptr inbounds %struct.se_device, %struct.se_device* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %36 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.se_device*, %struct.se_device** %6, align 8
  %39 = getelementptr inbounds %struct.se_device, %struct.se_device* %38, i32 0, i32 19
  store i32 %37, i32* %39, align 8
  %40 = load %struct.se_device*, %struct.se_device** %6, align 8
  %41 = getelementptr inbounds %struct.se_device, %struct.se_device* %40, i32 0, i32 18
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.se_device*, %struct.se_device** %6, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 17
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.se_device*, %struct.se_device** %6, align 8
  %47 = getelementptr inbounds %struct.se_device, %struct.se_device* %46, i32 0, i32 16
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.se_device*, %struct.se_device** %6, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 15
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.se_device*, %struct.se_device** %6, align 8
  %53 = getelementptr inbounds %struct.se_device, %struct.se_device* %52, i32 0, i32 14
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.se_device*, %struct.se_device** %6, align 8
  %56 = getelementptr inbounds %struct.se_device, %struct.se_device* %55, i32 0, i32 13
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.se_device*, %struct.se_device** %6, align 8
  %59 = getelementptr inbounds %struct.se_device, %struct.se_device* %58, i32 0, i32 12
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.se_device*, %struct.se_device** %6, align 8
  %62 = getelementptr inbounds %struct.se_device, %struct.se_device* %61, i32 0, i32 11
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.se_device*, %struct.se_device** %6, align 8
  %65 = getelementptr inbounds %struct.se_device, %struct.se_device* %64, i32 0, i32 10
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.se_device*, %struct.se_device** %6, align 8
  %68 = getelementptr inbounds %struct.se_device, %struct.se_device* %67, i32 0, i32 9
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.se_device*, %struct.se_device** %6, align 8
  %71 = getelementptr inbounds %struct.se_device, %struct.se_device* %70, i32 0, i32 8
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.se_device*, %struct.se_device** %6, align 8
  %74 = getelementptr inbounds %struct.se_device, %struct.se_device* %73, i32 0, i32 7
  %75 = call i32 @sema_init(i32* %74, i32 1)
  %76 = load %struct.se_device*, %struct.se_device** %6, align 8
  %77 = getelementptr inbounds %struct.se_device, %struct.se_device* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.se_device*, %struct.se_device** %6, align 8
  %81 = getelementptr inbounds %struct.se_device, %struct.se_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.se_device*, %struct.se_device** %6, align 8
  %85 = getelementptr inbounds %struct.se_device, %struct.se_device* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.se_device*, %struct.se_device** %6, align 8
  %89 = getelementptr inbounds %struct.se_device, %struct.se_device* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.se_device*, %struct.se_device** %6, align 8
  %93 = getelementptr inbounds %struct.se_device, %struct.se_device* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.se_device*, %struct.se_device** %6, align 8
  %97 = getelementptr inbounds %struct.se_device, %struct.se_device* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.se_device*, %struct.se_device** %6, align 8
  %101 = getelementptr inbounds %struct.se_device, %struct.se_device* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  %103 = call i32 @INIT_LIST_HEAD(i32* %102)
  %104 = load %struct.se_device*, %struct.se_device** %6, align 8
  %105 = getelementptr inbounds %struct.se_device, %struct.se_device* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = call i32 @spin_lock_init(i32* %106)
  %108 = load %struct.se_device*, %struct.se_device** %6, align 8
  %109 = getelementptr inbounds %struct.se_device, %struct.se_device* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.se_device*, %struct.se_device** %6, align 8
  %113 = getelementptr inbounds %struct.se_device, %struct.se_device* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.se_device*, %struct.se_device** %6, align 8
  %117 = load %struct.se_device*, %struct.se_device** %6, align 8
  %118 = getelementptr inbounds %struct.se_device, %struct.se_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  store %struct.se_device* %116, %struct.se_device** %119, align 8
  %120 = load %struct.se_device*, %struct.se_device** %6, align 8
  %121 = load %struct.se_device*, %struct.se_device** %6, align 8
  %122 = getelementptr inbounds %struct.se_device, %struct.se_device* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store %struct.se_device* %120, %struct.se_device** %123, align 8
  %124 = load %struct.se_device*, %struct.se_device** %6, align 8
  %125 = load %struct.se_device*, %struct.se_device** %6, align 8
  %126 = getelementptr inbounds %struct.se_device, %struct.se_device* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 23
  store %struct.se_device* %124, %struct.se_device** %127, align 8
  %128 = load i32, i32* @DA_EMULATE_MODEL_ALIAS, align 4
  %129 = load %struct.se_device*, %struct.se_device** %6, align 8
  %130 = getelementptr inbounds %struct.se_device, %struct.se_device* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 22
  store i32 %128, i32* %131, align 8
  %132 = load %struct.se_device*, %struct.se_device** %6, align 8
  %133 = getelementptr inbounds %struct.se_device, %struct.se_device* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.se_device*, %struct.se_device** %6, align 8
  %136 = getelementptr inbounds %struct.se_device, %struct.se_device* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = load %struct.se_device*, %struct.se_device** %6, align 8
  %139 = getelementptr inbounds %struct.se_device, %struct.se_device* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load i32, i32* @DA_EMULATE_WRITE_CACHE, align 4
  %142 = load %struct.se_device*, %struct.se_device** %6, align 8
  %143 = getelementptr inbounds %struct.se_device, %struct.se_device* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 21
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* @DA_EMULATE_UA_INTLLCK_CTRL, align 4
  %146 = load %struct.se_device*, %struct.se_device** %6, align 8
  %147 = getelementptr inbounds %struct.se_device, %struct.se_device* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 20
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* @DA_EMULATE_TAS, align 4
  %150 = load %struct.se_device*, %struct.se_device** %6, align 8
  %151 = getelementptr inbounds %struct.se_device, %struct.se_device* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 19
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @DA_EMULATE_TPU, align 4
  %154 = load %struct.se_device*, %struct.se_device** %6, align 8
  %155 = getelementptr inbounds %struct.se_device, %struct.se_device* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 18
  store i32 %153, i32* %156, align 8
  %157 = load i32, i32* @DA_EMULATE_TPWS, align 4
  %158 = load %struct.se_device*, %struct.se_device** %6, align 8
  %159 = getelementptr inbounds %struct.se_device, %struct.se_device* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 17
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* @DA_EMULATE_CAW, align 4
  %162 = load %struct.se_device*, %struct.se_device** %6, align 8
  %163 = getelementptr inbounds %struct.se_device, %struct.se_device* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 16
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* @DA_EMULATE_3PC, align 4
  %166 = load %struct.se_device*, %struct.se_device** %6, align 8
  %167 = getelementptr inbounds %struct.se_device, %struct.se_device* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 15
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @DA_EMULATE_PR, align 4
  %170 = load %struct.se_device*, %struct.se_device** %6, align 8
  %171 = getelementptr inbounds %struct.se_device, %struct.se_device* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 14
  store i32 %169, i32* %172, align 8
  %173 = load i32, i32* @TARGET_DIF_TYPE0_PROT, align 4
  %174 = load %struct.se_device*, %struct.se_device** %6, align 8
  %175 = getelementptr inbounds %struct.se_device, %struct.se_device* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 13
  store i32 %173, i32* %176, align 4
  %177 = load i32, i32* @DA_ENFORCE_PR_ISIDS, align 4
  %178 = load %struct.se_device*, %struct.se_device** %6, align 8
  %179 = getelementptr inbounds %struct.se_device, %struct.se_device* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 12
  store i32 %177, i32* %180, align 8
  %181 = load i32, i32* @DA_FORCE_PR_APTPL, align 4
  %182 = load %struct.se_device*, %struct.se_device** %6, align 8
  %183 = getelementptr inbounds %struct.se_device, %struct.se_device* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 11
  store i32 %181, i32* %184, align 4
  %185 = load i32, i32* @DA_IS_NONROT, align 4
  %186 = load %struct.se_device*, %struct.se_device** %6, align 8
  %187 = getelementptr inbounds %struct.se_device, %struct.se_device* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 10
  store i32 %185, i32* %188, align 8
  %189 = load i32, i32* @DA_EMULATE_REST_REORD, align 4
  %190 = load %struct.se_device*, %struct.se_device** %6, align 8
  %191 = getelementptr inbounds %struct.se_device, %struct.se_device* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 9
  store i32 %189, i32* %192, align 4
  %193 = load i32, i32* @DA_MAX_UNMAP_LBA_COUNT, align 4
  %194 = load %struct.se_device*, %struct.se_device** %6, align 8
  %195 = getelementptr inbounds %struct.se_device, %struct.se_device* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 8
  store i32 %193, i32* %196, align 8
  %197 = load i32, i32* @DA_MAX_UNMAP_BLOCK_DESC_COUNT, align 4
  %198 = load %struct.se_device*, %struct.se_device** %6, align 8
  %199 = getelementptr inbounds %struct.se_device, %struct.se_device* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 7
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* @DA_UNMAP_GRANULARITY_DEFAULT, align 4
  %202 = load %struct.se_device*, %struct.se_device** %6, align 8
  %203 = getelementptr inbounds %struct.se_device, %struct.se_device* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 6
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* @DA_UNMAP_GRANULARITY_ALIGNMENT_DEFAULT, align 4
  %206 = load %struct.se_device*, %struct.se_device** %6, align 8
  %207 = getelementptr inbounds %struct.se_device, %struct.se_device* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 5
  store i32 %205, i32* %208, align 4
  %209 = load i32, i32* @DA_UNMAP_ZEROES_DATA_DEFAULT, align 4
  %210 = load %struct.se_device*, %struct.se_device** %6, align 8
  %211 = getelementptr inbounds %struct.se_device, %struct.se_device* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 4
  store i32 %209, i32* %212, align 8
  %213 = load i32, i32* @DA_MAX_WRITE_SAME_LEN, align 4
  %214 = load %struct.se_device*, %struct.se_device** %6, align 8
  %215 = getelementptr inbounds %struct.se_device, %struct.se_device* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  store i32 %213, i32* %216, align 4
  %217 = load %struct.se_device*, %struct.se_device** %6, align 8
  %218 = getelementptr inbounds %struct.se_device, %struct.se_device* %217, i32 0, i32 3
  store %struct.se_lun* %218, %struct.se_lun** %7, align 8
  %219 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %220 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.se_device*, %struct.se_device** %6, align 8
  %223 = call i32 @rcu_assign_pointer(i32 %221, %struct.se_device* %222)
  %224 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %225 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %224, i32 0, i32 4
  %226 = call i32 @init_completion(i32* %225)
  %227 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %228 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %227, i32 0, i32 3
  %229 = call i32 @INIT_LIST_HEAD(i32* %228)
  %230 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %231 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %230, i32 0, i32 2
  %232 = call i32 @INIT_LIST_HEAD(i32* %231)
  %233 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %234 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %233, i32 0, i32 1
  %235 = call i32 @mutex_init(i32* %234)
  %236 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %237 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %236, i32 0, i32 0
  store i32* @xcopy_pt_tpg, i32** %237, align 8
  %238 = load %struct.se_device*, %struct.se_device** %6, align 8
  %239 = getelementptr inbounds %struct.se_device, %struct.se_device* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @strlcpy(i32 %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %243 = load %struct.se_device*, %struct.se_device** %6, align 8
  %244 = getelementptr inbounds %struct.se_device, %struct.se_device* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.se_device*, %struct.se_device** %6, align 8
  %248 = getelementptr inbounds %struct.se_device, %struct.se_device* %247, i32 0, i32 1
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @strlcpy(i32 %246, i8* %251, i32 4)
  %253 = load %struct.se_device*, %struct.se_device** %6, align 8
  %254 = getelementptr inbounds %struct.se_device, %struct.se_device* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.se_device*, %struct.se_device** %6, align 8
  %258 = getelementptr inbounds %struct.se_device, %struct.se_device* %257, i32 0, i32 1
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @strlcpy(i32 %256, i8* %261, i32 4)
  %263 = load %struct.se_device*, %struct.se_device** %6, align 8
  store %struct.se_device* %263, %struct.se_device** %3, align 8
  br label %264

264:                                              ; preds = %22, %21
  %265 = load %struct.se_device*, %struct.se_device** %3, align 8
  ret %struct.se_device* %265
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.se_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
