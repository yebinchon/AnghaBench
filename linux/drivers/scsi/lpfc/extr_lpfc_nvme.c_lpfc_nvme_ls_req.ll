; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_ls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_ls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i64 }
%struct.nvme_fc_remote_port = type { i32, i64 }
%struct.nvmefc_ls_req = type { i32, i32, i32, i32, i32 }
%struct.lpfc_nvme_lport = type { i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32, i32 }
%struct.lpfc_nvme_rport = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64, i64, i32 }
%struct.ulp_bde64 = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.lpfc_dmabuf = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"6051 Remoteport x%px, rport has invalid ndlp. Failing LS Req\0A\00", align 1
@NLP_NVME_TARGET = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@NLP_NVME_INITIATOR = common dso_local global i64 0, align 8
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"6088 DID x%06x not ready for IO. State x%x, Type x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"6044 Could not find node for DID %x\0A\00", align 1
@MEM_PRI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"6042 Could not find node for DID %x\0A\00", align 1
@BUFF_TYPE_BDE_64I = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [98 x i8] c"6149 Issue LS Req to DID 0x%06x lport x%px, rport x%px lsreq x%px rqstlen:%d rsplen:%d %pad %pad\0A\00", align 1
@lpfc_nvme_cmpl_gen_req = common dso_local global i32 0, align 4
@WQE_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [83 x i8] c"6052 EXIT. issue ls wqe failed lport x%px, rport x%px lsreq x%px Status %x DID %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, %struct.nvmefc_ls_req*)* @lpfc_nvme_ls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvme_ls_req(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, %struct.nvmefc_ls_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_local_port*, align 8
  %6 = alloca %struct.nvme_fc_remote_port*, align 8
  %7 = alloca %struct.nvmefc_ls_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_nvme_lport*, align 8
  %10 = alloca %struct.lpfc_nvme_rport*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_nodelist*, align 8
  %13 = alloca %struct.ulp_bde64*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %5, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %6, align 8
  store %struct.nvmefc_ls_req* %2, %struct.nvmefc_ls_req** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %5, align 8
  %18 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lpfc_nvme_lport*
  store %struct.lpfc_nvme_lport* %20, %struct.lpfc_nvme_lport** %9, align 8
  %21 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %22 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_nvme_rport*
  store %struct.lpfc_nvme_rport* %24, %struct.lpfc_nvme_rport** %10, align 8
  %25 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %9, align 8
  %26 = icmp ne %struct.lpfc_nvme_lport* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %10, align 8
  %33 = icmp ne %struct.lpfc_nvme_rport* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31, %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %295

41:                                               ; preds = %31
  %42 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %9, align 8
  %43 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %42, i32 0, i32 2
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %43, align 8
  store %struct.lpfc_vport* %44, %struct.lpfc_vport** %11, align 8
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %46 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FC_UNLOADING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %295

54:                                               ; preds = %41
  %55 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %10, align 8
  %56 = getelementptr inbounds %struct.lpfc_nvme_rport, %struct.lpfc_nvme_rport* %55, i32 0, i32 0
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %56, align 8
  store %struct.lpfc_nodelist* %57, %struct.lpfc_nodelist** %12, align 8
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %59 = icmp ne %struct.lpfc_nodelist* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %62 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = load i32, i32* @LOG_NODE, align 4
  %68 = load i32, i32* @LOG_NVME_IOERR, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %71 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.nvme_fc_remote_port* %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %295

74:                                               ; preds = %60
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %76 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %15, align 8
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %79 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %16, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* @NLP_NVME_TARGET, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %85, %74
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @NLP_NVME_INITIATOR, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94, %85
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load i32, i32* @LOG_NODE, align 4
  %102 = load i32, i32* @LOG_NVME_IOERR, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %105 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %111 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %99, i32 %100, i32 %103, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %106, i64 %109, i64 %112)
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %295

116:                                              ; preds = %94, %89
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %117)
  store %struct.lpfc_dmabuf* %118, %struct.lpfc_dmabuf** %14, align 8
  %119 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %120 = icmp ne %struct.lpfc_dmabuf* %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %116
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %123 = load i32, i32* @KERN_ERR, align 4
  %124 = load i32, i32* @LOG_NVME_DISC, align 4
  %125 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %126 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %122, i32 %123, i32 %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  store i32 2, i32* %4, align 4
  br label %295

