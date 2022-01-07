; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_padisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_padisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.serv_parm = type { i32, i32 }
%struct.lpfc_name = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@ELS_CMD_ADISC = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_resume_rpi = common dso_local global i32 0, align 4
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_SPARM_OPTIONS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*)* @lpfc_rcv_padisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_padisc(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.serv_parm*, align 8
  %12 = alloca %struct.lpfc_name*, align 8
  %13 = alloca %struct.lpfc_name*, align 8
  %14 = alloca %struct.ls_rjt, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %8, align 8
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %24, %struct.lpfc_dmabuf** %10, align 8
  %25 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %26 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i64*
  store i64* %28, i64** %17, align 8
  %29 = load i64*, i64** %17, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %17, align 8
  %31 = load i64, i64* %29, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* @ELS_CMD_ADISC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load i64*, i64** %17, align 8
  %37 = bitcast i64* %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %15, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to %struct.lpfc_name*
  store %struct.lpfc_name* %40, %struct.lpfc_name** %12, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to %struct.lpfc_name*
  store %struct.lpfc_name* %43, %struct.lpfc_name** %13, align 8
  br label %53

44:                                               ; preds = %3
  %45 = load i64*, i64** %17, align 8
  %46 = bitcast i64* %45 to %struct.serv_parm*
  store %struct.serv_parm* %46, %struct.serv_parm** %11, align 8
  %47 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %48 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to %struct.lpfc_name*
  store %struct.lpfc_name* %49, %struct.lpfc_name** %12, align 8
  %50 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %51 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %50, i32 0, i32 0
  %52 = bitcast i32* %51 to %struct.lpfc_name*
  store %struct.lpfc_name* %52, %struct.lpfc_name** %13, align 8
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %55 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %54, i32 0, i32 1
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %16, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %130

60:                                               ; preds = %53
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %63 = load %struct.lpfc_name*, %struct.lpfc_name** %12, align 8
  %64 = load %struct.lpfc_name*, %struct.lpfc_name** %13, align 8
  %65 = call i64 @lpfc_check_adisc(%struct.lpfc_vport* %61, %struct.lpfc_nodelist* %62, %struct.lpfc_name* %63, %struct.lpfc_name* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %130

67:                                               ; preds = %60
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LPFC_SLI_REV4, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %67
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.lpfc_iocbq* @kmalloc(i32 24, i32 %76)
  store %struct.lpfc_iocbq* %77, %struct.lpfc_iocbq** %9, align 8
  %78 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %79 = icmp ne %struct.lpfc_iocbq* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %82 = bitcast %struct.lpfc_iocbq* %81 to i32*
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %84 = bitcast %struct.lpfc_iocbq* %83 to i32*
  %85 = call i32 @memcpy(i32* %82, i32* %84, i32 24)
  %86 = load i64, i64* %18, align 8
  %87 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %88 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %90 = load i32, i32* @lpfc_mbx_cmpl_resume_rpi, align 4
  %91 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %92 = call i32 @lpfc_sli4_resume_rpi(%struct.lpfc_nodelist* %89, i32 %90, %struct.lpfc_iocbq* %91)
  br label %110

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %67
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* @ELS_CMD_ADISC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %102 = call i32 @lpfc_els_rsp_adisc_acc(%struct.lpfc_vport* %99, %struct.lpfc_iocbq* %100, %struct.lpfc_nodelist* %101)
  br label %109

103:                                              ; preds = %94
  %104 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %105 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %108 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %104, i32 %105, %struct.lpfc_iocbq* %106, %struct.lpfc_nodelist* %107, i32* null)
  br label %109

109:                                              ; preds = %103, %98
  br label %110

110:                                              ; preds = %109, %80
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %112 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NLP_FCP_TARGET, align 4
  %115 = load i32, i32* @NLP_NVME_TARGET, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %121 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %122 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %123 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %120, %struct.lpfc_nodelist* %121, i32 %122)
  br label %129

124:                                              ; preds = %110
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %126 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %127 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %128 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %125, %struct.lpfc_nodelist* %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %119
  store i32 1, i32* %4, align 4
  br label %183

130:                                              ; preds = %60, %53
  %131 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %135 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @LSEXP_SPARM_OPTIONS, align 4
  %139 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 8
  %142 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %146 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %150 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %151 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %145, i32 %148, %struct.lpfc_iocbq* %149, %struct.lpfc_nodelist* %150, i32* null)
  %152 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %153 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %152, i32 0, i32 5
  %154 = load i64, i64* @jiffies, align 8
  %155 = call i64 @msecs_to_jiffies(i32 1000)
  %156 = add nsw i64 %154, %155
  %157 = call i32 @mod_timer(i32* %153, i64 %156)
  %158 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %159 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @spin_lock_irq(i32 %160)
  %162 = load i32, i32* @NLP_DELAY_TMO, align 4
  %163 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %164 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %168 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @spin_unlock_irq(i32 %169)
  %171 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %172 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %173 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %175 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %178 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %180 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %181 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %182 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %179, %struct.lpfc_nodelist* %180, i32 %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %130, %129
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_check_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_name*, %struct.lpfc_name*) #1

declare dso_local %struct.lpfc_iocbq* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_sli4_resume_rpi(%struct.lpfc_nodelist*, i32, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_els_rsp_adisc_acc(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
