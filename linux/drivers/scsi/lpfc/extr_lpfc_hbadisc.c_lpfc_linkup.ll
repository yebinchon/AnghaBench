; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@LPFC_LINK_UP = common dso_local global i32 0, align 4
@FABRIC_COMANDS_BLOCKED = common dso_local global i32 0, align 4
@HBA_FLOGI_ISSUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_linkup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.TYPE_2__* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %5, align 8
  %10 = load i32, i32* @LPFC_LINK_UP, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @FABRIC_COMANDS_BLOCKED, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 5
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 4
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %20)
  store %struct.lpfc_vport** %21, %struct.lpfc_vport*** %3, align 8
  %22 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %23 = icmp ne %struct.lpfc_vport** %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %32, i64 %34
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %35, align 8
  %37 = icmp ne %struct.lpfc_vport* %36, null
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i1 [ false, %25 ], [ %37, %31 ]
  br i1 %39, label %40, label %50

40:                                               ; preds = %38
  %41 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %41, i64 %43
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %44, align 8
  %46 = call i32 @lpfc_linkup_port(%struct.lpfc_vport* %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %25

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %54 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %52, %struct.lpfc_vport** %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @spin_lock_irq(i32 %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_unlock_irq(i32 %65)
  %67 = load i32, i32* @HBA_FLOGI_ISSUED, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.TYPE_2__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_linkup_port(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
