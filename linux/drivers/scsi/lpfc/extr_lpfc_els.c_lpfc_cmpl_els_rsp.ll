; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32*, %struct.TYPE_13__, i64, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.lpfc_dmabuf*, i32, i32, %struct.lpfc_vport*, i32 }
%struct.lpfc_dmabuf = type { i32, i64 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i64, i32, i32, i32, %struct.lpfc_vport* }
%struct.Scsi_Host = type { i32 }

@ELS_CMD_LS_RJT = common dso_local global i64 0, align 8
@NLP_RM_DFLT_RPI = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ELS rsp cmpl:    status:x%x/x%x did:x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"0110 ELS response tag x%x completes Data: x%x x%x x%x x%x x%x x%x x%x\0A\00", align 1
@NLP_ACC_REGLOGIN = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i64 0, align 8
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i64 0, align 8
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"0314 PLOGI recov DID x%x Data: x%x x%x x%x\0A\00", align 1
@LPFC_MBX_IMED_UNREG = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_dflt_rpi = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_reg_login = common dso_local global i32 0, align 4
@NLP_REG_LOGIN_SEND = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"0138 ELS rsp: Cannot issue reg_login for x%x Data: x%x x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_rsp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %18, %struct.lpfc_nodelist** %7, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %20 = icmp ne %struct.lpfc_nodelist* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 5
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %23, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi %struct.lpfc_vport* [ %24, %21 ], [ null, %25 ]
  store %struct.lpfc_vport* %27, %struct.lpfc_vport** %8, align 8
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %29 = icmp ne %struct.lpfc_vport* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %32 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %31)
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi %struct.Scsi_Host* [ %32, %30 ], [ null, %33 ]
  store %struct.Scsi_Host* %35, %struct.Scsi_Host** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %13, align 8
  store i64 0, i64* %14, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %36, i32 0, i32 1
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %10, align 8
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %12, align 8
  br label %48

48:                                               ; preds = %43, %34
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.lpfc_dmabuf*
  %53 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %11, align 8
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %57 = icmp ne %struct.lpfc_nodelist* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %48
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %60 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32*, i32** %11, align 8
  %64 = bitcast i32* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ELS_CMD_LS_RJT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  store i64 1, i64* %14, align 8
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %62, %58, %48
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %79 = icmp ne %struct.lpfc_nodelist* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %82 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %86 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %137

88:                                               ; preds = %84, %80, %77
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = icmp ne %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %93, align 8
  store %struct.lpfc_dmabuf* %94, %struct.lpfc_dmabuf** %13, align 8
  %95 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %96 = icmp ne %struct.lpfc_dmabuf* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %99 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %100 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %103 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %98, i64 %101, i32 %104)
  %106 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %107 = call i32 @kfree(%struct.lpfc_dmabuf* %106)
  br label %108

108:                                              ; preds = %97, %91
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mempool_free(%struct.TYPE_12__* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %88
  %115 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %116 = icmp ne %struct.lpfc_nodelist* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %114
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %119 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %130 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  %133 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %134 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %132, %128
  br label %136

136:                                              ; preds = %135, %121, %117, %114
  br label %398

137:                                              ; preds = %84
  %138 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %139 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %150 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %138, i32 %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %142, i32 %148, i32 %154)
  %156 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %157 = load i32, i32* @KERN_INFO, align 4
  %158 = load i32, i32* @LOG_ELS, align 4
  %159 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %160 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %164 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %169 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %176 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %180 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %183 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %186 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %189 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %167, i32 %174, i32 %178, i32 %181, i32 %184, i64 %187, i32 %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %193 = icmp ne %struct.TYPE_12__* %192, null
  br i1 %193, label %194, label %397

194:                                              ; preds = %137
  %195 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %196 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %354

200:                                              ; preds = %194
  %201 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %202 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @NLP_ACC_REGLOGIN, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %354

207:                                              ; preds = %200
  %208 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %209 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %210 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %208, %struct.lpfc_nodelist* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %271, label %212

212:                                              ; preds = %207
  %213 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %214 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @FC_PT2PT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %271, label %219

219:                                              ; preds = %212
  %220 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %221 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @NLP_STE_PLOGI_ISSUE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %227 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @NLP_STE_REG_LOGIN_ISSUE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %271

231:                                              ; preds = %225, %219
  %232 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %233 = load i32, i32* @KERN_INFO, align 4
  %234 = load i32, i32* @LOG_DISCOVERY, align 4
  %235 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %236 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %239 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %243 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %246 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %241, i32 %244, i32 %247)
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %250, align 8
  store %struct.lpfc_dmabuf* %251, %struct.lpfc_dmabuf** %13, align 8
  %252 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %253 = icmp ne %struct.lpfc_dmabuf* %252, null
  br i1 %253, label %254, label %265

