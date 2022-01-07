; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_open_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_open_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, i64, %struct.hwi_controller*, %struct.be_ctrl_info }
%struct.hwi_controller = type { %struct.TYPE_9__*, %struct.hwi_context_memory* }
%struct.TYPE_9__ = type { i32 }
%struct.hwi_context_memory = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.be_ctrl_info = type { i32 }
%struct.sockaddr = type { i64 }
%struct.beiscsi_endpoint = type { i16, i32, i32*, i8*, i8* }
%struct.be_dma_mem = type { i32, i32, %struct.tcp_connect_and_offload_in_v1* }
%struct.tcp_connect_and_offload_in_v1 = type { i16, i16, i16, i16, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, i32, i8*, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i8* }
%struct.sockaddr_in = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.phys_addr = type { i32, i32, i32, i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"BG_%d : unknown addr family %d\0A\00", align 1
@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_TCP_CONNECT_AND_OFFLOAD = common dso_local global i32 0, align 4
@BEISCSI_IP_TYPE_V4 = common dso_local global i8* null, align 8
@BEISCSI_IP_TYPE_V6 = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"BG_%d : i=%d cq_id=%d\0A\00", align 1
@MBX_CMD_VER1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_open_connection(%struct.beiscsi_hba* %0, %struct.sockaddr* %1, %struct.beiscsi_endpoint* %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.beiscsi_endpoint*, align 8
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca %struct.hwi_controller*, align 8
  %11 = alloca %struct.hwi_context_memory*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca %struct.be_ctrl_info*, align 8
  %15 = alloca %struct.be_mcc_wrb*, align 8
  %16 = alloca %struct.tcp_connect_and_offload_in_v1*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca %struct.phys_addr, align 4
  %20 = alloca %struct.phys_addr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i16, align 2
  %25 = alloca %struct.be_sge*, align 8
  %26 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.beiscsi_endpoint* %2, %struct.beiscsi_endpoint** %8, align 8
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %9, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %28, %struct.sockaddr_in** %12, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = bitcast %struct.sockaddr* %29 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %30, %struct.sockaddr_in6** %13, align 8
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 3
  store %struct.be_ctrl_info* %32, %struct.be_ctrl_info** %14, align 8
  %33 = bitcast %struct.phys_addr* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 16, i1 false)
  store i32 0, i32* %21, align 4
  %34 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %35 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 8
  store i16 %36, i16* %24, align 2
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PF_INET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PF_INET6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %52 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %53 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i32, ...) @beiscsi_log(%struct.beiscsi_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 0, i32* %5, align 4
  br label %319

57:                                               ; preds = %42, %4
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %59 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %58, i32 0, i32 2
  %60 = load %struct.hwi_controller*, %struct.hwi_controller** %59, align 8
  store %struct.hwi_controller* %60, %struct.hwi_controller** %10, align 8
  %61 = load %struct.hwi_controller*, %struct.hwi_controller** %10, align 8
  %62 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %61, i32 0, i32 1
  %63 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %62, align 8
  store %struct.hwi_context_memory* %63, %struct.hwi_context_memory** %11, align 8
  %64 = load %struct.hwi_controller*, %struct.hwi_controller** %10, align 8
  %65 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i16, i16* %24, align 2
  %68 = call i64 @BE_GET_CRI_FROM_CID(i16 zeroext %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %23, align 4
  %72 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %73 = load i32, i32* %23, align 4
  %74 = call i64 @HWI_GET_DEF_HDRQ_ID(%struct.beiscsi_hba* %72, i32 %73)
  %75 = trunc i64 %74 to i16
  store i16 %75, i16* %17, align 2
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %77 = load i32, i32* %23, align 4
  %78 = call i64 @HWI_GET_DEF_BUFQ_ID(%struct.beiscsi_hba* %76, i32 %77)
  %79 = trunc i64 %78 to i16
  store i16 %79, i16* %18, align 2
  store %struct.phys_addr* %19, %struct.phys_addr** %20, align 8
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %81 = load %struct.phys_addr*, %struct.phys_addr** %20, align 8
  %82 = call i32 @ISCSI_GET_PDU_TEMPLATE_ADDRESS(%struct.beiscsi_hba* %80, %struct.phys_addr* %81)
  %83 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %14, align 8
  %84 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %83, i32 0, i32 0
  %85 = call i64 @mutex_lock_interruptible(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %319

88:                                               ; preds = %57
  %89 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %90 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %89, i32* %21)
  store %struct.be_mcc_wrb* %90, %struct.be_mcc_wrb** %15, align 8
  %91 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %92 = icmp ne %struct.be_mcc_wrb* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %14, align 8
  %95 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  store i32 0, i32* %5, align 4
  br label %319

97:                                               ; preds = %88
  %98 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %99 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %98)
  store %struct.be_sge* %99, %struct.be_sge** %25, align 8
  %100 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %101 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %100, i32 0, i32 2
  %102 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %101, align 8
  store %struct.tcp_connect_and_offload_in_v1* %102, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %103 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %104 = call i32 @memset(%struct.tcp_connect_and_offload_in_v1* %103, i32 0, i32 64)
  %105 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %106 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %107 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %105, i32 %108, i32 0, i32 1)
  %110 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %111 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %110, i32 0, i32 7
  %112 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %113 = load i32, i32* @OPCODE_COMMON_ISCSI_TCP_CONNECT_AND_OFFLOAD, align 4
  %114 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %115 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @be_cmd_hdr_prepare(%struct.TYPE_16__* %111, i32 %112, i32 %113, i32 %116)
  %118 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %119 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PF_INET, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %184

