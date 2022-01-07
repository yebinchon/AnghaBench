; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i64, %struct.TYPE_23__, %struct.TYPE_22__, i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.lpfc_iocbq = type { i32, i32, i64, i64, %struct.TYPE_14__, %struct.lpfc_vport* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.lpfc_vport = type { i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_nodelist = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.ls_rjt = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@lpfc_max_els_tries = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Retry ELS:       wd7:x%x wd4:x%x did:x%x\00", align 1
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_HORNET = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"0124 Retry illegal cmd x%x retry:x%x delay:x%x\0A\00", align 1
@NameServer_DID = common dso_local global i64 0, align 8
@RJT_UNAVAIL_TEMP = common dso_local global i32 0, align 4
@LSEXP_CMD_IN_PROGRESS = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LSEXP_OUT_OF_RESOURCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"0125 FDISC Failed (x%x). Fabric out of resources\0A\00", align 1
@FC_VPORT_NO_FABRIC_RSCS = common dso_local global i32 0, align 4
@LSEXP_PORT_LOGIN_REQ = common dso_local global i32 0, align 4
@LSEXP_NOTHING_MORE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"0820 FLOGI Failed (x%x). BBCredit Not Supported\0A\00", align 1
@LSEXP_INVALID_PNAME = common dso_local global i32 0, align 4
@LSEXP_INVALID_NPORT_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"0122 FDISC Failed (x%x). Fabric Detected Bad WWN\0A\00", align 1
@FC_VPORT_FABRIC_REJ_WWN = common dso_local global i32 0, align 4
@LSEXP_REQ_UNSUPPORTED = common dso_local global i32 0, align 4
@NLP_FCP_PRLI_RJT = common dso_local global i32 0, align 4
@FDMI_DID = common dso_local global i64 0, align 8
@LS_LOOPBACK_MODE = common dso_local global i64 0, align 8
@FC_UNLOADING = common dso_local global i32 0, align 4
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"2849 Stop retry ELS command x%x to remote NPORT x%x, Data: x%x x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"0107 Retry ELS command x%x to remote NPORT x%x Data: x%x x%x\0A\00", align 1
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_STE_PRLI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_LOGO_ISSUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [83 x i8] c"0137 No retry ELS command x%x to remote NPORT x%x: Out of Resources: Error:x%x/%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"0108 No retry ELS command x%x to remote NPORT x%x Retried:%d Error:x%x/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_els_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_retry(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.lpfc_nodelist*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ls_rjt, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 5
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %24, align 8
  store %struct.lpfc_vport* %25, %struct.lpfc_vport** %8, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %27 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %26)
  store %struct.Scsi_Host* %27, %struct.Scsi_Host** %9, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 4
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %10, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %33, %struct.lpfc_nodelist** %11, align 8
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %37, %struct.lpfc_dmabuf** %12, align 8
  store i32 0, i32* %15, align 4
  %38 = load i32, i32* @lpfc_max_els_tries, align 4
  store i32 %38, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %39 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %40 = icmp ne %struct.lpfc_dmabuf* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %3
  %42 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %43 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %48 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %13, align 8
  %51 = load i64*, i64** %13, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %13, align 8
  %53 = load i64, i64* %51, align 8
  store i64 %53, i64* %19, align 8
  br label %54

54:                                               ; preds = %46, %41, %3
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %56 = icmp ne %struct.lpfc_nodelist* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %59 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %20, align 8
  br label %85

65:                                               ; preds = %57, %54
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %20, align 8
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %72 = load i64, i64* %20, align 8
  %73 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %71, i64 %72)
  store %struct.lpfc_nodelist* %73, %struct.lpfc_nodelist** %11, align 8
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %75 = icmp ne %struct.lpfc_nodelist* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %78 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76, %65
  %81 = load i64, i64* %19, align 8
  %82 = icmp ne i64 %81, 151
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %813

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %87 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = bitcast %struct.TYPE_14__* %88 to i64*
  %90 = getelementptr inbounds i64, i64* %89, i64 7
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %99 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %86, i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %91, i32 %97, i64 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %448 [
    i32 140, label %105
    i32 134, label %106
    i32 138, label %120
    i32 135, label %217
    i32 141, label %217
    i32 136, label %229
    i32 142, label %229
    i32 137, label %230
    i32 139, label %447
    i32 143, label %447
  ]

105:                                              ; preds = %85
  br label %449

106:                                              ; preds = %85
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @LPFC_SLI_REV4, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %114 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %115 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %116 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @lpfc_set_rrq_active(%struct.lpfc_hba* %113, %struct.lpfc_nodelist* %114, i32 %117, i32 0, i32 0)
  br label %119

119:                                              ; preds = %112, %106
  br label %449

120:                                              ; preds = %85
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %128 = and i32 %126, %127
  switch i32 %128, label %216 [
    i32 146, label %129
    i32 149, label %167
    i32 145, label %183
    i32 148, label %190
    i32 147, label %191
    i32 144, label %200
  ]

129:                                              ; preds = %120
  %130 = load i64, i64* %19, align 8
  %131 = icmp eq i64 %130, 154
  br i1 %131, label %132, label %157

132:                                              ; preds = %129
  %133 = load i32, i32* @PCI_DEVICE_ID_HORNET, align 4
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 7
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %133, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %132
  %141 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 6
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 4
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 0, i32* %151, align 4
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %140, %132
  br label %157

157:                                              ; preds = %156, %129
  %158 = load i64, i64* %19, align 8
  %159 = icmp eq i64 %158, 151
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %162 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 1000, i32* %17, align 4
  br label %166

166:                                              ; preds = %165, %160, %157
  store i32 1, i32* %15, align 4
  br label %216

167:                                              ; preds = %120
  %168 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %169 = load i32, i32* @KERN_ERR, align 4
  %170 = load i32, i32* @LOG_ELS, align 4
  %171 = load i64, i64* %19, align 8
  %172 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %173 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %171, i32 %174, i32 %175)
  store i32 1, i32* %15, align 4
  store i32 8, i32* %16, align 4
  %177 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %178 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 2
  br i1 %180, label %181, label %182