129:                                              ; preds = %116
  %130 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %131 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %130, i32 0, i32 2
  %132 = call i32 @INIT_LIST_HEAD(i32* %131)
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %134 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MEM_PRI, align 4
  %137 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %138 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %137, i32 0, i32 0
  %139 = call i64 @lpfc_mbuf_alloc(i32 %135, i32 %136, i32* %138)
  %140 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %141 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %143 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %129
  %147 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load i32, i32* @LOG_NVME_DISC, align 4
  %150 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %151 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %155 = call i32 @kfree(%struct.lpfc_dmabuf* %154)
  store i32 3, i32* %4, align 4
  br label %295

156:                                              ; preds = %129
  %157 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %158 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %160, %struct.ulp_bde64** %13, align 8
  %161 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %162 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @putPaddrHigh(i32 %163)
  %165 = call i8* @le32_to_cpu(i8* %164)
  %166 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %167 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %166, i32 0, i32 2
  store i8* %165, i8** %167, align 8
  %168 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %169 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @putPaddrLow(i32 %170)
  %172 = call i8* @le32_to_cpu(i8* %171)
  %173 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %174 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %176 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %180 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %183 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i32 %181, i32* %185, align 8
  %186 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %187 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @le32_to_cpu(i8* %189)
  %191 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %192 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i8* %190, i8** %193, align 8
  %194 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %195 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %194, i32 1
  store %struct.ulp_bde64* %195, %struct.ulp_bde64** %13, align 8
  %196 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %197 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @putPaddrHigh(i32 %198)
  %200 = call i8* @le32_to_cpu(i8* %199)
  %201 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %202 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %201, i32 0, i32 2
  store i8* %200, i8** %202, align 8
  %203 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %204 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @putPaddrLow(i32 %205)
  %207 = call i8* @le32_to_cpu(i8* %206)
  %208 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %209 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  %210 = load i64, i64* @BUFF_TYPE_BDE_64I, align 8
  %211 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %212 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  store i64 %210, i64* %214, align 8
  %215 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %216 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %219 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  store i32 %217, i32* %221, align 8
  %222 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %223 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @le32_to_cpu(i8* %225)
  %227 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %228 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  store i8* %226, i8** %229, align 8
  %230 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %231 = load i32, i32* @KERN_INFO, align 4
  %232 = load i32, i32* @LOG_NVME_DISC, align 4
  %233 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %234 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %5, align 8
  %237 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %238 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %239 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %240 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %243 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %246 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %245, i32 0, i32 2
  %247 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %248 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %247, i32 0, i32 1
  %249 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %230, i32 %231, i32 %232, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), i32 %235, %struct.nvme_fc_local_port* %236, %struct.nvme_fc_remote_port* %237, %struct.nvmefc_ls_req* %238, i32 %241, i32 %244, i32* %246, i32* %248)
  %250 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %9, align 8
  %251 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %250, i32 0, i32 1
  %252 = call i32 @atomic_inc(i32* %251)
  %253 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %254 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %255 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %256 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %259 = load i32, i32* @lpfc_nvme_cmpl_gen_req, align 4
  %260 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %261 = call i32 @lpfc_nvme_gen_req(%struct.lpfc_vport* %253, %struct.lpfc_dmabuf* %254, i32 %257, %struct.nvmefc_ls_req* %258, i32 %259, %struct.lpfc_nodelist* %260, i32 2, i32 30, i32 0)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @WQE_SUCCESS, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %293

265:                                              ; preds = %156
  %266 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %9, align 8
  %267 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %266, i32 0, i32 0
  %268 = call i32 @atomic_inc(i32* %267)
  %269 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %270 = load i32, i32* @KERN_ERR, align 4
  %271 = load i32, i32* @LOG_NVME_DISC, align 4
  %272 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %5, align 8
  %273 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %274 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %275 = load i32, i32* %8, align 4
  %276 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %277 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %269, i32 %270, i32 %271, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), %struct.nvme_fc_local_port* %272, %struct.nvme_fc_remote_port* %273, %struct.nvmefc_ls_req* %274, i32 %275, i32 %278)
  %280 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %281 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %284 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %287 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @lpfc_mbuf_free(i32 %282, i64 %285, i32 %288)
  %290 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %291 = call i32 @kfree(%struct.lpfc_dmabuf* %290)
  %292 = load i32, i32* %8, align 4
  store i32 %292, i32* %4, align 4
  br label %295

293:                                              ; preds = %156
  %294 = load i32, i32* %8, align 4
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %293, %265, %146, %121, %98, %64, %51, %38
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @lpfc_mbuf_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_nvme_gen_req(%struct.lpfc_vport*, %struct.lpfc_dmabuf*, i32, %struct.nvmefc_ls_req*, i32, %struct.lpfc_nodelist*, i32, i32, i32) #1

declare dso_local i32 @lpfc_mbuf_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
