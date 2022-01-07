; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_queuecommand_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_queuecommand_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32, i64, i32, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.pmcraid_resource_entry*, %struct.TYPE_8__* }
%struct.pmcraid_resource_entry = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.pmcraid_instance = type { i64, i32, %struct.TYPE_12__*, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.pmcraid_ioarcb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pmcraid_cmd = type { i32, %struct.TYPE_11__*, %struct.scsi_cmnd* }
%struct.TYPE_11__ = type { %struct.pmcraid_ioarcb }

@DID_OK = common dso_local global i32 0, align 4
@IOA_STATE_DEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"IOA is dead, but queuecommand is scheduled\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"SYNC_CACHE(0x35), completing in driver itself\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"free command block is not available\0A\00", align 1
@REQ_TYPE_SCSI = common dso_local global i32 0, align 4
@pmcraid_io_done = common dso_local global i32 0, align 4
@INHIBIT_UL_CHECK = common dso_local global i32 0, align 4
@SYNC_COMPLETE = common dso_local global i32 0, align 4
@NO_LINK_DESCS = common dso_local global i32 0, align 4
@SCMD_TAGGED = common dso_local global i32 0, align 4
@TASK_TAG_SIMPLE = common dso_local global i32 0, align 4
@DELAY_AFTER_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"command (%d) CDB[0] = %x for %x:%x:%x:%x\0A\00", align 1
@PMCRAID_VSET_BUS_ID = common dso_local global i32 0, align 4
@PMCRAID_PHYS_BUS_ID = common dso_local global i32 0, align 4
@PMCRAID_FW_VERSION_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"queuecommand could not build ioadl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @pmcraid_queuecommand_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_queuecommand_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.pmcraid_instance*, align 8
  %7 = alloca %struct.pmcraid_resource_entry*, align 8
  %8 = alloca %struct.pmcraid_ioarcb*, align 8
  %9 = alloca %struct.pmcraid_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 6
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.pmcraid_instance*
  store %struct.pmcraid_instance* %19, %struct.pmcraid_instance** %6, align 8
  %20 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %21 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %20, i32 0, i32 5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @be16_to_cpu(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %26, void (%struct.scsi_cmnd*)** %28, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 6
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %32, align 8
  store %struct.pmcraid_resource_entry* %33, %struct.pmcraid_resource_entry** %7, align 8
  %34 = load i32, i32* @DID_OK, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %39 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IOA_STATE_DEAD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %2
  %44 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @DID_NO_CONNECT, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %50, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %51(%struct.scsi_cmnd* %52)
  store i32 0, i32* %3, align 4
  br label %289

53:                                               ; preds = %2
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %55 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %289

60:                                               ; preds = %53
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SYNCHRONIZE_CACHE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %71, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %72(%struct.scsi_cmnd* %73)
  store i32 0, i32* %3, align 4
  br label %289

74:                                               ; preds = %60
  %75 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %76 = call %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance* %75)
  store %struct.pmcraid_cmd* %76, %struct.pmcraid_cmd** %9, align 8
  %77 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %78 = icmp eq %struct.pmcraid_cmd* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = call i32 @pmcraid_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %81, i32* %3, align 4
  br label %289

82:                                               ; preds = %74
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %85 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %84, i32 0, i32 2
  store %struct.scsi_cmnd* %83, %struct.scsi_cmnd** %85, align 8
  %86 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %87 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store %struct.pmcraid_ioarcb* %89, %struct.pmcraid_ioarcb** %8, align 8
  %90 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %91 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memcpy(i32 %92, i32* %95, i32 %98)
  %100 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %101 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %105 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @REQ_TYPE_SCSI, align 4
  %107 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %108 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %110 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %109, i32 0, i32 3
  %111 = call i32 @atomic_add_return(i32 1, i32* %110)
  %112 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %113 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = srem i32 %111, %114
  %116 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %117 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @pmcraid_io_done, align 4
  %119 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %120 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %122 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %121, i32 0, i32 0
  %123 = bitcast %struct.TYPE_13__* %122 to { i64, i64 }*
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @RES_IS_GSCSI(i64 %125, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %82
  %131 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %132 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %131, i32 0, i32 0
  %133 = bitcast %struct.TYPE_13__* %132 to { i64, i64 }*
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @RES_IS_VSET(i64 %135, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %199

140:                                              ; preds = %130, %82
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %142 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @INHIBIT_UL_CHECK, align 4
  %147 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %148 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %153 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load i32, i32* @SYNC_COMPLETE, align 4
  %158 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %159 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %163 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %156, %151
  %165 = load i32, i32* @NO_LINK_DESCS, align 4
  %166 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %167 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %171 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SCMD_TAGGED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %164
  %177 = load i32, i32* @TASK_TAG_SIMPLE, align 4
  %178 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %179 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %176, %164
  %183 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %184 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %183, i32 0, i32 0
  %185 = bitcast %struct.TYPE_13__* %184 to { i64, i64 }*
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @RES_IS_GSCSI(i64 %187, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %182
  %193 = load i32, i32* @DELAY_AFTER_RESET, align 4
  %194 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %195 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %182
  br label %199

199:                                              ; preds = %198, %130
  %200 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %201 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %202 = call i32 @pmcraid_build_ioadl(%struct.pmcraid_instance* %200, %struct.pmcraid_cmd* %201)
  store i32 %202, i32* %11, align 4
  %203 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %8, align 8
  %204 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le32_to_cpu(i32 %205)
  %207 = ashr i32 %206, 2
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %209 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %214 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %213, i32 0, i32 2
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %219 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %218, i32 0, i32 0
  %220 = bitcast %struct.TYPE_13__* %219 to { i64, i64 }*
  %221 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %220, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @RES_IS_VSET(i64 %222, i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %199
  %228 = load i32, i32* @PMCRAID_VSET_BUS_ID, align 4
  br label %231

229:                                              ; preds = %199
  %230 = load i32, i32* @PMCRAID_PHYS_BUS_ID, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  %233 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %234 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %233, i32 0, i32 0
  %235 = bitcast %struct.TYPE_13__* %234 to { i64, i64 }*
  %236 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %235, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @RES_IS_VSET(i64 %237, i64 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %260

242:                                              ; preds = %231
  %243 = load i64, i64* %10, align 8
  %244 = load i64, i64* @PMCRAID_FW_VERSION_1, align 8
  %245 = icmp sle i64 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %248 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  br label %258

251:                                              ; preds = %242
  %252 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %253 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @le16_to_cpu(i32 %255)
  %257 = and i32 %256, 255
  br label %258

258:                                              ; preds = %251, %246
  %259 = phi i32 [ %250, %246 ], [ %257, %251 ]
  br label %266

260:                                              ; preds = %231
  %261 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %262 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @RES_TARGET(i32 %264)
  br label %266

266:                                              ; preds = %260, %258
  %267 = phi i32 [ %259, %258 ], [ %265, %260 ]
  %268 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %269 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @RES_LUN(i32 %271)
  %273 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %207, i32 %212, i32 %217, i32 %232, i32 %267, i32 %272)
  %274 = load i32, i32* %11, align 4
  %275 = icmp eq i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = call i64 @likely(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %266
  %280 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %281 = call i32 @_pmcraid_fire_command(%struct.pmcraid_cmd* %280)
  br label %287

282:                                              ; preds = %266
  %283 = call i32 @pmcraid_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %284 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %9, align 8
  %285 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %284)
  %286 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %286, i32* %11, align 4
  br label %287

287:                                              ; preds = %282, %279
  %288 = load i32, i32* %11, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %287, %79, %68, %58, %43
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @pmcraid_info(i8*, ...) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i64 @RES_IS_GSCSI(i64, i64) #1

declare dso_local i64 @RES_IS_VSET(i64, i64) #1

declare dso_local i32 @pmcraid_build_ioadl(%struct.pmcraid_instance*, %struct.pmcraid_cmd*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @RES_TARGET(i32) #1

declare dso_local i32 @RES_LUN(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @_pmcraid_fire_command(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