181:                                              ; preds = %167
  store i32 1000, i32* %17, align 4
  br label %182

182:                                              ; preds = %181, %167
  br label %216

183:                                              ; preds = %120
  store i32 1, i32* %18, align 4
  store i32 1, i32* %15, align 4
  %184 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %185 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %186, 100
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  store i32 100, i32* %17, align 4
  br label %189

189:                                              ; preds = %188, %183
  store i32 250, i32* %16, align 4
  br label %216

190:                                              ; preds = %120
  store i32 100, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %216

191:                                              ; preds = %120
  %192 = load i64, i64* %19, align 8
  %193 = icmp eq i64 %192, 151
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i64, i64* %20, align 8
  %196 = load i64, i64* @NameServer_DID, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 0, i32* %16, align 4
  store i32 100, i32* %17, align 4
  br label %199

199:                                              ; preds = %198, %194, %191
  store i32 1, i32* %15, align 4
  br label %216

200:                                              ; preds = %120
  %201 = load i64, i64* %19, align 8
  %202 = icmp eq i64 %201, 151
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load i64, i64* %20, align 8
  %205 = load i64, i64* @NameServer_DID, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %209 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %16, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  store i32 1, i32* %21, align 4
  br label %216

215:                                              ; preds = %207, %203, %200
  store i32 1, i32* %15, align 4
  store i32 100, i32* %17, align 4
  br label %216

216:                                              ; preds = %120, %215, %214, %199, %190, %189, %182, %166
  br label %449

217:                                              ; preds = %85, %85
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @RJT_UNAVAIL_TEMP, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  store i32 1, i32* %15, align 4
  br label %449

228:                                              ; preds = %217
  br label %449

229:                                              ; preds = %85, %85
  store i32 1, i32* %18, align 4
  store i32 1, i32* %15, align 4
  br label %449

230:                                              ; preds = %85
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 4
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @be32_to_cpu(i32 %236)
  %238 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  switch i32 %243, label %446 [
    i32 129, label %244
    i32 132, label %313
    i32 131, label %335
    i32 130, label %373
    i32 128, label %410
    i32 133, label %421
  ]

