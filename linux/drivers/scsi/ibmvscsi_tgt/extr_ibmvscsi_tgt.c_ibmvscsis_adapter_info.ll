; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_10__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32, i8* }
%struct.iu_entry = type { i64 }
%struct.viosrp_adapter_info = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8* }
%struct.mad_adapter_info_data = type { i8**, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.viosrp_adapter_info }

@VIOSRP_MAD_SUCCESS = common dso_local global i32 0, align 4
@VIOSRP_MAD_FAILED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad dma_alloc_coherent %p\0A\00", align 1
@REMOTE = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i64 0, align 8
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@CLIENT_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"adapter_info: h_copy_rdma from client failed, rc %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"adapter_info: ioba 0x%llx, flags 0x%x, flag_bits 0x%x\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@SRP_VERSION = common dso_local global i32 0, align 4
@MAD_VERSION_1 = common dso_local global i32 0, align 4
@LINUX = common dso_local global i32 0, align 4
@MAX_TXU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"adapter_info: h_copy_rdma to client failed, rc %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Leaving adapter_info, rc %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.iu_entry*)* @ibmvscsis_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_adapter_info(%struct.scsi_info* %0, %struct.iu_entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca %struct.viosrp_adapter_info*, align 8
  %7 = alloca %struct.mad_adapter_info_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store %struct.iu_entry* %1, %struct.iu_entry** %5, align 8
  %11 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %12 = call %struct.TYPE_14__* @vio_iu(%struct.iu_entry* %11)
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.viosrp_adapter_info* %14, %struct.viosrp_adapter_info** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @VIOSRP_MAD_SUCCESS, align 4
  %16 = call i8* @cpu_to_be16(i32 %15)
  %17 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %18 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %21 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @be16_to_cpu(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %25, 40
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @VIOSRP_MAD_FAILED, align 4
  %29 = call i8* @cpu_to_be16(i32 %28)
  %30 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %31 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  store i64 0, i64* %3, align 8
  br label %258

33:                                               ; preds = %2
  %34 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.mad_adapter_info_data* @dma_alloc_coherent(i32* %37, i32 40, i32* %9, i32 %38)
  store %struct.mad_adapter_info_data* %39, %struct.mad_adapter_info_data** %7, align 8
  %40 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %41 = icmp ne %struct.mad_adapter_info_data* %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %43, i32 0, i32 0
  %45 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %46 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @VIOSRP_MAD_FAILED, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %52 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  store i64 0, i64* %3, align 8
  br label %258

54:                                               ; preds = %33
  %55 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %56 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @be16_to_cpu(i32 %58)
  %60 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load i64, i64* @REMOTE, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %69 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @be64_to_cpu(i32 %70)
  %72 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i64, i64* @LOCAL, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @h_copy_rdma(i32 %59, i32 %67, i32 %71, i32 %79, i32 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 128
  br i1 %83, label %84, label %117

84:                                               ; preds = %54
  %85 = load i64, i64* %10, align 8
  %86 = icmp eq i64 %85, 130
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %89 = call i64 @connection_broken(%struct.scsi_info* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %93 = load i32, i32* @CLIENT_FAILED, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %84
  %97 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %98 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %97, i32 0, i32 0
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @dev_warn(i32* %98, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  %101 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %101, i32 0, i32 0
  %103 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %104 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @be64_to_cpu(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %109 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %107, i32 %110, i32 %111)
  %113 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %114 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %113, i32 %114, i32 %115)
  br label %245

117:                                              ; preds = %54
  %118 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %119 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %125 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @be32_to_cpu(i8* %126)
  %128 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %129 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 4
  store i8* %127, i8** %130, align 8
  br label %131

131:                                              ; preds = %123, %117
  %132 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %133 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %137 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @strncpy(i32 %135, i32 %138, i32 4)
  %140 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %141 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %145 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strncpy(i32 %143, i32 %146, i32 4)
  %148 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %149 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i8* @be32_to_cpu(i8* %150)
  %152 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %153 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i8* %151, i8** %154, align 8
  %155 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %156 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @be32_to_cpu(i8* %157)
  %159 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %160 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i8* %158, i8** %161, align 8
  %162 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %163 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SRP_VERSION, align 4
  %166 = call i32 @strncpy(i32 %164, i32 %165, i32 4)
  %167 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %168 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %171 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @strncpy(i32 %169, i32 %173, i32 4)
  %175 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %176 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @cpu_to_be32(i32 %178)
  %180 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %181 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* @MAD_VERSION_1, align 4
  %183 = call i8* @cpu_to_be32(i32 %182)
  %184 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %185 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* @LINUX, align 4
  %187 = call i8* @cpu_to_be32(i32 %186)
  %188 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %189 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %191 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %190, i32 0, i32 0
  %192 = load i8**, i8*** %191, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 0
  %194 = call i32 @memset(i8** %193, i32 0, i32 8)
  %195 = load i32, i32* @MAX_TXU, align 4
  %196 = call i8* @cpu_to_be32(i32 %195)
  %197 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %198 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 0
  store i8* %196, i8** %200, align 8
  %201 = call i32 (...) @dma_wmb()
  %202 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %203 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load i64, i64* @LOCAL, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %212 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = load i64, i64* @REMOTE, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %6, align 8
  %220 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @be64_to_cpu(i32 %221)
  %223 = call i64 @h_copy_rdma(i32 40, i32 %209, i32 %210, i32 %218, i32 %222)
  store i64 %223, i64* %10, align 8
  %224 = load i64, i64* %10, align 8
  switch i64 %224, label %235 [
    i64 128, label %225
    i64 129, label %226
    i64 131, label %226
    i64 130, label %226
  ]

225:                                              ; preds = %131
  br label %244

226:                                              ; preds = %131, %131, %131
  %227 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %228 = call i64 @connection_broken(%struct.scsi_info* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %232 = load i32, i32* @CLIENT_FAILED, align 4
  %233 = or i32 %231, %232
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %230, %226
  br label %235

235:                                              ; preds = %131, %234
  %236 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %237 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %236, i32 0, i32 0
  %238 = load i64, i64* %10, align 8
  %239 = call i32 @dev_err(i32* %237, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %238)
  %240 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %241 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %235, %225
  br label %245

245:                                              ; preds = %244, %96
  %246 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %247 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %246, i32 0, i32 1
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %7, align 8
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @dma_free_coherent(i32* %249, i32 40, %struct.mad_adapter_info_data* %250, i32 %251)
  %253 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %254 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %253, i32 0, i32 0
  %255 = load i64, i64* %10, align 8
  %256 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %255)
  %257 = load i64, i64* %10, align 8
  store i64 %257, i64* %3, align 8
  br label %258

258:                                              ; preds = %245, %42, %27
  %259 = load i64, i64* %3, align 8
  ret i64 %259
}

declare dso_local %struct.TYPE_14__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.mad_adapter_info_data* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @h_copy_rdma(i32, i32, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @connection_broken(%struct.scsi_info*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i8*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.mad_adapter_info_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
