; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_disc_fdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_disc_fdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_8__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_vport* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.lpfc_dmabuf = type { %struct.lpfc_sli_ct_request* }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.lpfc_vport = type { i8*, i32, i8* }
%struct.lpfc_nodelist = type { i32 }

@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FDMI cmpl:       status:x%x/x%x latt:%d\00", align 1
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@LPFC_FDMI_MAX_RETRY = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"0229 FDMI cmd %04x failed, latt = %d ulpStatus: x%x, rid x%x\0A\00", align 1
@FDMI_DID = common dso_local global i32 0, align 4
@SLI_CT_RESPONSE_FS_RJT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"0220 FDMI cmd failed FS_RJT Data: x%x\00", align 1
@LPFC_FDMI2_HBA_ATTR = common dso_local global i8* null, align 8
@LPFC_FDMI1_HBA_ATTR = common dso_local global i8* null, align 8
@LPFC_FDMI1_PORT_ATTR = common dso_local global i8* null, align 8
@LPFC_FDMI2_PORT_ATTR = common dso_local global i8* null, align 8
@LPFC_FDMI2_SMART_ATTR = common dso_local global i8* null, align 8
@LPFC_PHYSICAL_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_disc_fdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_disc_fdmi(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.lpfc_sli_ct_request*, align 8
  %11 = alloca %struct.lpfc_sli_ct_request*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.lpfc_nodelist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 4
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %20, align 8
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %7, align 8
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 3
  %24 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %23, align 8
  store %struct.lpfc_dmabuf* %24, %struct.lpfc_dmabuf** %8, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 2
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %26, align 8
  store %struct.lpfc_dmabuf* %27, %struct.lpfc_dmabuf** %9, align 8
  %28 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %29 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %28, i32 0, i32 0
  %30 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %29, align 8
  store %struct.lpfc_sli_ct_request* %30, %struct.lpfc_sli_ct_request** %10, align 8
  %31 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %32 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %31, i32 0, i32 0
  %33 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %32, align 8
  store %struct.lpfc_sli_ct_request* %33, %struct.lpfc_sli_ct_request** %11, align 8
  %34 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %10, align 8
  %35 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %40 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %44, i32 0, i32 1
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %14, align 8
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %47 = call i32 @lpfc_els_chk_latt(%struct.lpfc_vport* %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %49 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %48, i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %58, i32 %59)
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %63, %3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %104 [
    i32 133, label %83
    i32 138, label %83
    i32 134, label %83
    i32 136, label %83
    i32 135, label %83
    i32 137, label %83
  ]

83:                                               ; preds = %74, %74, %74, %74, %74, %74
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LPFC_FDMI_MAX_RETRY, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %105

94:                                               ; preds = %83
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = load i32, i32* @LPFC_ELS_RING, align 4
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %98 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %95, i32 %96, %struct.lpfc_iocbq* %97, i32 0)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @IOCB_ERROR, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %105

103:                                              ; preds = %94
  br label %255

104:                                              ; preds = %74
  br label %105

105:                                              ; preds = %104, %102, %93
  br label %106

106:                                              ; preds = %105, %68
  %107 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load i32, i32* @LOG_DISCOVERY, align 4
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @be16_to_cpu(i64 %110)
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %112, i64 %115, i32 %121)
  br label %123

123:                                              ; preds = %106, %63
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %125 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %126 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %124, %struct.lpfc_iocbq* %125)
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %128 = load i32, i32* @FDMI_DID, align 4
  %129 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %127, i32 %128)
  store %struct.lpfc_nodelist* %129, %struct.lpfc_nodelist** %15, align 8
  %130 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %131 = icmp ne %struct.lpfc_nodelist* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %123
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %134 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132, %123
  br label %255

137:                                              ; preds = %132
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @be16_to_cpu(i64 %138)
  store i32 %139, i32* %17, align 4
  %140 = load i64, i64* %13, align 8
  %141 = load i32, i32* @SLI_CT_RESPONSE_FS_RJT, align 4
  %142 = call i64 @cpu_to_be16(i32 %141)
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %229

