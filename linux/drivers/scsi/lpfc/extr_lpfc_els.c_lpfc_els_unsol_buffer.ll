; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_unsol_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_unsol_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_21__, i32, i32, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_vport = type { i32, i32, i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { %struct.lpfc_nodelist*, %struct.TYPE_23__, %struct.lpfc_vport*, i64 }
%struct.lpfc_nodelist = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_27__ }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8*, i8* }
%struct.TYPE_22__ = type { %struct.lpfc_vport*, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.lpfc_dmabuf = type { i32* }

@LPFC_SLI3_HBQ_ENABLED = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_UNSOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RCV Unsol ELS:  status:x%x/x%x did:x%x\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@FC_DISC_DELAYED = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@Fabric_DID_MASK = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i64 0, align 8
@NLP_IN_DEV_LOSS = common dso_local global i32 0, align 4
@ELS_CMD_MASK = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"0112 ELS command x%x received from NPORT x%x Data: x%x x%x x%x x%x\0A\00", align 1
@LPFC_FABRIC_CFG_LINK = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@LSRJT_LOGICAL_BSY = common dso_local global i8* null, align 8
@LSEXP_NOTHING_MORE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"RCV PLOGI:       did:x%x/ste:x%x flg:x%x\00", align 1
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"3312 Remote port assigned DID x%x %x\0A\00", align 1
@LSRJT_UNABLE_TPC = common dso_local global i8* null, align 8
@LPFC_DISC_AUTH = common dso_local global i32 0, align 4
@FC_PT2PT_PLOGI = common dso_local global i32 0, align 4
@NLP_TARGET_REMOVE = common dso_local global i32 0, align 4
@NLP_EVT_RCV_PLOGI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"RCV FLOGI:       did:x%x/ste:x%x flg:x%x\00", align 1
@LPFC_LOCAL_CFG_LINK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"RCV LOGO:        did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_LOGO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"RCV PRLO:        did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_PRLO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"RCV ADISC:       did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_ADISC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"RCV PDISC:       did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_PDISC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"RCV FARPR:       did:x%x/ste:x%x flg:x%x\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"RCV FARP:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"RCV FAN:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"RCV PRLI:        did:x%x/ste:x%x flg:x%x\00", align 1
@FC_FABRIC = common dso_local global i32 0, align 4
@NLP_EVT_RCV_PRLI = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"RCV LIRR:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"RCV RLS:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"RCV RPS:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"RCV RPL:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"RCV RNID:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"RCV RTV:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"RCV RRQ:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"RCV ECHO:        did:x%x/ste:x%x flg:x%x\00", align 1
@LSEXP_INVALID_OX_RX = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [41 x i8] c"RCV ELS cmd:     cmd:x%x did:x%x/ste:x%x\00", align 1
@LSRJT_CMD_UNSUPPORTED = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"0115 Unknown ELS command x%x received from NPORT x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [50 x i8] c"0111 Dropping received ELS cmd Data: x%x x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_vport*, %struct.lpfc_iocbq*)* @lpfc_els_unsol_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_els_unsol_buffer(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_vport* %2, %struct.lpfc_iocbq* %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.ls_rjt, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_vport* %2, %struct.lpfc_vport** %7, align 8
  store %struct.lpfc_iocbq* %3, %struct.lpfc_iocbq** %8, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 1
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %19, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %24 = icmp ne %struct.lpfc_vport* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %4
  br label %1019

31:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lpfc_dmabuf*
  %36 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %48 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %49 = call i32 @lpfc_post_buffer(%struct.lpfc_hba* %47, %struct.lpfc_sli_ring* %48, i32 1)
  br label %50

50:                                               ; preds = %46, %31
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %50
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %62 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %61, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %71, i32 %72)
  br label %1019

74:                                               ; preds = %50
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %76 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %1019

79:                                               ; preds = %74
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FC_UNLOADING, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %1019

87:                                               ; preds = %79
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FC_DISC_DELAYED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 139
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %1019

98:                                               ; preds = %94, %87
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %99, i32 %100)
  store %struct.lpfc_nodelist* %101, %struct.lpfc_nodelist** %10, align 8
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %103 = icmp ne %struct.lpfc_nodelist* %102, null
  br i1 %103, label %128, label %104

104:                                              ; preds = %98
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %105, i32 %106)
  store %struct.lpfc_nodelist* %107, %struct.lpfc_nodelist** %10, align 8
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %109 = icmp ne %struct.lpfc_nodelist* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %1019

111:                                              ; preds = %104
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %114 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %115 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %112, %struct.lpfc_nodelist* %113, i32 %114)
  store i32 1, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @Fabric_DID_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @Fabric_DID_MASK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load i32, i32* @NLP_FABRIC, align 4
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %124 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %111
  br label %177

