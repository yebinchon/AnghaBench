; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_remove_one_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_remove_one_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i64, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i64, i32 }

@FC_UNLOADING = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @lpfc_pci_remove_one_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_pci_remove_one_s4(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_vport**, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %4, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %6, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load i32, i32* @FC_UNLOADING, align 4
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %29 = call i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %31 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %30)
  store %struct.lpfc_vport** %31, %struct.lpfc_vport*** %5, align 8
  %32 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %33 = icmp ne %struct.lpfc_vport** %32, null
  br i1 %33, label %34, label %74

34:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %42, i64 %44
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %45, align 8
  %47 = icmp ne %struct.lpfc_vport* %46, null
  br label %48

48:                                               ; preds = %41, %35
  %49 = phi i1 [ false, %35 ], [ %47, %41 ]
  br i1 %49, label %50, label %73

50:                                               ; preds = %48
  %51 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %51, i64 %53
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %54, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %70

61:                                               ; preds = %50
  %62 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %62, i64 %64
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %65, align 8
  %67 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fc_vport_terminate(i32 %68)
  br label %70

70:                                               ; preds = %61, %60
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %35

73:                                               ; preds = %48
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %76 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %77 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %75, %struct.lpfc_vport** %76)
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %79 = call i32 @fc_remove_host(%struct.Scsi_Host* %78)
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %81 = call i32 @scsi_remove_host(%struct.Scsi_Host* %80)
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %83 = call i32 @lpfc_cleanup(%struct.lpfc_vport* %82)
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %85 = call i32 @lpfc_nvmet_destroy_targetport(%struct.lpfc_hba* %84)
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %87 = call i32 @lpfc_nvme_destroy_localport(%struct.lpfc_vport* %86)
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %94 = call i32 @lpfc_destroy_multixri_pools(%struct.lpfc_hba* %93)
  br label %95

95:                                               ; preds = %92, %74
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %97 = call i32 @lpfc_debugfs_terminate(%struct.lpfc_vport* %96)
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %99 = call i32 @lpfc_stop_hba_timers(%struct.lpfc_hba* %98)
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 1
  %102 = call i32 @spin_lock_irq(i32* %101)
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %104 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %103, i32 0, i32 1
  %105 = call i32 @list_del_init(i32* %104)
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 1
  %108 = call i32 @spin_unlock_irq(i32* %107)
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %110 = call i32 @lpfc_io_free(%struct.lpfc_hba* %109)
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %112 = call i32 @lpfc_free_iocb_list(%struct.lpfc_hba* %111)
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %114 = call i32 @lpfc_sli4_hba_unset(%struct.lpfc_hba* %113)
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %116 = call i32 @lpfc_unset_driver_resource_phase2(%struct.lpfc_hba* %115)
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %118 = call i32 @lpfc_sli4_driver_resource_unset(%struct.lpfc_hba* %117)
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %120 = call i32 @lpfc_sli4_pci_mem_unset(%struct.lpfc_hba* %119)
  %121 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %122 = call i32 @scsi_host_put(%struct.Scsi_Host* %121)
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %124 = call i32 @lpfc_disable_pci_dev(%struct.lpfc_hba* %123)
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %126 = call i32 @lpfc_hba_free(%struct.lpfc_hba* %125)
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @fc_vport_terminate(i32) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @fc_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_cleanup(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_nvmet_destroy_targetport(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nvme_destroy_localport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_multixri_pools(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debugfs_terminate(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_stop_hba_timers(%struct.lpfc_hba*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @lpfc_io_free(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_free_iocb_list(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_hba_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unset_driver_resource_phase2(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_driver_resource_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_pci_mem_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_disable_pci_dev(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_hba_free(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
