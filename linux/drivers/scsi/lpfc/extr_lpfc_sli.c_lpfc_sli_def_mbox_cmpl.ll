; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_def_mbox_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_def_mbox_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { {}*, %struct.TYPE_16__, i32*, i32*, %struct.lpfc_vport* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_vport = type { i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i64, i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_UNLOADING = common dso_local global i32 0, align 4
@MBX_REG_LOGIN64 = common dso_local global i64 0, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@MBX_REG_VPI = common dso_local global i64 0, align 8
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@MBX_UNREG_LOGIN = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"1438 UNREG cmpl deferred mbox x%x on NPort x%x Data: x%x x%x %px\0A\00", align 1
@NLP_UNREG_INP = common dso_local global i32 0, align 4
@NLP_EVT_NOTHING_PENDING = common dso_local global i64 0, align 8
@MBX_INIT_LINK = common dso_local global i64 0, align 8
@MBXERR_SEC_NO_PERMISSION = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"2860 SLI authentication is required for INIT_LINK but has not done yet\0A\00", align 1
@lpfc_mqe_command = common dso_local global i32 0, align 4
@MBX_SLI4_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_def_mbox_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %13, align 8
  store %struct.lpfc_vport* %14, %struct.lpfc_vport** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %18, %struct.lpfc_dmabuf** %6, align 8
  %19 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %20 = icmp ne %struct.lpfc_dmabuf* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %27 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %22, i32 %25, i32 %28)
  %30 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %31 = call i32 @kfree(%struct.lpfc_dmabuf* %30)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FC_UNLOADING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %92, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MBX_REG_LOGIN64, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %41
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %10, align 4
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %72, i32 %73, i32 %74, %struct.TYPE_17__* %75)
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 4
  store %struct.lpfc_vport* %77, %struct.lpfc_vport** %79, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = bitcast {}** %81 to void (%struct.lpfc_hba*, %struct.TYPE_17__*)**
  store void (%struct.lpfc_hba*, %struct.TYPE_17__*)* @lpfc_sli_def_mbox_cmpl, void (%struct.lpfc_hba*, %struct.TYPE_17__*)** %82, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = load i32, i32* @MBX_NOWAIT, align 4
  %86 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %83, %struct.TYPE_17__* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %56
  br label %268

91:                                               ; preds = %56
  br label %92

92:                                               ; preds = %91, %49, %41, %32
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MBX_REG_VPI, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %92
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @FC_UNLOADING, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %100
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %138, label %116

116:                                              ; preds = %109
  %117 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %118 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %117)
  store %struct.Scsi_Host* %118, %struct.Scsi_Host** %8, align 8
  %119 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %120 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @spin_lock_irq(i32 %121)
  %123 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %124 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %125 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %131 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %135 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @spin_unlock_irq(i32 %136)
  br label %138

138:                                              ; preds = %116, %109, %100, %92
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MBX_REG_LOGIN64, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %138
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = bitcast i32* %149 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %150, %struct.lpfc_nodelist** %7, align 8
  %151 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %152 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 3
  store i32* null, i32** %154, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  store i32* null, i32** %156, align 8
  br label %157

157:                                              ; preds = %146, %138
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @MBX_UNREG_LOGIN, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %227

165:                                              ; preds = %157
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = bitcast i32* %168 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %169, %struct.lpfc_nodelist** %7, align 8
  %170 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %171 = icmp ne %struct.lpfc_nodelist* %170, null
  br i1 %171, label %172, label %226

172:                                              ; preds = %165
  %173 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %174 = load i32, i32* @KERN_INFO, align 4
  %175 = load i32, i32* @LOG_MBOX, align 4
  %176 = load i32, i32* @LOG_DISCOVERY, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %179 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %182 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %185 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %188 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %191 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %173, i32 %174, i32 %177, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %180, i32 %183, i32 %186, i64 %189, %struct.lpfc_nodelist* %190)
  %192 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %193 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NLP_UNREG_INP, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %172
  %199 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %200 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @NLP_EVT_NOTHING_PENDING, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %219

204:                                              ; preds = %198
  %205 = load i32, i32* @NLP_UNREG_INP, align 4
  %206 = xor i32 %205, -1
  %207 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %208 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load i64, i64* @NLP_EVT_NOTHING_PENDING, align 8
  %212 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %213 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %215 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %216 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %214, i32 %217, i32 0)
  br label %223

219:                                              ; preds = %198, %172
  %220 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %221 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %222 = call i32 @__lpfc_sli_rpi_release(%struct.lpfc_vport* %220, %struct.lpfc_nodelist* %221)
  br label %223

223:                                              ; preds = %219, %204
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  store i32* null, i32** %225, align 8
  br label %226

226:                                              ; preds = %223, %165
  br label %227

227:                                              ; preds = %226, %157
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @MBX_INIT_LINK, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %227
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @MBXERR_SEC_NO_PERMISSION, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %235
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %245 = load i32, i32* @KERN_ERR, align 4
  %246 = load i32, i32* @LOG_MBOX, align 4
  %247 = load i32, i32* @LOG_SLI, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %244, i32 %245, i32 %248, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %250

250:                                              ; preds = %243, %235, %227
  %251 = load i32, i32* @lpfc_mqe_command, align 4
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = call i64 @bf_get(i32 %251, i32* %254)
  %256 = load i64, i64* @MBX_SLI4_CONFIG, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %250
  %259 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %261 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %259, %struct.TYPE_17__* %260)
  br label %268

262:                                              ; preds = %250
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %265 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @mempool_free(%struct.TYPE_17__* %263, i32 %266)
  br label %268

268:                                              ; preds = %90, %262, %258
  ret void
}

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i64, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @__lpfc_sli_rpi_release(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba*, %struct.TYPE_17__*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