128:                                              ; preds = %98
  %129 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %130 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %157, label %132

132:                                              ; preds = %128
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %134 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %135 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %136 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %133, %struct.lpfc_nodelist* %134, i64 %135)
  store %struct.lpfc_nodelist* %136, %struct.lpfc_nodelist** %10, align 8
  %137 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %138 = icmp ne %struct.lpfc_nodelist* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %1019

140:                                              ; preds = %132
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %142 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %143 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %144 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %141, %struct.lpfc_nodelist* %142, i32 %143)
  store i32 1, i32* %15, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @Fabric_DID_MASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @Fabric_DID_MASK, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %140
  %151 = load i32, i32* @NLP_FABRIC, align 4
  %152 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %153 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %140
  br label %176

157:                                              ; preds = %128
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %159 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %157
  %164 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %165 = call i8* @lpfc_nlp_get(%struct.lpfc_nodelist* %164)
  %166 = bitcast i8* %165 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %166, %struct.lpfc_nodelist** %10, align 8
  %167 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %168 = icmp ne %struct.lpfc_nodelist* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  br label %1019

170:                                              ; preds = %163
  %171 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %172 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %173 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %174 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %171, %struct.lpfc_nodelist* %172, i32 %173)
  store i32 1, i32* %15, align 4
  br label %175

175:                                              ; preds = %170, %157
  br label %176

176:                                              ; preds = %175, %156
  br label %177

177:                                              ; preds = %176, %127
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 22
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %184 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %183)
  store %struct.Scsi_Host* %184, %struct.Scsi_Host** %9, align 8
  %185 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %186 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @spin_lock_irq(i32 %187)
  %189 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %190 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @NLP_IN_DEV_LOSS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %177
  %196 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %197 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @spin_unlock_irq(i32 %198)
  br label %1019

200:                                              ; preds = %177
  %201 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %202 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @spin_unlock_irq(i32 %203)
  %205 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %206 = call i8* @lpfc_nlp_get(%struct.lpfc_nodelist* %205)
  %207 = bitcast i8* %206 to %struct.lpfc_nodelist*
  %208 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %209 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %208, i32 0, i32 0
  store %struct.lpfc_nodelist* %207, %struct.lpfc_nodelist** %209, align 8
  %210 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %211 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %212 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %211, i32 0, i32 2
  store %struct.lpfc_vport* %210, %struct.lpfc_vport** %212, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @ELS_CMD_MASK, align 4
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 129
  br i1 %216, label %217, label %221

217:                                              ; preds = %200
  %218 = load i32, i32* @ELS_CMD_MASK, align 4
  %219 = load i32, i32* %13, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %217, %200
  %222 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %223 = load i32, i32* @KERN_INFO, align 4
  %224 = load i32, i32* @LOG_ELS, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %228 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %231 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %234 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %237 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %222, i32 %223, i32 %224, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %225, i32 %226, i32 %229, i32 %232, i32 %235, i32 %238)
  %240 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %241 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @LPFC_FABRIC_CFG_LINK, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %261

245:                                              ; preds = %221
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 146
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load i32, i32* %13, align 4
  %250 = icmp eq i32 %249, 139
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %253 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @FC_PT2PT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %251, %248
  %259 = load i8*, i8** @LSRJT_LOGICAL_BSY, align 8
  store i8* %259, i8** %17, align 8
  %260 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %260, i8** %16, align 8
  br label %943

261:                                              ; preds = %251, %245, %221
  %262 = load i32, i32* %13, align 4
  switch i32 %262, label %919 [
    i32 139, label %263
    i32 146, label %383
    i32 142, label %432
    i32 137, label %466
    i32 144, label %500
    i32 136, label %510
    i32 129, label %520
    i32 151, label %536
    i32 140, label %570
    i32 147, label %600
    i32 148, label %620
    i32 149, label %640
    i32 138, label %660
    i32 141, label %660
    i32 143, label %697
    i32 134, label %723
    i32 131, label %749
    i32 132, label %775
    i32 133, label %801
    i32 128, label %827
    i32 130, label %853
    i32 150, label %879
    i32 135, label %905
    i32 145, label %908
  ]

263:                                              ; preds = %261
  %264 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %265 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %266 = load i32, i32* %14, align 4
  %267 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %268 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %271 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %264, i32 %265, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %266, i32 %269, i32 %272)
  %274 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %275 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 21
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %280 = load i32*, i32** %12, align 8
  %281 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %282 = call %struct.lpfc_nodelist* @lpfc_plogi_confirm_nport(%struct.lpfc_hba* %279, i32* %280, %struct.lpfc_nodelist* %281)
  store %struct.lpfc_nodelist* %282, %struct.lpfc_nodelist** %10, align 8
  %283 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %284 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @LPFC_SLI_REV4, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %321

