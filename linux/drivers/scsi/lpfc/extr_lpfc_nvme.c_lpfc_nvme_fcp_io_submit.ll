; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_fcp_io_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_fcp_io_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i64 }
%struct.nvme_fc_remote_port = type { i32, i64 }
%struct.nvmefc_fcp_req = type { i64, i64, i64, %struct.lpfc_nvme_fcpreq_priv* }
%struct.lpfc_nvme_fcpreq_priv = type { %struct.lpfc_io_buf* }
%struct.lpfc_io_buf = type { i32, %struct.nvmefc_fcp_req*, i8*, i8*, i32, %struct.TYPE_10__, i32, i64, %struct.lpfc_nodelist*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32 }
%struct.lpfc_nvme_lport = type { i32, i32, i32, i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_9__, i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32*, %struct.lpfc_fc4_ctrl_stat }
%struct.lpfc_fc4_ctrl_stat = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nvme_rport = type { %struct.lpfc_nodelist* }
%struct.lpfc_nvme_qhandle = type { i32, i64 }
%struct.nvme_common_command = type { i64 }
%struct.nvme_fc_cmd_iu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvme_common_command }

@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"6117 Fail IO, NULL hw_queue_handle\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"6124 Fail IO, Driver unload\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"6158 Fail IO, NULL request data\0A\00", align 1
@LOG_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"6053 Busy IO, ndlp not ready: rport x%px ndlp x%px, DID x%06x\0A\00", align 1
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"6036 Fail IO, DID x%06x not ready for IO. State x%x, Type x%x Flg x%x\0A\00", align 1
@nvme_admin_keep_alive = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"6174 Fail IO, ndlp qdepth exceeded: idx %d DID %x pend %d qdepth %d\0A\00", align 1
@LPFC_FCP_SCHED_BY_HDWQ = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"6065 Fail IO, driver buffer pool is empty: idx %d DID %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"6175 Fail IO, Prep DMA: idx %d DID %x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"NVME FCP XMIT: xri x%x idx %d to %06x\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"6113 Fail IO, Could not issue WQE err %x sid: x%x did: x%x oxid: x%x\0A\00", align 1
@NVMEFC_FCP_WRITE = common dso_local global i64 0, align 8
@LPFC_CHECK_CPU_CNT = common dso_local global i32 0, align 4
@LPFC_CHECK_NVME_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, i8*, %struct.nvmefc_fcp_req*)* @lpfc_nvme_fcp_io_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvme_fcp_io_submit(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, i8* %2, %struct.nvmefc_fcp_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_fc_local_port*, align 8
  %7 = alloca %struct.nvme_fc_remote_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvmefc_fcp_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lpfc_nvme_lport*, align 8
  %15 = alloca %struct.lpfc_fc4_ctrl_stat*, align 8
  %16 = alloca %struct.lpfc_vport*, align 8
  %17 = alloca %struct.lpfc_hba*, align 8
  %18 = alloca %struct.lpfc_nodelist*, align 8
  %19 = alloca %struct.lpfc_io_buf*, align 8
  %20 = alloca %struct.lpfc_nvme_rport*, align 8
  %21 = alloca %struct.lpfc_nvme_qhandle*, align 8
  %22 = alloca %struct.lpfc_nvme_fcpreq_priv*, align 8
  %23 = alloca %struct.nvme_common_command*, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %6, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nvmefc_fcp_req* %3, %struct.nvmefc_fcp_req** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %6, align 8
  %25 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.lpfc_nvme_lport*
  store %struct.lpfc_nvme_lport* %27, %struct.lpfc_nvme_lport** %14, align 8
  %28 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %29 = icmp ne %struct.lpfc_nvme_lport* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %427

37:                                               ; preds = %4
  %38 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %39 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %38, i32 0, i32 5
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %39, align 8
  store %struct.lpfc_vport* %40, %struct.lpfc_vport** %16, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %37
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = load i32, i32* @LOG_NVME_IOERR, align 4
  %51 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %53 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %52, i32 0, i32 1
  %54 = call i32 @atomic_inc(i32* %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %427

57:                                               ; preds = %37
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 2
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %59, align 8
  store %struct.lpfc_hba* %60, %struct.lpfc_hba** %17, align 8
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %62 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @FC_UNLOADING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %427

70:                                               ; preds = %57
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %72 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FC_UNLOADING, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %80 = load i32, i32* @KERN_INFO, align 4
  %81 = load i32, i32* @LOG_NVME_IOERR, align 4
  %82 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %84 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %83, i32 0, i32 1
  %85 = call i32 @atomic_inc(i32* %84)
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %427

88:                                               ; preds = %70
  %89 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %90 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %89, i32 0, i32 3
  %91 = load %struct.lpfc_nvme_fcpreq_priv*, %struct.lpfc_nvme_fcpreq_priv** %90, align 8
  store %struct.lpfc_nvme_fcpreq_priv* %91, %struct.lpfc_nvme_fcpreq_priv** %22, align 8
  %92 = load %struct.lpfc_nvme_fcpreq_priv*, %struct.lpfc_nvme_fcpreq_priv** %22, align 8
  %93 = icmp ne %struct.lpfc_nvme_fcpreq_priv* %92, null
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %88
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %100 = load i32, i32* @KERN_INFO, align 4
  %101 = load i32, i32* @LOG_NVME_IOERR, align 4
  %102 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %104 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %103, i32 0, i32 1
  %105 = call i32 @atomic_inc(i32* %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %10, align 4
  br label %427

108:                                              ; preds = %88
  %109 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %7, align 8
  %110 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.lpfc_nvme_rport*
  store %struct.lpfc_nvme_rport* %112, %struct.lpfc_nvme_rport** %20, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = bitcast i8* %113 to %struct.lpfc_nvme_qhandle*
  store %struct.lpfc_nvme_qhandle* %114, %struct.lpfc_nvme_qhandle** %21, align 8
  %115 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %20, align 8
  %116 = getelementptr inbounds %struct.lpfc_nvme_rport, %struct.lpfc_nvme_rport* %115, i32 0, i32 0
  %117 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %116, align 8
  store %struct.lpfc_nodelist* %117, %struct.lpfc_nodelist** %18, align 8
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %119 = icmp ne %struct.lpfc_nodelist* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %108
  %121 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %122 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %120, %108
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %126 = load i32, i32* @KERN_INFO, align 4
  %127 = load i32, i32* @LOG_NODE, align 4
  %128 = load i32, i32* @LOG_NVME_IOERR, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %20, align 8
  %131 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %132 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %7, align 8
  %133 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %125, i32 %126, i32 %129, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), %struct.lpfc_nvme_rport* %130, %struct.lpfc_nodelist* %131, i32 %134)
  %136 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %137 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %136, i32 0, i32 1
  %138 = call i32 @atomic_inc(i32* %137)
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %10, align 4
  br label %427

141:                                              ; preds = %120
  %142 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %143 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @NLP_NVME_TARGET, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %178

148:                                              ; preds = %141
  %149 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %150 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %148
  %155 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %156 = load i32, i32* @KERN_INFO, align 4
  %157 = load i32, i32* @LOG_NODE, align 4
  %158 = load i32, i32* @LOG_NVME_IOERR, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %7, align 8
  %161 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %164 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %167 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %170 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %155, i32 %156, i32 %159, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %165, i32 %168, i32 %171)
  %173 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %174 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %173, i32 0, i32 4
  %175 = call i32 @atomic_inc(i32* %174)
  %176 = load i32, i32* @EBUSY, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %10, align 4
  br label %427

