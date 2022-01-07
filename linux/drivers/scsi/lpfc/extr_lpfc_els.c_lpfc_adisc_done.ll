; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_adisc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_adisc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, i64, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64 }
%struct.Scsi_Host = type { i32 }

@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*)* @lpfc_adisc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_adisc_done(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %6 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %7, i32 0, i32 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_hba* %9, %struct.lpfc_hba** %4, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FC_RSCN_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %16
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_SLI_REV4, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %32 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %30, %struct.lpfc_vport* %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %35 = call i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba* %33, %struct.lpfc_vport* %34)
  br label %94

36:                                               ; preds = %23, %16, %1
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %38 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LPFC_VPORT_READY, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %36
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %45 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %43, %struct.lpfc_vport* %44)
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %87, label %52

52:                                               ; preds = %42
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %54 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %61 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %62
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @spin_lock_irq(i32 %70)
  %72 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @spin_unlock_irq(i32 %80)
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %83 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %82)
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %85 = call i32 @lpfc_end_rscn(%struct.lpfc_vport* %84)
  br label %86

86:                                               ; preds = %67, %62
  br label %87

87:                                               ; preds = %86, %42
  %88 = load i64, i64* @LPFC_VPORT_READY, align 8
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %90 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %94

91:                                               ; preds = %36
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %93 = call i32 @lpfc_rscn_disc(%struct.lpfc_vport* %92)
  br label %94

94:                                               ; preds = %29, %91, %87
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_end_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_rscn_disc(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