288:                                              ; preds = %263
  %289 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %290 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %289, i32 0, i32 5
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @FC_PT2PT, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %321

297:                                              ; preds = %288
  %298 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %299 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %302 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %301, i32 0, i32 4
  store i32 %300, i32* %302, align 4
  %303 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %304 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %310 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %309, i32 0, i32 5
  store i32 %308, i32* %310, align 4
  %311 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %312 = load i32, i32* @KERN_INFO, align 4
  %313 = load i32, i32* @LOG_ELS, align 4
  %314 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %315 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %318 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %311, i32 %312, i32 %313, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %316, i32 %319)
  br label %321

321:                                              ; preds = %297, %288, %263
  %322 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %323 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %324 = load i32*, i32** %12, align 8
  %325 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %322, %struct.lpfc_nodelist* %323, i32* %324)
  %326 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %327 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @FC_DISC_DELAYED, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %321
  %333 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %333, i8** %17, align 8
  %334 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %334, i8** %16, align 8
  br label %942

335:                                              ; preds = %321
  %336 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %337 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %363

341:                                              ; preds = %335
  %342 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %343 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %342, i32 0, i32 5
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @FC_PT2PT, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %359

350:                                              ; preds = %341
  %351 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %352 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %351, i32 0, i32 5
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @FC_PT2PT_PLOGI, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %350, %341
  %360 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %360, i8** %17, align 8
  %361 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %361, i8** %16, align 8
  br label %942

362:                                              ; preds = %350
  br label %363

363:                                              ; preds = %362, %335
  %364 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %365 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @spin_lock_irq(i32 %366)
  %368 = load i32, i32* @NLP_TARGET_REMOVE, align 4
  %369 = xor i32 %368, -1
  %370 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %371 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = and i32 %372, %369
  store i32 %373, i32* %371, align 8
  %374 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %375 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @spin_unlock_irq(i32 %376)
  %378 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %379 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %380 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %381 = load i32, i32* @NLP_EVT_RCV_PLOGI, align 4
  %382 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %378, %struct.lpfc_nodelist* %379, %struct.lpfc_iocbq* %380, i32 %381)
  br label %942

383:                                              ; preds = %261
  %384 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %385 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %386 = load i32, i32* %14, align 4
  %387 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %388 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %391 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %384, i32 %385, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %386, i32 %389, i32 %392)
  %394 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %395 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 20
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  %399 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %400 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @LPFC_LOCAL_CFG_LINK, align 4
  %403 = icmp sge i32 %401, %402
  br i1 %403, label %404, label %421

404:                                              ; preds = %383
  %405 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %406 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @FC_PT2PT, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %421

411:                                              ; preds = %404
  %412 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %413 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = icmp sge i32 %414, 1
  br i1 %415, label %416, label %421

416:                                              ; preds = %411
  %417 = load i8*, i8** @LSRJT_LOGICAL_BSY, align 8
  store i8* %417, i8** %17, align 8
  %418 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %418, i8** %16, align 8
  %419 = load i8*, i8** %18, align 8
  %420 = getelementptr inbounds i8, i8* %419, i32 1
  store i8* %420, i8** %18, align 8
  br label %943

421:                                              ; preds = %411, %404, %383
  %422 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %423 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %424 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %425 = call i32 @lpfc_els_rcv_flogi(%struct.lpfc_vport* %422, %struct.lpfc_iocbq* %423, %struct.lpfc_nodelist* %424)
  %426 = load i32, i32* %15, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %421
  %429 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %430 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %429)
  br label %431

431:                                              ; preds = %428, %421
  br label %942

432:                                              ; preds = %261
  %433 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %434 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %435 = load i32, i32* %14, align 4
  %436 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %437 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %440 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %433, i32 %434, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %435, i32 %438, i32 %441)
  %443 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %444 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 19
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %445, align 4
  %448 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %449 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %450 = load i32*, i32** %12, align 8
  %451 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %448, %struct.lpfc_nodelist* %449, i32* %450)
  %452 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %453 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %457, label %460

457:                                              ; preds = %432
  %458 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %458, i8** %17, align 8
  %459 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %459, i8** %16, align 8
  br label %942

460:                                              ; preds = %432
  %461 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %462 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %463 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %464 = load i32, i32* @NLP_EVT_RCV_LOGO, align 4
  %465 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %461, %struct.lpfc_nodelist* %462, %struct.lpfc_iocbq* %463, i32 %464)
  br label %942