178:                                              ; preds = %148, %141
  %179 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %21, align 8
  %180 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %202, label %183

183:                                              ; preds = %178
  %184 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %185 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %183
  %189 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %190 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.nvme_fc_cmd_iu*
  %193 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store %struct.nvme_common_command* %194, %struct.nvme_common_command** %23, align 8
  %195 = load %struct.nvme_common_command*, %struct.nvme_common_command** %23, align 8
  %196 = getelementptr inbounds %struct.nvme_common_command, %struct.nvme_common_command* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @nvme_admin_keep_alive, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %188
  store i32 1, i32* %11, align 4
  br label %201

201:                                              ; preds = %200, %188
  br label %202

202:                                              ; preds = %201, %183, %178
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %204 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %205 = call i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba* %203, %struct.lpfc_nodelist* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %202
  %208 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %209 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %208, i32 0, i32 3
  %210 = call i32 @atomic_read(i32* %209)
  %211 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %212 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp sge i32 %210, %213
  br i1 %214, label %215, label %240

215:                                              ; preds = %207
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %240, label %218

218:                                              ; preds = %215
  %219 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %220 = load i32, i32* @KERN_INFO, align 4
  %221 = load i32, i32* @LOG_NVME_IOERR, align 4
  %222 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %21, align 8
  %223 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %226 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %229 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %228, i32 0, i32 3
  %230 = call i32 @atomic_read(i32* %229)
  %231 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %232 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %219, i32 %220, i32 %221, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %224, i32 %227, i32 %230, i32 %233)
  %235 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %236 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %235, i32 0, i32 3
  %237 = call i32 @atomic_inc(i32* %236)
  %238 = load i32, i32* @EBUSY, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %10, align 4
  br label %427