244:                                              ; preds = %230
  %245 = load i64, i64* %19, align 8
  %246 = icmp eq i64 %245, 150
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = load i64, i64* %19, align 8
  %249 = icmp eq i64 %248, 152
  br i1 %249, label %250, label %253

250:                                              ; preds = %247, %244
  store i32 1000, i32* %17, align 4
  %251 = load i32, i32* @lpfc_max_els_tries, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %446

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @LSEXP_CMD_IN_PROGRESS, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load i64, i64* %19, align 8
  %262 = icmp eq i64 %261, 151
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store i32 1000, i32* %17, align 4
  store i32 48, i32* %16, align 4
  br label %264

264:                                              ; preds = %263, %260
  store i32 1, i32* %15, align 4
  br label %446

265:                                              ; preds = %253
  %266 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = load i64, i64* %19, align 8
  %274 = icmp eq i64 %273, 151
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  store i32 1000, i32* %17, align 4
  store i32 48, i32* %16, align 4
  br label %276

276:                                              ; preds = %275, %272
  store i32 1, i32* %15, align 4
  br label %446

277:                                              ; preds = %265
  %278 = load i64, i64* %19, align 8
  %279 = icmp eq i64 %278, 151
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  store i32 1000, i32* %17, align 4
  %281 = load i32, i32* @lpfc_max_els_tries, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %446

283:                                              ; preds = %277
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %285 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %312

290:                                              ; preds = %283
  %291 = load i64, i64* %19, align 8
  %292 = icmp eq i64 %291, 155
  br i1 %292, label %293, label %312

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @LSEXP_OUT_OF_RESOURCE, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %312

300:                                              ; preds = %293
  %301 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %302 = load i32, i32* @KERN_ERR, align 4
  %303 = load i32, i32* @LOG_ELS, align 4
  %304 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %301, i32 %302, i32 %303, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %307)
  %309 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %310 = load i32, i32* @FC_VPORT_NO_FABRIC_RSCS, align 4
  %311 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %309, i32 %310)
  br label %312

312:                                              ; preds = %300, %293, %290, %283
  br label %446

313:                                              ; preds = %230
  %314 = load i64, i64* %19, align 8
  %315 = icmp eq i64 %314, 151
  br i1 %315, label %322, label %316

316:                                              ; preds = %313
  %317 = load i64, i64* %19, align 8
  %318 = icmp eq i64 %317, 150
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = load i64, i64* %19, align 8
  %321 = icmp eq i64 %320, 152
  br i1 %321, label %322, label %323

322:                                              ; preds = %319, %316, %313
  store i32 1000, i32* %17, align 4
  store i32 48, i32* %16, align 4
  br label %334

323:                                              ; preds = %319
  %324 = load i64, i64* %19, align 8
  %325 = icmp eq i64 %324, 155
  br i1 %325, label %326, label %333

326:                                              ; preds = %323
  store i32 48, i32* %16, align 4
  %327 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %328 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp sge i32 %329, 32
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  store i32 1000, i32* %17, align 4
  br label %332

332:                                              ; preds = %331, %326
  br label %333

333:                                              ; preds = %332, %323
  br label %334

334:                                              ; preds = %333, %322
  store i32 1, i32* %15, align 4
  br label %446

335:                                              ; preds = %230
  %336 = load i64, i64* %19, align 8
  %337 = icmp eq i64 %336, 155
  br i1 %337, label %338, label %346

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @LSEXP_PORT_LOGIN_REQ, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %338
  store i32 3, i32* %16, align 4
  store i32 1000, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %372

346:                                              ; preds = %338, %335
  %347 = load i64, i64* %19, align 8
  %348 = icmp eq i64 %347, 154
  br i1 %348, label %349, label %371

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @LSEXP_NOTHING_MORE, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %371

356:                                              ; preds = %349
  %357 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %358 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 15
  store i32 %362, i32* %360, align 4
  store i32 1, i32* %15, align 4
  %363 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %364 = load i32, i32* @KERN_ERR, align 4
  %365 = load i32, i32* @LOG_ELS, align 4
  %366 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %363, i32 %364, i32 %365, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %369)
  br label %371