466:                                              ; preds = %261
  %467 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %468 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %469 = load i32, i32* %14, align 4
  %470 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %471 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %474 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %467, i32 %468, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %469, i32 %472, i32 %475)
  %477 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %478 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %478, i32 0, i32 18
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %479, align 4
  %482 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %483 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %484 = load i32*, i32** %12, align 8
  %485 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %482, %struct.lpfc_nodelist* %483, i32* %484)
  %486 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %487 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %490 = icmp slt i32 %488, %489
  br i1 %490, label %491, label %494

491:                                              ; preds = %466
  %492 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %492, i8** %17, align 8
  %493 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %493, i8** %16, align 8
  br label %942

494:                                              ; preds = %466
  %495 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %496 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %497 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %498 = load i32, i32* @NLP_EVT_RCV_PRLO, align 4
  %499 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %495, %struct.lpfc_nodelist* %496, %struct.lpfc_iocbq* %497, i32 %498)
  br label %942

500:                                              ; preds = %261
  %501 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %502 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %502, i32 0, i32 17
  %504 = load i32, i32* %503, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %503, align 4
  %506 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %507 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %508 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %509 = call i32 @lpfc_els_rcv_lcb(%struct.lpfc_vport* %506, %struct.lpfc_iocbq* %507, %struct.lpfc_nodelist* %508)
  br label %942

510:                                              ; preds = %261
  %511 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %512 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 16
  %514 = load i32, i32* %513, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %513, align 4
  %516 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %517 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %518 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %519 = call i32 @lpfc_els_rcv_rdp(%struct.lpfc_vport* %516, %struct.lpfc_iocbq* %517, %struct.lpfc_nodelist* %518)
  br label %942

520:                                              ; preds = %261
  %521 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %522 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %522, i32 0, i32 15
  %524 = load i32, i32* %523, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %523, align 4
  %526 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %527 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %528 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %529 = call i32 @lpfc_els_rcv_rscn(%struct.lpfc_vport* %526, %struct.lpfc_iocbq* %527, %struct.lpfc_nodelist* %528)
  %530 = load i32, i32* %15, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %520
  %533 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %534 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %533)
  br label %535

535:                                              ; preds = %532, %520
  br label %942

536:                                              ; preds = %261
  %537 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %538 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %539 = load i32, i32* %14, align 4
  %540 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %541 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 4
  %543 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %544 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 8
  %546 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %537, i32 %538, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %539, i32 %542, i32 %545)
  %547 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %548 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %549 = load i32*, i32** %12, align 8
  %550 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %547, %struct.lpfc_nodelist* %548, i32* %549)
  %551 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %552 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %552, i32 0, i32 14
  %554 = load i32, i32* %553, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %553, align 4
  %556 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %557 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %560 = icmp slt i32 %558, %559
  br i1 %560, label %561, label %564

561:                                              ; preds = %536
  %562 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %562, i8** %17, align 8
  %563 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %563, i8** %16, align 8
  br label %942

564:                                              ; preds = %536
  %565 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %566 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %567 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %568 = load i32, i32* @NLP_EVT_RCV_ADISC, align 4
  %569 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %565, %struct.lpfc_nodelist* %566, %struct.lpfc_iocbq* %567, i32 %568)
  br label %942

570:                                              ; preds = %261
  %571 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %572 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %573 = load i32, i32* %14, align 4
  %574 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %575 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %574, i32 0, i32 2
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %578 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %571, i32 %572, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %573, i32 %576, i32 %579)
  %581 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %582 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %582, i32 0, i32 13
  %584 = load i32, i32* %583, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %583, align 4
  %586 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %587 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %590 = icmp slt i32 %588, %589
  br i1 %590, label %591, label %594

591:                                              ; preds = %570
  %592 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %592, i8** %17, align 8
  %593 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %593, i8** %16, align 8
  br label %942

594:                                              ; preds = %570
  %595 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %596 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %597 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %598 = load i32, i32* @NLP_EVT_RCV_PDISC, align 4
  %599 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %595, %struct.lpfc_nodelist* %596, %struct.lpfc_iocbq* %597, i32 %598)
  br label %942

600:                                              ; preds = %261
  %601 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %602 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %603 = load i32, i32* %14, align 4
  %604 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %605 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %608 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %607, i32 0, i32 1
  %609 = load i32, i32* %608, align 8
  %610 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %601, i32 %602, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %603, i32 %606, i32 %609)
  %611 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %612 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %612, i32 0, i32 12
  %614 = load i32, i32* %613, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %613, align 4
  %616 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %617 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %618 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %619 = call i32 @lpfc_els_rcv_farpr(%struct.lpfc_vport* %616, %struct.lpfc_iocbq* %617, %struct.lpfc_nodelist* %618)
  br label %942