123:                                              ; preds = %97
  %124 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %125 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %26, align 4
  %128 = load i8*, i8** @BEISCSI_IP_TYPE_V4, align 8
  %129 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %130 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  %132 = load i32, i32* %26, align 4
  %133 = and i32 %132, 255
  %134 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %135 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %134, i32 0, i32 11
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* %26, align 4
  %140 = and i32 %139, 65280
  %141 = ashr i32 %140, 8
  %142 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %143 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %142, i32 0, i32 11
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* %26, align 4
  %148 = and i32 %147, 16711680
  %149 = ashr i32 %148, 16
  %150 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %151 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %150, i32 0, i32 11
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32 %149, i32* %154, align 4
  %155 = load i32, i32* %26, align 4
  %156 = and i32 %155, -16777216
  %157 = lshr i32 %156, 24
  %158 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %159 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %158, i32 0, i32 11
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  store i32 %157, i32* %162, align 4
  %163 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %164 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @ntohs(i32 %165)
  %167 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %168 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %167, i32 0, i32 10
  store i8* %166, i8** %168, align 8
  %169 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %170 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %174 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @ntohs(i32 %177)
  %179 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %180 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** @BEISCSI_IP_TYPE_V4, align 8
  %182 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %183 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  br label %219

184:                                              ; preds = %97
  %185 = load i8*, i8** @BEISCSI_IP_TYPE_V6, align 8
  %186 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %187 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %186, i32 0, i32 11
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  store i8* %185, i8** %188, align 8
  %189 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %190 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %189, i32 0, i32 11
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %193 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = call i32 @memcpy(i32** %191, i32* %195, i32 16)
  %197 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %198 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @ntohs(i32 %199)
  %201 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %202 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %201, i32 0, i32 10
  store i8* %200, i8** %202, align 8
  %203 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %204 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @ntohs(i32 %205)
  %207 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %208 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %207, i32 0, i32 4
  store i8* %206, i8** %208, align 8
  %209 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %210 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %209, i32 0, i32 2
  %211 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %212 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = call i32 @memcpy(i32** %210, i32* %214, i32 16)
  %216 = load i8*, i8** @BEISCSI_IP_TYPE_V6, align 8
  %217 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %218 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %184, %123
  %220 = load i16, i16* %24, align 2
  %221 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %222 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %221, i32 0, i32 0
  store i16 %220, i16* %222, align 8
  %223 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %224 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %224, align 8
  %227 = trunc i64 %225 to i32
  store i32 %227, i32* %22, align 4
  %228 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %229 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %232 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %230, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %219
  %236 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %237 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %236, i32 0, i32 0
  store i64 0, i64* %237, align 8
  br label %238