371:                                              ; preds = %356, %349, %346
  br label %372

372:                                              ; preds = %371, %345
  br label %446

373:                                              ; preds = %230
  %374 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %375 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %409

380:                                              ; preds = %373
  %381 = load i64, i64* %19, align 8
  %382 = icmp eq i64 %381, 155
  br i1 %382, label %383, label %409

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @LSEXP_INVALID_PNAME, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %397, label %390

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @LSEXP_INVALID_NPORT_ID, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %409

397:                                              ; preds = %390, %383
  %398 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %399 = load i32, i32* @KERN_ERR, align 4
  %400 = load i32, i32* @LOG_ELS, align 4
  %401 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %398, i32 %399, i32 %400, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %404)
  %406 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %407 = load i32, i32* @FC_VPORT_FABRIC_REJ_WWN, align 4
  %408 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %406, i32 %407)
  br label %409

409:                                              ; preds = %397, %390, %380, %373
  br label %446

410:                                              ; preds = %230
  %411 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp eq i32 %414, 69
  br i1 %415, label %416, label %420

416:                                              ; preds = %410
  %417 = load i64, i64* %19, align 8
  %418 = icmp eq i64 %417, 154
  br i1 %418, label %419, label %420

419:                                              ; preds = %416
  br label %539

420:                                              ; preds = %416, %410
  br label %446

421:                                              ; preds = %230
  %422 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @LSEXP_REQ_UNSUPPORTED, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %445

428:                                              ; preds = %421
  %429 = load i64, i64* %19, align 8
  %430 = icmp eq i64 %429, 150
  br i1 %430, label %431, label %445

431:                                              ; preds = %428
  %432 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %433 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @spin_lock_irq(i32 %434)
  %436 = load i32, i32* @NLP_FCP_PRLI_RJT, align 4
  %437 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %438 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %437, i32 0, i32 5
  %439 = load i32, i32* %438, align 8
  %440 = or i32 %439, %436
  store i32 %440, i32* %438, align 8
  %441 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %442 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @spin_unlock_irq(i32 %443)
  store i32 0, i32* %15, align 4
  br label %539

445:                                              ; preds = %428, %421
  br label %446

446:                                              ; preds = %230, %445, %420, %409, %372, %334, %312, %280, %276, %264, %250
  br label %449

447:                                              ; preds = %85, %85
  br label %449

448:                                              ; preds = %85
  br label %449

449:                                              ; preds = %448, %447, %446, %229, %228, %227, %216, %119, %105
  %450 = load i32, i32* %21, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %449
  %453 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %454 = call i32 @lpfc_link_reset(%struct.lpfc_vport* %453)
  store i32 %454, i32* %22, align 4
  %455 = load i32, i32* %22, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %458

457:                                              ; preds = %452
  store i32 1, i32* %15, align 4
  store i32 100, i32* %17, align 4
  br label %539

458:                                              ; preds = %452
  store i32 1, i32* %4, align 4
  br label %813

459:                                              ; preds = %449
  %460 = load i64, i64* %20, align 8
  %461 = load i64, i64* @FDMI_DID, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %463, label %464

463:                                              ; preds = %459
  store i32 1, i32* %15, align 4
  br label %464

464:                                              ; preds = %463, %459
  %465 = load i64, i64* %19, align 8
  %466 = icmp eq i64 %465, 154
  br i1 %466, label %467, label %499

467:                                              ; preds = %464
  %468 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %469 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %472 = icmp ne i64 %470, %471
  br i1 %472, label %473, label %499