620:                                              ; preds = %261
  %621 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %622 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %623 = load i32, i32* %14, align 4
  %624 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %625 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %628 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 8
  %630 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %621, i32 %622, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %623, i32 %626, i32 %629)
  %631 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %632 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %632, i32 0, i32 11
  %634 = load i32, i32* %633, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %633, align 4
  %636 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %637 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %638 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %639 = call i32 @lpfc_els_rcv_farp(%struct.lpfc_vport* %636, %struct.lpfc_iocbq* %637, %struct.lpfc_nodelist* %638)
  br label %942

640:                                              ; preds = %261
  %641 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %642 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %643 = load i32, i32* %14, align 4
  %644 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %645 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %644, i32 0, i32 2
  %646 = load i32, i32* %645, align 4
  %647 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %648 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %647, i32 0, i32 1
  %649 = load i32, i32* %648, align 8
  %650 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %641, i32 %642, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %643, i32 %646, i32 %649)
  %651 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %652 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %652, i32 0, i32 10
  %654 = load i32, i32* %653, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %653, align 4
  %656 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %657 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %658 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %659 = call i32 @lpfc_els_rcv_fan(%struct.lpfc_vport* %656, %struct.lpfc_iocbq* %657, %struct.lpfc_nodelist* %658)
  br label %942

660:                                              ; preds = %261, %261
  %661 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %662 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %663 = load i32, i32* %14, align 4
  %664 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %665 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %664, i32 0, i32 2
  %666 = load i32, i32* %665, align 4
  %667 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %668 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 8
  %670 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %661, i32 %662, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %663, i32 %666, i32 %669)
  %671 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %672 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %671, i32 0, i32 1
  %673 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %672, i32 0, i32 9
  %674 = load i32, i32* %673, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %673, align 4
  %676 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %677 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %676, i32 0, i32 2
  %678 = load i32, i32* %677, align 4
  %679 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %680 = icmp slt i32 %678, %679
  br i1 %680, label %681, label %691

681:                                              ; preds = %660
  %682 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %683 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %682, i32 0, i32 1
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* @FC_FABRIC, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %691

688:                                              ; preds = %681
  %689 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %689, i8** %17, align 8
  %690 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %690, i8** %16, align 8
  br label %942

691:                                              ; preds = %681, %660
  %692 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %693 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %694 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %695 = load i32, i32* @NLP_EVT_RCV_PRLI, align 4
  %696 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %692, %struct.lpfc_nodelist* %693, %struct.lpfc_iocbq* %694, i32 %695)
  br label %942

697:                                              ; preds = %261
  %698 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %699 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %700 = load i32, i32* %14, align 4
  %701 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %702 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %701, i32 0, i32 2
  %703 = load i32, i32* %702, align 4
  %704 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %705 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %704, i32 0, i32 1
  %706 = load i32, i32* %705, align 8
  %707 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %698, i32 %699, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %700, i32 %703, i32 %706)
  %708 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %709 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %708, i32 0, i32 1
  %710 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %709, i32 0, i32 8
  %711 = load i32, i32* %710, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %710, align 4
  %713 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %714 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %715 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %716 = call i32 @lpfc_els_rcv_lirr(%struct.lpfc_vport* %713, %struct.lpfc_iocbq* %714, %struct.lpfc_nodelist* %715)
  %717 = load i32, i32* %15, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %722

719:                                              ; preds = %697
  %720 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %721 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %720)
  br label %722

722:                                              ; preds = %719, %697
  br label %942

723:                                              ; preds = %261
  %724 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %725 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %726 = load i32, i32* %14, align 4
  %727 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %728 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %727, i32 0, i32 2
  %729 = load i32, i32* %728, align 4
  %730 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %731 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %730, i32 0, i32 1
  %732 = load i32, i32* %731, align 8
  %733 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %724, i32 %725, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %726, i32 %729, i32 %732)
  %734 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %735 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %735, i32 0, i32 7
  %737 = load i32, i32* %736, align 4
  %738 = add nsw i32 %737, 1
  store i32 %738, i32* %736, align 4
  %739 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %740 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %741 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %742 = call i32 @lpfc_els_rcv_rls(%struct.lpfc_vport* %739, %struct.lpfc_iocbq* %740, %struct.lpfc_nodelist* %741)
  %743 = load i32, i32* %15, align 4
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %748

745:                                              ; preds = %723
  %746 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %747 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %746)
  br label %748

748:                                              ; preds = %745, %723
  br label %942

