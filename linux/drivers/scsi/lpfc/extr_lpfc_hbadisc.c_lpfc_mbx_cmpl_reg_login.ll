; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_5__ = type { i32*, i32*, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i64, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"0002 rpi:%x DID:%x flg:%x %d map:%x x%px\0A\00", align 1
@NLP_REG_LOGIN_SEND = common dso_local global i32 0, align 4
@NLP_IGNR_REG_CMPL = common dso_local global i32 0, align 4
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i64 0, align 8
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_EVT_CMPL_REG_LOGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_reg_login(%struct.lpfc_hba* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %15, %struct.lpfc_dmabuf** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %19, %struct.lpfc_nodelist** %7, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %20)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load i32, i32* @LOG_SLI, align 4
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %33 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 3
  %40 = call i32 @kref_read(i32* %39)
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %42 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %45 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, %struct.lpfc_nodelist* %44)
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %2
  %53 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %2
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NLP_IGNR_REG_CMPL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %68 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NLP_STE_REG_LOGIN_ISSUE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %66, %59
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @spin_lock_irq(i32 %75)
  %77 = load i32, i32* @NLP_IGNR_REG_CMPL, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spin_unlock_irq(i32 %85)
  %87 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %94 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %92, %struct.lpfc_nodelist* %93)
  br label %95

95:                                               ; preds = %72, %66
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %97 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = load i32, i32* @NLP_EVT_CMPL_REG_LOGIN, align 4
  %100 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %96, %struct.lpfc_nodelist* %97, %struct.TYPE_5__* %98, i32 %99)
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %103 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %106 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %101, i32 %104, i32 %107)
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %110 = call i32 @kfree(%struct.lpfc_dmabuf* %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mempool_free(%struct.TYPE_5__* %111, i32 %114)
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %117 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %116)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.lpfc_nodelist*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