473:                                              ; preds = %467
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %475 = call i32 @lpfc_error_lost_link(%struct.TYPE_14__* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %499, label %477

477:                                              ; preds = %473
  store i32 1, i32* %15, align 4
  %478 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %479 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @LS_LOOPBACK_MODE, align 8
  %482 = icmp ne i64 %480, %481
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  store i32 0, i32* %16, align 4
  br label %485

484:                                              ; preds = %477
  store i32 2, i32* %16, align 4
  br label %485

485:                                              ; preds = %484, %483
  %486 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %487 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = icmp sge i32 %488, 100
  br i1 %489, label %490, label %491

490:                                              ; preds = %485
  store i32 5000, i32* %17, align 4
  br label %498

491:                                              ; preds = %485
  %492 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %493 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = icmp sge i32 %494, 32
  br i1 %495, label %496, label %497

496:                                              ; preds = %491
  store i32 1000, i32* %17, align 4
  br label %497

497:                                              ; preds = %496, %491
  br label %498

498:                                              ; preds = %497, %490
  br label %511

499:                                              ; preds = %473, %467, %464
  %500 = load i64, i64* %19, align 8
  %501 = icmp eq i64 %500, 155
  br i1 %501, label %502, label %510

502:                                              ; preds = %499
  %503 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %504 = call i32 @lpfc_error_lost_link(%struct.TYPE_14__* %503)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %510, label %506

506:                                              ; preds = %502
  store i32 1, i32* %15, align 4
  %507 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %508 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  store i32 %509, i32* %16, align 4
  store i32 1000, i32* %17, align 4
  br label %510

510:                                              ; preds = %506, %502, %499
  br label %511

511:                                              ; preds = %510, %498
  %512 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %513 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %513, align 8
  %516 = load i32, i32* %16, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %530

518:                                              ; preds = %511
  %519 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %520 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* %16, align 4
  %523 = icmp sge i32 %521, %522
  br i1 %523, label %524, label %530

524:                                              ; preds = %518
  %525 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %526 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %525, i32 0, i32 3
  %527 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %527, align 8
  store i32 0, i32* %15, align 4
  br label %530

530:                                              ; preds = %524, %518, %511
  %531 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %532 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @FC_UNLOADING, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %530
  store i32 0, i32* %15, align 4
  br label %538

538:                                              ; preds = %537, %530
  br label %539

539:                                              ; preds = %538, %457, %431, %419
  %540 = load i32, i32* %15, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %774

542:                                              ; preds = %539
  %543 = load i64, i64* %19, align 8
  %544 = icmp eq i64 %543, 151
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = load i64, i64* %19, align 8
  %547 = icmp eq i64 %546, 155
  br i1 %547, label %548, label %568

548:                                              ; preds = %545, %542
  %549 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %550 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %549, i32 0, i32 4
  %551 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* @FCF_DISCOVERY, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %567

556:                                              ; preds = %548
  %557 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %558 = load i32, i32* @KERN_INFO, align 4
  %559 = load i32, i32* @LOG_ELS, align 4
  %560 = load i64, i64* %19, align 8
  %561 = load i64, i64* %20, align 8
  %562 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %563 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = load i32, i32* %17, align 4
  %566 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %557, i32 %558, i32 %559, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i64 %560, i64 %561, i32 %564, i32 %565)
  store i32 0, i32* %4, align 4
  br label %813

567:                                              ; preds = %548
  br label %568

568:                                              ; preds = %567, %545
  %569 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %570 = load i32, i32* @KERN_INFO, align 4
  %571 = load i32, i32* @LOG_ELS, align 4
  %572 = load i64, i64* %19, align 8
  %573 = load i64, i64* %20, align 8
  %574 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %575 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* %17, align 4
  %578 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %569, i32 %570, i32 %571, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %572, i64 %573, i32 %576, i32 %577)
  %579 = load i64, i64* %19, align 8
  %580 = icmp eq i64 %579, 151
  br i1 %580, label %584, label %581

581:                                              ; preds = %568
  %582 = load i64, i64* %19, align 8
  %583 = icmp eq i64 %582, 156
  br i1 %583, label %584, label %615

584:                                              ; preds = %581, %568
  %585 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %586 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = icmp ne i32 %587, 138
  br i1 %588, label %599, label %589

589:                                              ; preds = %584
  %590 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %591 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %591, i32 0, i32 0
  %593 = load i32*, i32** %592, align 8
  %594 = getelementptr inbounds i32, i32* %593, i64 4
  %595 = load i32, i32* %594, align 4
  %596 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %597 = and i32 %595, %596
  %598 = icmp ne i32 %597, 145
  br i1 %598, label %599, label %615

599:                                              ; preds = %589, %584
  %600 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %601 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %600, i32 0, i32 3
  %602 = call i64 @timer_pending(i32* %601)
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %611, label %604

