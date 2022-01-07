; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_logo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_nodelist = type { i64, i32, i64, i64, i32, i32, i32 }
%struct.lpfc_iocbq = type { i32 }
%struct.Scsi_Host = type { i32 }

@NLP_LOGO_ACC = common dso_local global i32 0, align 4
@ELS_CMD_PRLO = common dso_local global i64 0, align 8
@ELS_CMD_ACC = common dso_local global i64 0, align 8
@Fabric_DID = common dso_local global i64 0, align 8
@LPFC_FDISC = common dso_local global i64 0, align 8
@FC_VPORT_LOGO_RCVD = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_FDISC = common dso_local global i32 0, align 4
@FC_LOGO_RCVD_DID_CHNG = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i64 0, align 8
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i64)* @lpfc_rcv_logo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_logo(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, %struct.lpfc_iocbq* %2, i64 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.lpfc_vport**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %15 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %9, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 3
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @spin_lock_irq(i32 %21)
  %23 = load i32, i32* @NLP_LOGO_ACC, align 4
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @spin_unlock_irq(i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @ELS_CMD_PRLO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %37 = load i64, i64* @ELS_CMD_PRLO, align 8
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %40 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %36, i64 %37, %struct.lpfc_iocbq* %38, %struct.lpfc_nodelist* %39, i32* null)
  br label %47

41:                                               ; preds = %4
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %43 = load i64, i64* @ELS_CMD_ACC, align 8
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %46 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %42, i64 %43, %struct.lpfc_iocbq* %44, %struct.lpfc_nodelist* %45, i32* null)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @Fabric_DID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %182

53:                                               ; preds = %47
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LPFC_FDISC, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %234

60:                                               ; preds = %53
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %62 = call i32 @lpfc_linkdown_port(%struct.lpfc_vport* %61)
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_lock_irq(i32 %65)
  %67 = load i32, i32* @FC_VPORT_LOGO_RCVD, align 4
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @spin_unlock_irq(i32 %74)
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %77 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %76)
  store %struct.lpfc_vport** %77, %struct.lpfc_vport*** %11, align 8
  %78 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %79 = icmp ne %struct.lpfc_vport** %78, null
  br i1 %79, label %80, label %126

80:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %119, %80
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %88, i64 %90
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %91, align 8
  %93 = icmp ne %struct.lpfc_vport* %92, null
  br label %94

94:                                               ; preds = %87, %81
  %95 = phi i1 [ false, %81 ], [ %93, %87 ]
  br i1 %95, label %96, label %122

96:                                               ; preds = %94
  %97 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %97, i64 %99
  %101 = load %struct.lpfc_vport*, %struct.lpfc_vport** %100, align 8
  %102 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FC_VPORT_LOGO_RCVD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %96
  %108 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %108, i64 %110
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %111, align 8
  %113 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LPFC_FDISC, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  store i32 1, i32* %13, align 4
  br label %122

118:                                              ; preds = %107, %96
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %81

122:                                              ; preds = %117, %94
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %124 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %125 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %123, %struct.lpfc_vport** %124)
  br label %126

126:                                              ; preds = %122, %60
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @FC_UNLOADING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %162, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %133
  %137 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %138 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %137, i32 0, i32 6
  %139 = load i64, i64* @jiffies, align 8
  %140 = call i64 @msecs_to_jiffies(i32 1000)
  %141 = add nsw i64 %139, %140
  %142 = call i32 @mod_timer(i32* %138, i64 %141)
  %143 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %144 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @spin_lock_irq(i32 %145)
  %147 = load i32, i32* @NLP_DELAY_TMO, align 4
  %148 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %149 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %153 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @spin_unlock_irq(i32 %154)
  %156 = load i32, i32* @ELS_CMD_FDISC, align 4
  %157 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %158 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load i64, i64* @LPFC_FDISC, align 8
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %161 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %181

162:                                              ; preds = %133, %126
  %163 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %164 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @spin_lock_irq(i32 %165)
  %167 = load i32, i32* @FC_LOGO_RCVD_DID_CHNG, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %168
  store i32 %174, i32* %172, align 4
  %175 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %176 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @spin_unlock_irq(i32 %177)
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %180 = call i32 @lpfc_retry_pport_discovery(%struct.lpfc_hba* %179)
  br label %181

181:                                              ; preds = %162, %136
  br label %233

182:                                              ; preds = %47
  %183 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @NLP_FABRIC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %182
  %190 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %191 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @NLP_FCP_TARGET, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %209, label %196

196:                                              ; preds = %189
  %197 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %198 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %196, %182
  %204 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %205 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @NLP_STE_ADISC_ISSUE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %232

209:                                              ; preds = %203, %196, %189
  %210 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %211 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %210, i32 0, i32 6
  %212 = load i64, i64* @jiffies, align 8
  %213 = call i64 @msecs_to_jiffies(i32 1000)
  %214 = add nsw i64 %212, %213
  %215 = call i32 @mod_timer(i32* %211, i64 %214)
  %216 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %217 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @spin_lock_irq(i32 %218)
  %220 = load i32, i32* @NLP_DELAY_TMO, align 4
  %221 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %222 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  %225 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %226 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @spin_unlock_irq(i32 %227)
  %229 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %230 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %231 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %230, i32 0, i32 5
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %209, %203
  br label %233

233:                                              ; preds = %232, %181
  br label %234

234:                                              ; preds = %233, %59
  %235 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %236 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %239 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %238, i32 0, i32 3
  store i64 %237, i64* %239, align 8
  %240 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %241 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %242 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %243 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %240, %struct.lpfc_nodelist* %241, i32 %242)
  %244 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %245 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @spin_lock_irq(i32 %246)
  %248 = load i32, i32* @NLP_NPR_ADISC, align 4
  %249 = xor i32 %248, -1
  %250 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %251 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = and i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %255 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @spin_unlock_irq(i32 %256)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport*, i64, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_linkdown_port(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_retry_pport_discovery(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