238:                                              ; preds = %235, %219
  %239 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %11, align 8
  %240 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %239, i32 0, i32 0
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = load i32, i32* %22, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %248 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %247, i32 0, i32 9
  store i32 %246, i32* %248, align 8
  %249 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %250 = load i32, i32* @KERN_INFO, align 4
  %251 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %252 = load i32, i32* %22, align 4
  %253 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %254 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i32, ...) @beiscsi_log(%struct.beiscsi_hba* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %252, i32 %255)
  %257 = load i16, i16* %17, align 2
  %258 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %259 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %258, i32 0, i32 1
  store i16 %257, i16* %259, align 2
  %260 = load i16, i16* %17, align 2
  %261 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %262 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %261, i32 0, i32 2
  store i16 %260, i16* %262, align 4
  %263 = load i16, i16* %18, align 2
  %264 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %265 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %264, i32 0, i32 3
  store i16 %263, i16* %265, align 2
  %266 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %267 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %266, i32 0, i32 4
  store i32 1, i32* %267, align 8
  %268 = load %struct.phys_addr*, %struct.phys_addr** %20, align 8
  %269 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %272 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %271, i32 0, i32 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  store i32 %270, i32* %273, align 4
  %274 = load %struct.phys_addr*, %struct.phys_addr** %20, align 8
  %275 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %278 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %277, i32 0, i32 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  store i32 %276, i32* %279, align 8
  %280 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %281 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @upper_32_bits(i32 %282)
  %284 = call i8* @cpu_to_le32(i32 %283)
  %285 = load %struct.be_sge*, %struct.be_sge** %25, align 8
  %286 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  %287 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %288 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @cpu_to_le32(i32 %289)
  %291 = load %struct.be_sge*, %struct.be_sge** %25, align 8
  %292 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %291, i32 0, i32 1
  store i8* %290, i8** %292, align 8
  %293 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %294 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i8* @cpu_to_le32(i32 %295)
  %297 = load %struct.be_sge*, %struct.be_sge** %25, align 8
  %298 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %297, i32 0, i32 0
  store i8* %296, i8** %298, align 8
  %299 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %300 = call i32 @is_chip_be2_be3r(%struct.beiscsi_hba* %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %311, label %302

302:                                              ; preds = %238
  %303 = load i32, i32* @MBX_CMD_VER1, align 4
  %304 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %305 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  store i32 %303, i32* %306, align 4
  %307 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %308 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %307, i32 0, i32 5
  store i32 32768, i32* %308, align 4
  %309 = load %struct.tcp_connect_and_offload_in_v1*, %struct.tcp_connect_and_offload_in_v1** %16, align 8
  %310 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, %struct.tcp_connect_and_offload_in_v1* %309, i32 0, i32 6
  store i32 2, i32* %310, align 8
  br label %311

311:                                              ; preds = %302, %238
  %312 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %313 = load i32, i32* %21, align 4
  %314 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %312, i32 %313)
  %315 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %14, align 8
  %316 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %315, i32 0, i32 0
  %317 = call i32 @mutex_unlock(i32* %316)
  %318 = load i32, i32* %21, align 4
  store i32 %318, i32* %5, align 4
  br label %319

319:                                              ; preds = %311, %93, %87, %48
  %320 = load i32, i32* %5, align 4
  ret i32 %320
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32, ...) #2

declare dso_local i64 @BE_GET_CRI_FROM_CID(i16 zeroext) #2

declare dso_local i64 @HWI_GET_DEF_HDRQ_ID(%struct.beiscsi_hba*, i32) #2

declare dso_local i64 @HWI_GET_DEF_BUFQ_ID(%struct.beiscsi_hba*, i32) #2

declare dso_local i32 @ISCSI_GET_PDU_TEMPLATE_ADDRESS(%struct.beiscsi_hba*, %struct.phys_addr*) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #2

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #2

declare dso_local i32 @memset(%struct.tcp_connect_and_offload_in_v1*, i32, i32) #2

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #2

declare dso_local i32 @be_cmd_hdr_prepare(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i8* @ntohs(i32) #2

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @is_chip_be2_be3r(%struct.beiscsi_hba*) #2

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
