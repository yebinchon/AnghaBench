; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_device_recov_reglogin_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_device_recov_reglogin_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_RSCN_DEFERRED = common dso_local global i32 0, align 4
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_IGNR_REG_CMPL = common dso_local global i32 0, align 4
@NLP_NODEV_REMOVE = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_device_recov_reglogin_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_device_recov_reglogin_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %10, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FC_RSCN_DEFERRED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %73

23:                                               ; preds = %4
  %24 = load i32, i32* @NLP_STE_REG_LOGIN_ISSUE, align 4
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %29 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %30 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %27, %struct.lpfc_nodelist* %28, i32 %29)
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @spin_lock_irq(i32 %33)
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41, %23
  %49 = load i32, i32* @NLP_IGNR_REG_CMPL, align 4
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %56 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_unlock_irq(i32 %65)
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %69 = call i32 @lpfc_disc_set_adisc(%struct.lpfc_vport* %67, %struct.lpfc_nodelist* %68)
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %71 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %54, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_disc_set_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