749:                                              ; preds = %261
  %750 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %751 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %752 = load i32, i32* %14, align 4
  %753 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %754 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %753, i32 0, i32 2
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %757 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %756, i32 0, i32 1
  %758 = load i32, i32* %757, align 8
  %759 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %750, i32 %751, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %752, i32 %755, i32 %758)
  %760 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %761 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %760, i32 0, i32 1
  %762 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %761, i32 0, i32 6
  %763 = load i32, i32* %762, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %762, align 4
  %765 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %766 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %767 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %768 = call i32 @lpfc_els_rcv_rps(%struct.lpfc_vport* %765, %struct.lpfc_iocbq* %766, %struct.lpfc_nodelist* %767)
  %769 = load i32, i32* %15, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %774

771:                                              ; preds = %749
  %772 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %773 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %772)
  br label %774

774:                                              ; preds = %771, %749
  br label %942

775:                                              ; preds = %261
  %776 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %777 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %778 = load i32, i32* %14, align 4
  %779 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %780 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %779, i32 0, i32 2
  %781 = load i32, i32* %780, align 4
  %782 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %783 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %782, i32 0, i32 1
  %784 = load i32, i32* %783, align 8
  %785 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %776, i32 %777, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %778, i32 %781, i32 %784)
  %786 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %787 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %786, i32 0, i32 1
  %788 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %787, i32 0, i32 5
  %789 = load i32, i32* %788, align 4
  %790 = add nsw i32 %789, 1
  store i32 %790, i32* %788, align 4
  %791 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %792 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %793 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %794 = call i32 @lpfc_els_rcv_rpl(%struct.lpfc_vport* %791, %struct.lpfc_iocbq* %792, %struct.lpfc_nodelist* %793)
  %795 = load i32, i32* %15, align 4
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %800

797:                                              ; preds = %775
  %798 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %799 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %798)
  br label %800

800:                                              ; preds = %797, %775
  br label %942

801:                                              ; preds = %261
  %802 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %803 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %804 = load i32, i32* %14, align 4
  %805 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %806 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %805, i32 0, i32 2
  %807 = load i32, i32* %806, align 4
  %808 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %809 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %808, i32 0, i32 1
  %810 = load i32, i32* %809, align 8
  %811 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %802, i32 %803, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %804, i32 %807, i32 %810)
  %812 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %813 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %812, i32 0, i32 1
  %814 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %813, i32 0, i32 4
  %815 = load i32, i32* %814, align 4
  %816 = add nsw i32 %815, 1
  store i32 %816, i32* %814, align 4
  %817 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %818 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %819 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %820 = call i32 @lpfc_els_rcv_rnid(%struct.lpfc_vport* %817, %struct.lpfc_iocbq* %818, %struct.lpfc_nodelist* %819)
  %821 = load i32, i32* %15, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %826

823:                                              ; preds = %801
  %824 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %825 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %824)
  br label %826

826:                                              ; preds = %823, %801
  br label %942

827:                                              ; preds = %261
  %828 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %829 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %830 = load i32, i32* %14, align 4
  %831 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %832 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %831, i32 0, i32 2
  %833 = load i32, i32* %832, align 4
  %834 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %835 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %834, i32 0, i32 1
  %836 = load i32, i32* %835, align 8
  %837 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %828, i32 %829, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 %830, i32 %833, i32 %836)
  %838 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %839 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %838, i32 0, i32 1
  %840 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %839, i32 0, i32 3
  %841 = load i32, i32* %840, align 4
  %842 = add nsw i32 %841, 1
  store i32 %842, i32* %840, align 4
  %843 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %844 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %845 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %846 = call i32 @lpfc_els_rcv_rtv(%struct.lpfc_vport* %843, %struct.lpfc_iocbq* %844, %struct.lpfc_nodelist* %845)
  %847 = load i32, i32* %15, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %852

849:                                              ; preds = %827
  %850 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %851 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %850)
  br label %852

852:                                              ; preds = %849, %827
  br label %942

853:                                              ; preds = %261
  %854 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %855 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %856 = load i32, i32* %14, align 4
  %857 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %858 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %857, i32 0, i32 2
  %859 = load i32, i32* %858, align 4
  %860 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %861 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %860, i32 0, i32 1
  %862 = load i32, i32* %861, align 8
  %863 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %854, i32 %855, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %856, i32 %859, i32 %862)
  %864 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %865 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %864, i32 0, i32 1
  %866 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %865, i32 0, i32 2
  %867 = load i32, i32* %866, align 4
  %868 = add nsw i32 %867, 1
  store i32 %868, i32* %866, align 4
  %869 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %870 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %871 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %872 = call i32 @lpfc_els_rcv_rrq(%struct.lpfc_vport* %869, %struct.lpfc_iocbq* %870, %struct.lpfc_nodelist* %871)
  %873 = load i32, i32* %15, align 4
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %878

