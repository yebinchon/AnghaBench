; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_plogi_npr_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_plogi_npr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32 }

@NLP_LOGO_SND = common dso_local global i32 0, align 4
@NLP_LOGO_ACC = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_plogi_npr_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_plogi_npr_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %13 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %15, %struct.lpfc_iocbq** %11, align 8
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NLP_LOGO_SND, align 4
  %20 = load i32, i32* @NLP_LOGO_ACC, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %87

28:                                               ; preds = %4
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %32 = call i64 @lpfc_rcv_plogi(%struct.lpfc_vport* %29, %struct.lpfc_nodelist* %30, %struct.lpfc_iocbq* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %37 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %35, %struct.lpfc_nodelist* %36)
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spin_lock_irq(i32 %40)
  %42 = load i32, i32* @NLP_NPR_ADISC, align 4
  %43 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @spin_unlock_irq(i32 %52)
  br label %83

54:                                               ; preds = %28
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %54
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NLP_DELAY_TMO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %71 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %73 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %74 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %75 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %72, %struct.lpfc_nodelist* %73, i32 %74)
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %76, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %68, %61
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %34
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %24
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_rcv_plogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