240:                                              ; preds = %215, %207
  br label %241

241:                                              ; preds = %240, %202
  %242 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %243 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @LPFC_FCP_SCHED_BY_HDWQ, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %21, align 8
  %249 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  store i32 %250, i32* %12, align 4
  br label %262

251:                                              ; preds = %241
  %252 = call i32 (...) @raw_smp_processor_id()
  store i32 %252, i32* %13, align 4
  %253 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %254 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %12, align 4
  br label %262

262:                                              ; preds = %251, %247
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %264 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %11, align 4
  %267 = call %struct.lpfc_io_buf* @lpfc_get_nvme_buf(%struct.lpfc_hba* %263, %struct.lpfc_nodelist* %264, i32 %265, i32 %266)
  store %struct.lpfc_io_buf* %267, %struct.lpfc_io_buf** %19, align 8
  %268 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %269 = icmp eq %struct.lpfc_io_buf* %268, null
  br i1 %269, label %270, label %286

270:                                              ; preds = %262
  %271 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %272 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %271, i32 0, i32 2
  %273 = call i32 @atomic_inc(i32* %272)
  %274 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %275 = load i32, i32* @KERN_INFO, align 4
  %276 = load i32, i32* @LOG_NVME_IOERR, align 4
  %277 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %21, align 8
  %278 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %281 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %274, i32 %275, i32 %276, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %279, i32 %282)
  %284 = load i32, i32* @EBUSY, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %10, align 4
  br label %427

286:                                              ; preds = %262
  %287 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %288 = load %struct.lpfc_nvme_fcpreq_priv*, %struct.lpfc_nvme_fcpreq_priv** %22, align 8
  %289 = getelementptr inbounds %struct.lpfc_nvme_fcpreq_priv, %struct.lpfc_nvme_fcpreq_priv* %288, i32 0, i32 0
  store %struct.lpfc_io_buf* %287, %struct.lpfc_io_buf** %289, align 8
  %290 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %291 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %292 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %291, i32 0, i32 1
  store %struct.nvmefc_fcp_req* %290, %struct.nvmefc_fcp_req** %292, align 8
  %293 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %294 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %295 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %294, i32 0, i32 8
  store %struct.lpfc_nodelist* %293, %struct.lpfc_nodelist** %295, align 8
  %296 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %21, align 8
  %297 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %300 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %299, i32 0, i32 7
  store i64 %298, i64* %300, align 8
  %301 = load i32, i32* %12, align 4
  %302 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %303 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 1
  store i32 %301, i32* %304, align 4
  %305 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %306 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %307, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 1
  store %struct.lpfc_fc4_ctrl_stat* %312, %struct.lpfc_fc4_ctrl_stat** %15, align 8
  %313 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %314 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %315 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %316 = load %struct.lpfc_fc4_ctrl_stat*, %struct.lpfc_fc4_ctrl_stat** %15, align 8
  %317 = call i32 @lpfc_nvme_prep_io_cmd(%struct.lpfc_vport* %313, %struct.lpfc_io_buf* %314, %struct.lpfc_nodelist* %315, %struct.lpfc_fc4_ctrl_stat* %316)
  %318 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %319 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %320 = call i32 @lpfc_nvme_prep_io_dma(%struct.lpfc_vport* %318, %struct.lpfc_io_buf* %319)
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %339