604:                                              ; preds = %599
  %605 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %606 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* @FC_RSCN_MODE, align 4
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %614

611:                                              ; preds = %604, %599
  %612 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %613 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %612)
  br label %614

614:                                              ; preds = %611, %604
  br label %615

615:                                              ; preds = %614, %589, %581
  %616 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %617 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %616, i32 0, i32 3
  %618 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %618, align 4
  %621 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %622 = icmp ne %struct.lpfc_nodelist* %621, null
  br i1 %622, label %623, label %685

623:                                              ; preds = %615
  %624 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %625 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %624)
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %685

627:                                              ; preds = %623
  %628 = load i32, i32* %17, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %685

630:                                              ; preds = %627
  %631 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %632 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %631, i32 0, i32 3
  %633 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %633, align 8
  %636 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %637 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %640 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %639, i32 0, i32 1
  store i32 %638, i32* %640, align 8
  %641 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %642 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %641, i32 0, i32 6
  %643 = load i64, i64* @jiffies, align 8
  %644 = load i32, i32* %17, align 4
  %645 = call i64 @msecs_to_jiffies(i32 %644)
  %646 = add nsw i64 %643, %645
  %647 = call i32 @mod_timer(i32* %642, i64 %646)
  %648 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %649 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %648, i32 0, i32 0
  %650 = load i32, i32* %649, align 4
  %651 = call i32 @spin_lock_irq(i32 %650)
  %652 = load i32, i32* @NLP_DELAY_TMO, align 4
  %653 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %654 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %653, i32 0, i32 5
  %655 = load i32, i32* %654, align 8
  %656 = or i32 %655, %652
  store i32 %656, i32* %654, align 8
  %657 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %658 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = call i32 @spin_unlock_irq(i32 %659)
  %661 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %662 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %661, i32 0, i32 2
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %665 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %664, i32 0, i32 3
  store i32 %663, i32* %665, align 8
  %666 = load i64, i64* %19, align 8
  %667 = icmp eq i64 %666, 150
  br i1 %667, label %671, label %668

668:                                              ; preds = %630
  %669 = load i64, i64* %19, align 8
  %670 = icmp eq i64 %669, 152
  br i1 %670, label %671, label %676

671:                                              ; preds = %668, %630
  %672 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %673 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %674 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %675 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %672, %struct.lpfc_nodelist* %673, i32 %674)
  br label %681

676:                                              ; preds = %668
  %677 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %678 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %679 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %680 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %677, %struct.lpfc_nodelist* %678, i32 %679)
  br label %681

681:                                              ; preds = %676, %671
  %682 = load i64, i64* %19, align 8
  %683 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %684 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %683, i32 0, i32 4
  store i64 %682, i64* %684, align 8
  store i32 1, i32* %4, align 4
  br label %813

685:                                              ; preds = %627, %623, %615
  %686 = load i64, i64* %19, align 8
  switch i64 %686, label %773 [
    i64 154, label %687
    i64 155, label %694
    i64 151, label %701
    i64 156, label %725
    i64 150, label %741
    i64 152, label %741
    i64 153, label %757
  ]

687:                                              ; preds = %685
  %688 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %689 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %690 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %691 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = call i32 @lpfc_issue_els_flogi(%struct.lpfc_vport* %688, %struct.lpfc_nodelist* %689, i32 %692)
  store i32 1, i32* %4, align 4
  br label %813

694:                                              ; preds = %685
  %695 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %696 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %697 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %698 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = call i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport* %695, %struct.lpfc_nodelist* %696, i32 %699)
  store i32 1, i32* %4, align 4
  br label %813

701:                                              ; preds = %685
  %702 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %703 = icmp ne %struct.lpfc_nodelist* %702, null
  br i1 %703, label %704, label %718

704:                                              ; preds = %701
  %705 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %706 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %705)
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %718

708:                                              ; preds = %704
  %709 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %710 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %709, i32 0, i32 2
  %711 = load i32, i32* %710, align 4
  %712 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %713 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %712, i32 0, i32 3
  store i32 %711, i32* %713, align 8
  %714 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %715 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %716 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %717 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %714, %struct.lpfc_nodelist* %715, i32 %716)
  br label %718

