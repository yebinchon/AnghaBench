; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gff_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gff_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, i64, i64, %struct.TYPE_14__, %struct.lpfc_vport* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.lpfc_vport = type { i32, i64, i64, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"GFF_ID cmpl:     status:x%x/x%x did:x%x\00", align 1
@IOSTAT_SUCCESS = common dso_local global i32 0, align 4
@FCP_TYPE_FEATURE_OFFSET = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"6431 Process GFF_ID rsp for %08x fbits %02x %s %s\0A\00", align 1
@FC4_FEATURE_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Initiator\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@FC4_FEATURE_TARGET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@SLI_CT_RESPONSE_FS_ACC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"0270 Skip x%x GFF NameServer Rsp Data: (init) x%x x%x\0A\00", align 1
@LPFC_MAX_NS_RETRY = common dso_local global i64 0, align 8
@IOSTAT_LOCAL_REJECT = common dso_local global i32 0, align 4
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@SLI_CTNS_GFF_ID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"0267 NameServer GFF Rsp x%x Error (%d %d) Data: x%x x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"0242 Process x%x GFF NameServer Rsp Data: x%x x%x x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"0243 Skip x%x GFF NameServer Rsp Data: x%x x%x\0A\00", align 1
@LPFC_DISC_AUTH = common dso_local global i64 0, align 8
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_cmd_gff_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_cmd_gff_id(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_sli_ct_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %19, align 8
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %7, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %22 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %21)
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %8, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 3
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %28, %struct.lpfc_dmabuf** %10, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %32, %struct.lpfc_dmabuf** %11, align 8
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.lpfc_sli_ct_request*
  %37 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %44 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %43, i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %53, i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IOSTAT_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %122

61:                                               ; preds = %3
  %62 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %63 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %65, %struct.lpfc_sli_ct_request** %12, align 8
  %66 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %67 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @FCP_TYPE_FEATURE_OFFSET, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %75 = load i32, i32* @KERN_INFO, align 4
  %76 = load i32, i32* @LOG_DISCOVERY, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @FC4_FEATURE_INIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @FC4_FEATURE_TARGET, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %91 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i8* %84, i8* %90)
  %92 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %93 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @SLI_CT_RESPONSE_FS_ACC, align 4
  %98 = call i64 @be16_to_cpu(i32 %97)
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %61
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @FC4_FEATURE_INIT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @FC4_FEATURE_TARGET, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %105
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %112 = load i32, i32* @KERN_INFO, align 4
  %113 = load i32, i32* @LOG_DISCOVERY, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %117 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %115, i32 %118)
  br label %234

120:                                              ; preds = %105, %100
  br label %121

121:                                              ; preds = %120, %61
  br label %196

122:                                              ; preds = %3
  %123 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %124 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @LPFC_MAX_NS_RETRY, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %175

128:                                              ; preds = %122
  store i32 1, i32* %15, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %142 = and i32 %140, %141
  switch i32 %142, label %145 [
    i32 130, label %143
    i32 131, label %144
    i32 129, label %144
    i32 128, label %144
  ]

143:                                              ; preds = %134
  br label %150

144:                                              ; preds = %134, %134, %134
  store i32 0, i32* %15, align 4
  br label %150

145:                                              ; preds = %134
  %146 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %147 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %145, %144, %143
  br label %156

151:                                              ; preds = %128
  %152 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %153 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %151, %150
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %161 = load i32, i32* @SLI_CTNS_GFF_ID, align 4
  %162 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %163 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %160, i32 %161, i64 %164, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %171 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %172 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %170, %struct.lpfc_iocbq* %171)
  br label %289

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %173, %156
  br label %175

175:                                              ; preds = %174, %122
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %177 = load i32, i32* @KERN_ERR, align 4
  %178 = load i32, i32* @LOG_DISCOVERY, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %190 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %193 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %179, i32 %182, i32 %188, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %175, %121
  %197 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport* %197, i32 %198)
  store %struct.lpfc_nodelist* %199, %struct.lpfc_nodelist** %17, align 8
  %200 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %201 = icmp ne %struct.lpfc_nodelist* %200, null
  br i1 %201, label %202, label %221

202:                                              ; preds = %196
  %203 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %204 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %202
  %207 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %208 = load i32, i32* @KERN_INFO, align 4
  %209 = load i32, i32* @LOG_DISCOVERY, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %212 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %215 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %218 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %207, i32 %208, i32 %209, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %210, i32 %213, i32 %216, i32 %219)
  br label %233

221:                                              ; preds = %202, %196
  %222 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %223 = load i32, i32* @KERN_INFO, align 4
  %224 = load i32, i32* @LOG_DISCOVERY, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %227 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %230 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %222, i32 %223, i32 %224, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %225, i32 %228, i32 %231)
  br label %233

233:                                              ; preds = %221, %206
  br label %234

234:                                              ; preds = %233, %110
  %235 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %236 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %241 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, -1
  store i64 %243, i64* %241, align 8
  br label %244

244:                                              ; preds = %239, %234
  %245 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %246 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %285

249:                                              ; preds = %244
  %250 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %251 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @LPFC_DISC_AUTH, align 8
  %254 = icmp sge i64 %252, %253
  br i1 %254, label %255, label %282

255:                                              ; preds = %249
  %256 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %257 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @FC_RSCN_MODE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %255
  %263 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %264 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %263)
  %265 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %266 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @spin_lock_irq(i32 %267)
  %269 = load i32, i32* @FC_RSCN_MODE, align 4
  %270 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %271 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  %274 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %275 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @spin_unlock_irq(i32 %276)
  br label %281

278:                                              ; preds = %255
  %279 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %280 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %279)
  br label %281

281:                                              ; preds = %278, %262
  br label %282

282:                                              ; preds = %281, %249
  %283 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %284 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %283)
  br label %285

285:                                              ; preds = %282, %244
  %286 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %287 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %288 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %286, %struct.lpfc_iocbq* %287)
  br label %289

289:                                              ; preds = %285, %169
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i64, i32) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_flush_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