875:                                              ; preds = %853
  %876 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %877 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %876)
  br label %878

878:                                              ; preds = %875, %853
  br label %942

879:                                              ; preds = %261
  %880 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %881 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %882 = load i32, i32* %14, align 4
  %883 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %884 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %883, i32 0, i32 2
  %885 = load i32, i32* %884, align 4
  %886 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %887 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %886, i32 0, i32 1
  %888 = load i32, i32* %887, align 8
  %889 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %880, i32 %881, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %882, i32 %885, i32 %888)
  %890 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %891 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %890, i32 0, i32 1
  %892 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %891, i32 0, i32 1
  %893 = load i32, i32* %892, align 4
  %894 = add nsw i32 %893, 1
  store i32 %894, i32* %892, align 4
  %895 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %896 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %897 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %898 = call i32 @lpfc_els_rcv_echo(%struct.lpfc_vport* %895, %struct.lpfc_iocbq* %896, %struct.lpfc_nodelist* %897)
  %899 = load i32, i32* %15, align 4
  %900 = icmp ne i32 %899, 0
  br i1 %900, label %901, label %904

901:                                              ; preds = %879
  %902 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %903 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %902)
  br label %904

904:                                              ; preds = %901, %879
  br label %942

905:                                              ; preds = %261
  %906 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %906, i8** %17, align 8
  %907 = load i8*, i8** @LSEXP_INVALID_OX_RX, align 8
  store i8* %907, i8** %16, align 8
  br label %942

908:                                              ; preds = %261
  %909 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %910 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %911 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %911, i32 0, i32 3
  %913 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %912, i32 0, i32 0
  %914 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %913, i32 0, i32 0
  %915 = load i32, i32* %914, align 8
  %916 = load i32*, i32** %12, align 8
  %917 = bitcast i32* %916 to i8*
  %918 = call i32 @fc_host_fpin_rcv(%struct.Scsi_Host* %909, i32 %915, i8* %917)
  br label %942

919:                                              ; preds = %261
  %920 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %921 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %922 = load i32, i32* %13, align 4
  %923 = load i32, i32* %14, align 4
  %924 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %925 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %924, i32 0, i32 2
  %926 = load i32, i32* %925, align 4
  %927 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %920, i32 %921, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %922, i32 %923, i32 %926)
  %928 = load i8*, i8** @LSRJT_CMD_UNSUPPORTED, align 8
  store i8* %928, i8** %17, align 8
  %929 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %929, i8** %16, align 8
  %930 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %931 = load i32, i32* @KERN_ERR, align 4
  %932 = load i32, i32* @LOG_ELS, align 4
  %933 = load i32, i32* %13, align 4
  %934 = load i32, i32* %14, align 4
  %935 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %930, i32 %931, i32 %932, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %933, i32 %934)
  %936 = load i32, i32* %15, align 4
  %937 = icmp ne i32 %936, 0
  br i1 %937, label %938, label %941

938:                                              ; preds = %919
  %939 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %940 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %939)
  br label %941

941:                                              ; preds = %938, %919
  br label %942

942:                                              ; preds = %941, %908, %905, %904, %878, %852, %826, %800, %774, %748, %722, %691, %688, %640, %620, %600, %594, %591, %564, %561, %535, %510, %500, %494, %491, %460, %457, %431, %363, %359, %332
  br label %943

943:                                              ; preds = %942, %416, %258
  %944 = load i8*, i8** %17, align 8
  %945 = icmp ne i8* %944, null
  br i1 %945, label %946, label %963

946:                                              ; preds = %943
  %947 = call i32 @memset(%struct.ls_rjt* %11, i32 0, i32 24)
  %948 = load i8*, i8** %17, align 8
  %949 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %950 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %949, i32 0, i32 1
  %951 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %950, i32 0, i32 1
  store i8* %948, i8** %951, align 8
  %952 = load i8*, i8** %16, align 8
  %953 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %954 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %954, i32 0, i32 0
  store i8* %952, i8** %955, align 8
  %956 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %957 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %958 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %957, i32 0, i32 0
  %959 = load i32, i32* %958, align 8
  %960 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %961 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %962 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %956, i32 %959, %struct.lpfc_iocbq* %960, %struct.lpfc_nodelist* %961, i32* null)
  br label %963

963:                                              ; preds = %946, %943
  %964 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %965 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %964, i32 0, i32 0
  %966 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %965, align 8
  %967 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %966)
  %968 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %969 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %968, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %969, align 8
  %970 = load i8*, i8** %18, align 8
  %971 = icmp ne i8* %970, null
  br i1 %971, label %972, label %1018