718:                                              ; preds = %708, %704, %701
  %719 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %720 = load i64, i64* %20, align 8
  %721 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %722 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %719, i64 %720, i32 %723)
  store i32 1, i32* %4, align 4
  br label %813

725:                                              ; preds = %685
  %726 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %727 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %726, i32 0, i32 2
  %728 = load i32, i32* %727, align 4
  %729 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %730 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %729, i32 0, i32 3
  store i32 %728, i32* %730, align 8
  %731 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %732 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %733 = load i32, i32* @NLP_STE_ADISC_ISSUE, align 4
  %734 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %731, %struct.lpfc_nodelist* %732, i32 %733)
  %735 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %736 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %737 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %738 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 8
  %740 = call i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %735, %struct.lpfc_nodelist* %736, i32 %739)
  store i32 1, i32* %4, align 4
  br label %813

741:                                              ; preds = %685, %685
  %742 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %743 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %742, i32 0, i32 2
  %744 = load i32, i32* %743, align 4
  %745 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %746 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %745, i32 0, i32 3
  store i32 %744, i32* %746, align 8
  %747 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %748 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %749 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %750 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %747, %struct.lpfc_nodelist* %748, i32 %749)
  %751 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %752 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %753 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %754 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 8
  %756 = call i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %751, %struct.lpfc_nodelist* %752, i32 %755)
  store i32 1, i32* %4, align 4
  br label %813

757:                                              ; preds = %685
  %758 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %759 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %758, i32 0, i32 2
  %760 = load i32, i32* %759, align 4
  %761 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %762 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %761, i32 0, i32 3
  store i32 %760, i32* %762, align 8
  %763 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %764 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %765 = load i32, i32* @NLP_STE_LOGO_ISSUE, align 4
  %766 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %763, %struct.lpfc_nodelist* %764, i32 %765)
  %767 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %768 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %769 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %770 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %769, i32 0, i32 0
  %771 = load i32, i32* %770, align 8
  %772 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %767, %struct.lpfc_nodelist* %768, i32 %771)
  store i32 1, i32* %4, align 4
  br label %813

773:                                              ; preds = %685
  br label %774

774:                                              ; preds = %773, %539
  %775 = load i32, i32* %18, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %793

777:                                              ; preds = %774
  %778 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %779 = load i32, i32* @KERN_ERR, align 4
  %780 = load i32, i32* @LOG_ELS, align 4
  %781 = load i64, i64* %19, align 8
  %782 = load i64, i64* %20, align 8
  %783 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %784 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %787 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %786, i32 0, i32 1
  %788 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %787, i32 0, i32 0
  %789 = load i32*, i32** %788, align 8
  %790 = getelementptr inbounds i32, i32* %789, i64 4
  %791 = load i32, i32* %790, align 4
  %792 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %778, i32 %779, i32 %780, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i64 %781, i64 %782, i32 %785, i32 %791)
  br label %812

793:                                              ; preds = %774
  %794 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %795 = load i32, i32* @KERN_INFO, align 4
  %796 = load i32, i32* @LOG_ELS, align 4
  %797 = load i64, i64* %19, align 8
  %798 = load i64, i64* %20, align 8
  %799 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %800 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 8
  %802 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %803 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 8
  %805 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %806 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %806, i32 0, i32 0
  %808 = load i32*, i32** %807, align 8
  %809 = getelementptr inbounds i32, i32* %808, i64 4
  %810 = load i32, i32* %809, align 4
  %811 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %794, i32 %795, i32 %796, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i64 %797, i64 %798, i32 %801, i32 %804, i32 %810)
  br label %812

812:                                              ; preds = %793, %777
  store i32 0, i32* %4, align 4
  br label %813

813:                                              ; preds = %812, %757, %741, %725, %718, %694, %687, %681, %556, %458, %83
  %814 = load i32, i32* %4, align 4
  ret i32 %814
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i64) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i64) #1

declare dso_local i32 @lpfc_set_rrq_active(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_link_reset(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_error_lost_link(%struct.TYPE_14__*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_flogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i64, i32) #1

declare dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
