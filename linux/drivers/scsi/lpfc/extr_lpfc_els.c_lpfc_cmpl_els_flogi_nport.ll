; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_flogi_nport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_flogi_nport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i64, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.serv_parm = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_6__ = type { %struct.lpfc_vport*, i32 }

@FC_FABRIC = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@FC_VFI_REGISTERED = common dso_local global i32 0, align 4
@FC_PT2PT_PLOGI = common dso_local global i32 0, align 4
@PT2PT_LocalID = common dso_local global i32 0, align 4
@PT2PT_RemoteID = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_local_config_link = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.serv_parm*)* @lpfc_cmpl_els_flogi_nport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_els_flogi_nport(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, %struct.serv_parm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.serv_parm*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store %struct.serv_parm* %2, %struct.serv_parm** %7, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %13 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %8, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 3
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %9, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spin_lock_irq(i32 %19)
  %21 = load i32, i32* @FC_FABRIC, align 4
  %22 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @FC_PT2PT, align 4
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_unlock_irq(i32 %36)
  %38 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPFC_SLI_REV4, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %3
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %56 = call i32 @lpfc_unregister_fcf_prep(%struct.lpfc_hba* %55)
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @spin_lock_irq(i32 %59)
  %61 = load i32, i32* @FC_VFI_REGISTERED, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @spin_unlock_irq(i32 %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %54, %49, %3
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %74, i32 0, i32 2
  %76 = load %struct.serv_parm*, %struct.serv_parm** %7, align 8
  %77 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %76, i32 0, i32 1
  %78 = call i32 @memcmp(i32* %75, i32* %77, i32 4)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %191

81:                                               ; preds = %73
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_lock_irq(i32 %84)
  %86 = load i32, i32* @FC_PT2PT_PLOGI, align 4
  %87 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %88 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %92 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @spin_unlock_irq(i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %81
  %98 = load i32, i32* @PT2PT_LocalID, align 4
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %81
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %103 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %102)
  %104 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %105 = load i32, i32* @PT2PT_RemoteID, align 4
  %106 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %104, i32 %105)
  store %struct.lpfc_nodelist* %106, %struct.lpfc_nodelist** %6, align 8
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %108 = icmp ne %struct.lpfc_nodelist* %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %111 = load i32, i32* @PT2PT_RemoteID, align 4
  %112 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %110, i32 %111)
  store %struct.lpfc_nodelist* %112, %struct.lpfc_nodelist** %6, align 8
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %114 = icmp ne %struct.lpfc_nodelist* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %197

116:                                              ; preds = %109
  br label %131

117:                                              ; preds = %101
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %119 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %124 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %125 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %122, %struct.lpfc_nodelist* %123, i32 %124)
  store %struct.lpfc_nodelist* %125, %struct.lpfc_nodelist** %6, align 8
  %126 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %127 = icmp ne %struct.lpfc_nodelist* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %197

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %117
  br label %131

131:                                              ; preds = %130, %116
  %132 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %133 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %132, i32 0, i32 2
  %134 = load %struct.serv_parm*, %struct.serv_parm** %7, align 8
  %135 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %134, i32 0, i32 1
  %136 = call i32 @memcpy(i32* %133, i32* %135, i32 4)
  %137 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %138 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %137, i32 0, i32 1
  %139 = load %struct.serv_parm*, %struct.serv_parm** %7, align 8
  %140 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %139, i32 0, i32 0
  %141 = call i32 @memcpy(i32* %138, i32* %140, i32 4)
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %143 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %144 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %145 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %142, %struct.lpfc_nodelist* %143, i32 %144)
  %146 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %147 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @spin_lock_irq(i32 %148)
  %150 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %151 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %152 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %156 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @spin_unlock_irq(i32 %157)
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call %struct.TYPE_6__* @mempool_alloc(i32 %161, i32 %162)
  store %struct.TYPE_6__* %163, %struct.TYPE_6__** %10, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %165 = icmp ne %struct.TYPE_6__* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %131
  br label %197

167:                                              ; preds = %131
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %170 = call i32 @lpfc_config_link(%struct.lpfc_hba* %168, %struct.TYPE_6__* %169)
  %171 = load i32, i32* @lpfc_mbx_cmpl_local_config_link, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store %struct.lpfc_vport* %174, %struct.lpfc_vport** %176, align 8
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %179 = load i32, i32* @MBX_NOWAIT, align 4
  %180 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %177, %struct.TYPE_6__* %178, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %167
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %187 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @mempool_free(%struct.TYPE_6__* %185, i32 %188)
  br label %197

190:                                              ; preds = %167
  br label %196

191:                                              ; preds = %73
  %192 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %193 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %192)
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %195 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %194)
  br label %196

196:                                              ; preds = %191, %190
  store i32 0, i32* %4, align 4
  br label %200

197:                                              ; preds = %184, %166, %128, %115
  %198 = load i32, i32* @ENXIO, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %197, %196
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_unregister_fcf_prep(%struct.lpfc_hba*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_config_link(%struct.lpfc_hba*, %struct.TYPE_6__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