254:                                              ; preds = %231
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %256 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %257 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %260 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %255, i64 %258, i32 %261)
  %263 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %264 = call i32 @kfree(%struct.lpfc_dmabuf* %263)
  br label %265

265:                                              ; preds = %254, %231
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %267 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %268 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @mempool_free(%struct.TYPE_12__* %266, i32 %269)
  br label %398

271:                                              ; preds = %225, %212, %207
  %272 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %273 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %272)
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 8
  %276 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 3
  store %struct.lpfc_vport* %276, %struct.lpfc_vport** %278, align 8
  %279 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %280 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %271
  %286 = load i32, i32* @LPFC_MBX_IMED_UNREG, align 4
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  %291 = load i32, i32* @lpfc_mbx_cmpl_dflt_rpi, align 4
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 8
  br label %308

294:                                              ; preds = %271
  %295 = load i32, i32* @lpfc_mbx_cmpl_reg_login, align 4
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  %298 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %299 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %303 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 4
  %304 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %305 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %306 = load i64, i64* @NLP_STE_REG_LOGIN_ISSUE, align 8
  %307 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %304, %struct.lpfc_nodelist* %305, i64 %306)
  br label %308

308:                                              ; preds = %294, %285
  %309 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %310 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %311 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 8
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %316 = load i32, i32* @MBX_NOWAIT, align 4
  %317 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %314, %struct.TYPE_12__* %315, i32 %316)
  %318 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %308
  br label %398

321:                                              ; preds = %308
  %322 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %323 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %322)
  %324 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %327 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 8
  %330 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %331 = load i32, i32* @KERN_ERR, align 4
  %332 = load i32, i32* @LOG_ELS, align 4
  %333 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %334 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %337 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %340 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = trunc i64 %341 to i32
  %343 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %344 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %330, i32 %331, i32 %332, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %335, i32 %338, i32 %342, i32 %345)
  %347 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %348 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %321
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  %351 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %352 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %351, i32 0, i32 0
  store i32* null, i32** %352, align 8
  br label %353

353:                                              ; preds = %350, %321
  br label %374

354:                                              ; preds = %200, %194
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %356 = call i32 @lpfc_error_lost_link(%struct.TYPE_13__* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %373, label %358

358:                                              ; preds = %354
  %359 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %360 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @NLP_ACC_REGLOGIN, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %358
  %366 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %367 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %365
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %7, align 8
  %370 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %371 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %370, i32 0, i32 0
  store i32* null, i32** %371, align 8
  br label %372

372:                                              ; preds = %369, %365
  br label %373

373:                                              ; preds = %372, %358, %354
  br label %374

374:                                              ; preds = %373, %353
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 0
  %377 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %376, align 8
  store %struct.lpfc_dmabuf* %377, %struct.lpfc_dmabuf** %13, align 8
  %378 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %379 = icmp ne %struct.lpfc_dmabuf* %378, null
  br i1 %379, label %380, label %391

380:                                              ; preds = %374
  %381 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %382 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %383 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %386 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %381, i64 %384, i32 %387)
  %389 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %390 = call i32 @kfree(%struct.lpfc_dmabuf* %389)
  br label %391

391:                                              ; preds = %380, %374
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %393 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %394 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @mempool_free(%struct.TYPE_12__* %392, i32 %395)
  br label %397

397:                                              ; preds = %391, %137
  br label %398

398:                                              ; preds = %397, %320, %265, %136
  %399 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %400 = icmp ne %struct.lpfc_nodelist* %399, null
  br i1 %400, label %401, label %433

401:                                              ; preds = %398
  %402 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %403 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %433

405:                                              ; preds = %401
  %406 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %407 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @spin_lock_irq(i32 %408)
  %410 = load i32, i32* @NLP_ACC_REGLOGIN, align 4
  %411 = load i32, i32* @NLP_RM_DFLT_RPI, align 4
  %412 = or i32 %410, %411
  %413 = xor i32 %412, -1
  %414 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %415 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = and i32 %416, %413
  store i32 %417, i32* %415, align 8
  %418 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %419 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @spin_unlock_irq(i32 %420)
  %422 = load i64, i64* %14, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %405
  %425 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %426 = call i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %424
  %429 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %430 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %429, i32 0, i32 0
  store i32* null, i32** %430, align 8
  br label %431

431:                                              ; preds = %428, %424
  br label %432

432:                                              ; preds = %431, %405
  br label %433

433:                                              ; preds = %432, %401, %398
  %434 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %435 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %436 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %434, %struct.lpfc_iocbq* %435)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @lpfc_nlp_not_used(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i64) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_error_lost_link(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
