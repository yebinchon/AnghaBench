; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, i32, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.lpfc_vport*, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_UNLOADING = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Link Up:         top:x%x speed:x%x flg:x%x\00", align 1
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_ENABLE_NVME = common dso_local global i64 0, align 8
@FCH_EVT_LINKUP = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_PT2PT_PLOGI = common dso_local global i32 0, align 4
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@FC_NLP_MORE = common dso_local global i32 0, align 4
@FC_RSCN_DISCOVERY = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@FC_LBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*)* @lpfc_linkup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_linkup_port(%struct.lpfc_vport* %0) #0 {
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
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FC_UNLOADING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %19 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %18, i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %17
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %39, align 8
  %41 = icmp ne %struct.lpfc_vport* %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %95

43:                                               ; preds = %36, %17
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPFC_ENABLE_NVME, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %51 = call i32 (...) @fc_get_event_number()
  %52 = load i32, i32* @FCH_EVT_LINKUP, align 4
  %53 = call i32 @fc_host_post_event(%struct.Scsi_Host* %50, i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @spin_lock_irq(i32 %57)
  %59 = load i32, i32* @FC_PT2PT, align 4
  %60 = load i32, i32* @FC_PT2PT_PLOGI, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @FC_RSCN_MODE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @FC_NLP_MORE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @FC_RSCN_DISCOVERY, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %77 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_unlock_irq(i32 %84)
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @FC_LBIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %54
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %94 = call i32 @lpfc_linkup_cleanup_nodes(%struct.lpfc_vport* %93)
  br label %95

95:                                               ; preds = %16, %42, %92, %54
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @fc_host_post_event(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_linkup_cleanup_nodes(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
