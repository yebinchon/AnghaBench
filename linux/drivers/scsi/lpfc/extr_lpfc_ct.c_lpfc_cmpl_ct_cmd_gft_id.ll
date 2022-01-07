; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gft_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gft_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, i64, %struct.TYPE_10__, %struct.lpfc_vport* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_nodelist = type { i8*, i8*, i32 }

@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GFT_ID cmpl: status:x%x/x%x did:x%x\00", align 1
@IOSTAT_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"6432 Process GFT_ID rsp for %08x Data %08x %08x %s %s\0A\00", align 1
@LPFC_FC4_TYPE_BITMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"FCP\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NVME\00", align 1
@NLP_FC4_FCP = common dso_local global i32 0, align 4
@NLP_FC4_NVME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [72 x i8] c"3064 Setting ndlp x%px, DID x%06x with FC4 x%08x, Data: x%08x x%08x %d\0A\00", align 1
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@FC_TYPE_NVME = common dso_local global i32 0, align 4
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i8* null, align 8
@NLP_STE_PRLI_ISSUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [71 x i8] c"6443 Sending LOGO ndlp x%px,DID x%06x with fc4_type: x%08x, state: %d\0A\00", align 1
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"3065 GFT_ID failed x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_cmd_gft_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_cmd_gft_id(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_sli_ct_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpfc_nodelist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 3
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %17, align 8
  store %struct.lpfc_vport* %18, %struct.lpfc_vport** %7, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 2
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %8, align 8
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %24, %struct.lpfc_dmabuf** %9, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %28, %struct.lpfc_dmabuf** %10, align 8
  %29 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %30 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.lpfc_sli_ct_request*
  %33 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %40 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %39, i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %49, i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IOSTAT_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %191

57:                                               ; preds = %3
  %58 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %59 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %61, %struct.lpfc_sli_ct_request** %11, align 8
  %62 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %63 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %71 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be32_to_cpu(i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load i32, i32* @LOG_DISCOVERY, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @LPFC_FC4_TYPE_BITMASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @LPFC_FC4_TYPE_BITMASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %96 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i8* %89, i8* %95)
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %97, i32 %98)
  store %struct.lpfc_nodelist* %99, %struct.lpfc_nodelist** %13, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %101 = icmp ne %struct.lpfc_nodelist* %100, null
  br i1 %101, label %102, label %190

102:                                              ; preds = %57
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @LPFC_FC4_TYPE_BITMASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @NLP_FC4_FCP, align 4
  %109 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %110 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @LPFC_FC4_TYPE_BITMASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @NLP_FC4_NVME, align 4
  %120 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %121 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %126 = load i32, i32* @KERN_INFO, align 4
  %127 = load i32, i32* @LOG_DISCOVERY, align 4
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %131 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FC_TYPE_FCP, align 4
  %134 = load i32, i32* @FC_TYPE_NVME, align 4
  %135 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %136 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), %struct.lpfc_nodelist* %128, i32 %129, i32 %132, i32 %133, i32 %134, i8* %137)
  %139 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %140 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %143 = icmp eq i8* %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %124
  %145 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %146 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %151 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %152 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %154 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %155 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %156 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %153, %struct.lpfc_nodelist* %154, i32 %155)
  %157 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %159 = call i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %157, %struct.lpfc_nodelist* %158, i32 0)
  br label %189

160:                                              ; preds = %144, %124
  %161 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %162 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %188, label %165

165:                                              ; preds = %160
  %166 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %167 = load i32, i32* @KERN_INFO, align 4
  %168 = load i32, i32* @LOG_DISCOVERY, align 4
  %169 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %172 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %175 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), %struct.lpfc_nodelist* %169, i32 %170, i32 %173, i8* %176)
  %178 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %179 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %180 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %178, %struct.lpfc_nodelist* %179, i32 0)
  %181 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %182 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %183 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %185 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %186 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %187 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %184, %struct.lpfc_nodelist* %185, i32 %186)
  br label %188

188:                                              ; preds = %165, %160
  br label %189

189:                                              ; preds = %188, %149
  br label %190

190:                                              ; preds = %189, %57
  br label %199

191:                                              ; preds = %3
  %192 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %193 = load i32, i32* @KERN_ERR, align 4
  %194 = load i32, i32* @LOG_DISCOVERY, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %192, i32 %193, i32 %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %191, %190
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %201 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %202 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %200, %struct.lpfc_iocbq* %201)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