144:                                              ; preds = %137
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %146 = load i32, i32* @KERN_INFO, align 4
  %147 = load i32, i32* @LOG_DISCOVERY, align 4
  %148 = load i32, i32* %17, align 4
  %149 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %17, align 4
  switch i32 %150, label %228 [
    i32 130, label %151
    i32 128, label %168
    i32 129, label %197
  ]

151:                                              ; preds = %144
  %152 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %153 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** @LPFC_FDMI2_HBA_ATTR, align 8
  %156 = icmp eq i8* %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load i8*, i8** @LPFC_FDMI1_HBA_ATTR, align 8
  %159 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %160 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** @LPFC_FDMI1_PORT_ATTR, align 8
  %162 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %163 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %165 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %166 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %164, %struct.lpfc_nodelist* %165, i32 132, i32 0)
  br label %167

167:                                              ; preds = %157, %151
  br label %255

168:                                              ; preds = %144
  %169 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %170 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i8*, i8** @LPFC_FDMI2_PORT_ATTR, align 8
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %168
  %175 = load i8*, i8** @LPFC_FDMI1_PORT_ATTR, align 8
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %177 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %179 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %180 = load i32, i32* %17, align 4
  %181 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %178, %struct.lpfc_nodelist* %179, i32 %180, i32 0)
  br label %182

182:                                              ; preds = %174, %168
  %183 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %184 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** @LPFC_FDMI2_SMART_ATTR, align 8
  %187 = icmp eq i8* %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %182
  %189 = load i8*, i8** @LPFC_FDMI2_PORT_ATTR, align 8
  %190 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %191 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %193 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %194 = load i32, i32* %17, align 4
  %195 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %192, %struct.lpfc_nodelist* %193, i32 %194, i32 0)
  br label %196

196:                                              ; preds = %188, %182
  br label %255

197:                                              ; preds = %144
  %198 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %199 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** @LPFC_FDMI2_PORT_ATTR, align 8
  %202 = icmp eq i8* %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = load i8*, i8** @LPFC_FDMI1_HBA_ATTR, align 8
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %206 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** @LPFC_FDMI1_PORT_ATTR, align 8
  %208 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %209 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %208, i32 0, i32 0
  store i8* %207, i8** %209, align 8
  %210 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %211 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %212 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %210, %struct.lpfc_nodelist* %211, i32 132, i32 0)
  br label %213

213:                                              ; preds = %203, %197
  %214 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %215 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i8*, i8** @LPFC_FDMI2_SMART_ATTR, align 8
  %218 = icmp eq i8* %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %213
  %220 = load i8*, i8** @LPFC_FDMI2_PORT_ATTR, align 8
  %221 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %222 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  %223 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %224 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %223, %struct.lpfc_nodelist* %224, i32 %225, i32 0)
  br label %227

227:                                              ; preds = %219, %213
  br label %255

228:                                              ; preds = %144
  br label %229

229:                                              ; preds = %228, %137
  %230 = load i32, i32* %17, align 4
  switch i32 %230, label %254 [
    i32 130, label %231
    i32 132, label %235
    i32 131, label %239
  ]

231:                                              ; preds = %229
  %232 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %233 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %234 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %232, %struct.lpfc_nodelist* %233, i32 129, i32 0)
  br label %254

235:                                              ; preds = %229
  %236 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %237 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %238 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %236, %struct.lpfc_nodelist* %237, i32 131, i32 0)
  br label %254

239:                                              ; preds = %229
  %240 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %241 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @LPFC_PHYSICAL_PORT, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %247 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %248 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %246, %struct.lpfc_nodelist* %247, i32 130, i32 0)
  br label %253

249:                                              ; preds = %239
  %250 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %251 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %252 = call i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %250, %struct.lpfc_nodelist* %251, i32 128, i32 0)
  br label %253

253:                                              ; preds = %249, %245
  br label %254

254:                                              ; preds = %229, %253, %235, %231
  br label %255

255:                                              ; preds = %254, %227, %196, %167, %136, %103
  ret void
}

declare dso_local i32 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @lpfc_fdmi_cmd(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