323:                                              ; preds = %286
  %324 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %325 = load i32, i32* @KERN_INFO, align 4
  %326 = load i32, i32* @LOG_NVME_IOERR, align 4
  %327 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %21, align 8
  %328 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %331 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %324, i32 %325, i32 %326, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %329, i32 %332)
  %334 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %335 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %334, i32 0, i32 1
  %336 = call i32 @atomic_inc(i32* %335)
  %337 = load i32, i32* @ENOMEM, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %10, align 4
  br label %392

339:                                              ; preds = %286
  %340 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %341 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %342 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %21, align 8
  %346 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %349 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @lpfc_nvmeio_data(%struct.lpfc_hba* %340, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %344, i32 %347, i32 %350)
  %352 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %353 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %354 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %357 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %356, i32 0, i32 5
  %358 = call i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba* %352, i32 %355, %struct.TYPE_10__* %357)
  store i32 %358, i32* %10, align 4
  %359 = load i32, i32* %10, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %380

361:                                              ; preds = %339
  %362 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %363 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %362, i32 0, i32 0
  %364 = call i32 @atomic_inc(i32* %363)
  %365 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %366 = load i32, i32* @KERN_INFO, align 4
  %367 = load i32, i32* @LOG_NVME_IOERR, align 4
  %368 = load i32, i32* %10, align 4
  %369 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  %370 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %18, align 8
  %373 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %376 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %365, i32 %366, i32 %367, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0), i32 %368, i32 %371, i32 %374, i32 %378)
  br label %392

380:                                              ; preds = %339
  %381 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %382 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %381, i32 0, i32 3
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %380
  %386 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %387 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %388 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @lpfc_keep_pvt_pool_above_lowwm(%struct.lpfc_hba* %386, i32 %389)
  br label %391

391:                                              ; preds = %385, %380
  store i32 0, i32* %5, align 4
  br label %429

392:                                              ; preds = %361, %323
  %393 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %394 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %393, i32 0, i32 1
  %395 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %394, align 8
  %396 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %418

399:                                              ; preds = %392
  %400 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %401 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %400, i32 0, i32 1
  %402 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %401, align 8
  %403 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @NVMEFC_FCP_WRITE, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %399
  %408 = load %struct.lpfc_fc4_ctrl_stat*, %struct.lpfc_fc4_ctrl_stat** %15, align 8
  %409 = getelementptr inbounds %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, -1
  store i32 %411, i32* %409, align 4
  br label %417

412:                                              ; preds = %399
  %413 = load %struct.lpfc_fc4_ctrl_stat*, %struct.lpfc_fc4_ctrl_stat** %15, align 8
  %414 = getelementptr inbounds %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, -1
  store i32 %416, i32* %414, align 4
  br label %417

417:                                              ; preds = %412, %407
  br label %423

418:                                              ; preds = %392
  %419 = load %struct.lpfc_fc4_ctrl_stat*, %struct.lpfc_fc4_ctrl_stat** %15, align 8
  %420 = getelementptr inbounds %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %421, -1
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %418, %417
  %424 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  %425 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %19, align 8
  %426 = call i32 @lpfc_release_nvme_buf(%struct.lpfc_hba* %424, %struct.lpfc_io_buf* %425)
  br label %427

427:                                              ; preds = %423, %270, %218, %154, %124, %98, %78, %67, %47, %34
  %428 = load i32, i32* %10, align 4
  store i32 %428, i32* %5, align 4
  br label %429

429:                                              ; preds = %427, %391
  %430 = load i32, i32* %5, align 4
  ret i32 %430
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.lpfc_io_buf* @lpfc_get_nvme_buf(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nvme_prep_io_cmd(%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.lpfc_nodelist*, %struct.lpfc_fc4_ctrl_stat*) #1

declare dso_local i32 @lpfc_nvme_prep_io_dma(%struct.lpfc_vport*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @lpfc_nvmeio_data(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @lpfc_keep_pvt_pool_above_lowwm(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_release_nvme_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