972:                                              ; preds = %963
  %973 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %974 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %973, i32 0, i32 2
  %975 = load i32, i32* %974, align 8
  %976 = load i32, i32* @GFP_KERNEL, align 4
  %977 = call %struct.TYPE_22__* @mempool_alloc(i32 %975, i32 %976)
  store %struct.TYPE_22__* %977, %struct.TYPE_22__** %20, align 8
  %978 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %979 = icmp ne %struct.TYPE_22__* %978, null
  br i1 %979, label %981, label %980

980:                                              ; preds = %972
  br label %1052

981:                                              ; preds = %972
  %982 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %983 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %982)
  %984 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %985 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %986 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %987 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %986, i32 0, i32 4
  %988 = load i32, i32* %987, align 8
  %989 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %990 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %989, i32 0, i32 3
  %991 = load i32, i32* %990, align 4
  %992 = call i32 @lpfc_init_link(%struct.lpfc_hba* %984, %struct.TYPE_22__* %985, i32 %988, i32 %991)
  %993 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %994 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %993, i32 0, i32 2
  %995 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %994, i32 0, i32 0
  %996 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %995, i32 0, i32 0
  %997 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %996, i32 0, i32 0
  %998 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %997, i32 0, i32 0
  store i64 0, i64* %998, align 8
  %999 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %1000 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %1001 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1000, i32 0, i32 1
  store i32 %999, i32* %1001, align 8
  %1002 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %1003 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %1004 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1003, i32 0, i32 0
  store %struct.lpfc_vport* %1002, %struct.lpfc_vport** %1004, align 8
  %1005 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %1006 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %1007 = load i32, i32* @MBX_NOWAIT, align 4
  %1008 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %1005, %struct.TYPE_22__* %1006, i32 %1007)
  %1009 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %1010 = icmp eq i64 %1008, %1009
  br i1 %1010, label %1011, label %1017

1011:                                             ; preds = %981
  %1012 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %1013 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %1014 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %1013, i32 0, i32 2
  %1015 = load i32, i32* %1014, align 8
  %1016 = call i32 @mempool_free(%struct.TYPE_22__* %1012, i32 %1015)
  br label %1017

1017:                                             ; preds = %1011, %981
  br label %1018

1018:                                             ; preds = %1017, %963
  br label %1052

1019:                                             ; preds = %195, %169, %139, %110, %97, %86, %78, %60, %30
  %1020 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %1021 = icmp ne %struct.lpfc_vport* %1020, null
  br i1 %1021, label %1022, label %1046

1022:                                             ; preds = %1019
  %1023 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %1024 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %1023, i32 0, i32 0
  %1025 = load i32, i32* %1024, align 4
  %1026 = load i32, i32* @FC_UNLOADING, align 4
  %1027 = and i32 %1025, %1026
  %1028 = icmp ne i32 %1027, 0
  br i1 %1028, label %1046, label %1029

1029:                                             ; preds = %1022
  %1030 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %1031 = load i32, i32* @KERN_ERR, align 4
  %1032 = load i32, i32* @LOG_ELS, align 4
  %1033 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %1034 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1033, i32 0, i32 0
  %1035 = load i32, i32* %1034, align 8
  %1036 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %1037 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1036, i32 0, i32 2
  %1038 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1037, i32 0, i32 0
  %1039 = load i32*, i32** %1038, align 8
  %1040 = getelementptr inbounds i32, i32* %1039, i64 4
  %1041 = load i32, i32* %1040, align 4
  %1042 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %1043 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1042, i32 0, i32 1
  %1044 = load i32, i32* %1043, align 4
  %1045 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %1030, i32 %1031, i32 %1032, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0), i32 %1035, i32 %1041, i32 %1044)
  br label %1046

1046:                                             ; preds = %1029, %1022, %1019
  %1047 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %1048 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %1047, i32 0, i32 1
  %1049 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1048, i32 0, i32 0
  %1050 = load i32, i32* %1049, align 4
  %1051 = add nsw i32 %1050, 1
  store i32 %1051, i32* %1049, align 4
  br label %1052

1052:                                             ; preds = %1046, %1018, %980
  ret void
}

declare dso_local i32 @lpfc_post_buffer(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i64) #1

declare dso_local i8* @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_plogi_confirm_nport(%struct.lpfc_hba*, i32*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_send_els_event(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_rcv_flogi(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_lcb(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rdp(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rscn(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_farpr(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_farp(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_fan(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_lirr(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rls(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rps(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rpl(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rnid(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rtv(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rrq(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_echo(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @fc_host_fpin_rcv(%struct.Scsi_Host*, i32, i8*) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local %struct.TYPE_22__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_init_link(%struct.lpfc_hba*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
