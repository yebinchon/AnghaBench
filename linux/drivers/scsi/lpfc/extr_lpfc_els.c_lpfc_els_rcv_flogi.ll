; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_flogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i8*, i8*, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_23__, i32, %struct.TYPE_17__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.lpfc_nodelist = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.serv_parm = type { i32 }
%struct.TYPE_24__ = type { %struct.lpfc_vport*, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"0113 An FLOGI ELS command x%x was received from DID x%x in Loop Mode\0A\00", align 1
@CLASS3 = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@FC_PT2PT_PLOGI = common dso_local global i32 0, align 4
@PT2PT_LocalID = common dso_local global i8* null, align 8
@PT2PT_RemoteID = common dso_local global i8* null, align 8
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"3311 Rcv Flogi PS x%x new PS x%x fc_flag x%x new fc_flag x%x\0A\00", align 1
@Fabric_DID = common dso_local global i8* null, align 8
@HBA_FLOGI_ISSUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"3344 Deferring FLOGI ACC: rx_id: x%x, ox_id: x%x, hba_flag x%x\0A\00", align 1
@ELS_CMD_FLOGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_flogi(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.serv_parm*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %20)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %8, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 5
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %23, align 8
  store %struct.lpfc_hba* %24, %struct.lpfc_hba** %9, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %28, %struct.lpfc_dmabuf** %10, align 8
  %29 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %30 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8**
  store i8** %32, i8*** %11, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %33, i32 0, i32 0
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %12, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %11, align 8
  %37 = load i8*, i8** %35, align 8
  store i8* %37, i8** %15, align 8
  %38 = load i8**, i8*** %11, align 8
  %39 = bitcast i8** %38 to %struct.serv_parm*
  store %struct.serv_parm* %39, %struct.serv_parm** %13, align 8
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %41 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %40)
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %3
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %16, align 8
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %54 = load i32, i32* @KERN_ERR, align 4
  %55 = load i32, i32* @LOG_ELS, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %57)
  store i32 1, i32* %4, align 4
  br label %263

59:                                               ; preds = %3
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %62 = load %struct.serv_parm*, %struct.serv_parm** %13, align 8
  %63 = load i32, i32* @CLASS3, align 4
  %64 = call i32 @lpfc_check_sparm(%struct.lpfc_vport* %60, %struct.lpfc_nodelist* %61, %struct.serv_parm* %62, i32 %63, i32 1)
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %65, i32 0, i32 4
  %67 = load %struct.serv_parm*, %struct.serv_parm** %13, align 8
  %68 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %67, i32 0, i32 0
  %69 = call i32 @memcmp(i32* %66, i32* %68, i32 4)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %130, label %72

72:                                               ; preds = %59
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LPFC_SLI_REV4, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %72
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.TYPE_24__* @mempool_alloc(i32 %81, i32 %82)
  store %struct.TYPE_24__* %83, %struct.TYPE_24__** %14, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %85 = icmp ne %struct.TYPE_24__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %263

87:                                               ; preds = %78
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %89 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %88)
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @lpfc_init_link(%struct.lpfc_hba* %90, %struct.TYPE_24__* %91, i32 %94, i32 %97)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  store %struct.lpfc_vport* %108, %struct.lpfc_vport** %110, align 8
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %113 = load i32, i32* @MBX_NOWAIT, align 4
  %114 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %111, %struct.TYPE_24__* %112, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %116 = call i32 @lpfc_set_loopback_flag(%struct.lpfc_hba* %115)
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %87
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mempool_free(%struct.TYPE_24__* %121, i32 %124)
  br label %126

126:                                              ; preds = %120, %87
  store i32 1, i32* %4, align 4
  br label %263

127:                                              ; preds = %72
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %129 = call i32 @lpfc_els_abort_flogi(%struct.lpfc_hba* %128)
  store i32 0, i32* %4, align 4
  br label %263

130:                                              ; preds = %59
  %131 = load i32, i32* %17, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %135 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @spin_lock_irq(i32 %136)
  %138 = load i32, i32* @FC_PT2PT_PLOGI, align 4
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %140 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %144 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @spin_unlock_irq(i32 %145)
  %147 = load i8*, i8** @PT2PT_LocalID, align 8
  %148 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %149 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %154

150:                                              ; preds = %130
  %151 = load i8*, i8** @PT2PT_RemoteID, align 8
  %152 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %153 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %150, %133
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %157 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @spin_lock_irq(i32 %158)
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %161 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  store i8* %164, i8** %18, align 8
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %166 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %19, align 8
  %168 = load i32, i32* @FC_PT2PT, align 4
  %169 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %170 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load i32, i32* @FC_FABRIC, align 4
  %174 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %175 = or i32 %173, %174
  %176 = xor i32 %175, -1
  %177 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %178 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %182 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %186 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @spin_unlock_irq(i32 %187)
  %189 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %190 = load i32, i32* @KERN_INFO, align 4
  %191 = load i32, i32* @LOG_ELS, align 4
  %192 = load i8*, i8** %19, align 8
  %193 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %194 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = load i8*, i8** %18, align 8
  %197 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %198 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %192, i8* %195, i8* %196, i32 %199)
  %201 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %202 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %16, align 8
  %204 = load i8*, i8** @Fabric_DID, align 8
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %206 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 6
  %209 = load %struct.serv_parm*, %struct.serv_parm** %13, align 8
  %210 = call i32 @memcpy(i32* %208, %struct.serv_parm* %209, i32 4)
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %212 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @HBA_FLOGI_ISSUED, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %254, label %217

217:                                              ; preds = %155
  %218 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %219 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %225 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = load i8*, i8** %16, align 8
  %233 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %234 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %236 = load i32, i32* @KERN_INFO, align 4
  %237 = load i32, i32* @LOG_ELS, align 4
  %238 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %239 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i8*
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %249 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %235, i32 %236, i32 %237, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %242, i8* %247, i32 %250)
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %253 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %252, i32 0, i32 3
  store i32 1, i32* %253, align 4
  store i32 0, i32* %4, align 4
  br label %263

254:                                              ; preds = %155
  %255 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %256 = load i32, i32* @ELS_CMD_FLOGI, align 4
  %257 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %258 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %259 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %255, i32 %256, %struct.lpfc_iocbq* %257, %struct.lpfc_nodelist* %258, i32* null)
  %260 = load i8*, i8** %16, align 8
  %261 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %262 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  store i32 0, i32* %4, align 4
  br label %263

263:                                              ; preds = %254, %217, %127, %126, %86, %47
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @lpfc_check_sparm(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.serv_parm*, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_init_link(%struct.lpfc_hba*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @lpfc_set_loopback_flag(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @lpfc_els_abort_flogi(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.serv_parm*, i32) #1

declare dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
