; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_task_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, %struct.sas_task_slow*, %struct.scsi_cmnd* }
%struct.sas_task_slow = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }
%struct.scsi_cmnd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_task_abort(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sas_task_slow*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  %5 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %6 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %5, i32 0, i32 2
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %7, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = icmp ne %struct.scsi_cmnd* %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %12 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %11, i32 0, i32 1
  %13 = load %struct.sas_task_slow*, %struct.sas_task_slow** %12, align 8
  store %struct.sas_task_slow* %13, %struct.sas_task_slow** %4, align 8
  %14 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %15 = icmp ne %struct.sas_task_slow* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %19 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %18, i32 0, i32 0
  %20 = call i32 @del_timer(%struct.TYPE_3__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %45

23:                                               ; preds = %17
  %24 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %25 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %26, align 8
  %28 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %29 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %28, i32 0, i32 0
  %30 = call i32 %27(%struct.TYPE_3__* %29)
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @dev_is_sata(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %39 = call i32 @sas_ata_task_abort(%struct.sas_task* %38)
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @blk_abort_request(i32 %43)
  br label %45

45:                                               ; preds = %16, %22, %23, %40, %37
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i64 @dev_is_sata(i32) #1

declare dso_local i32 @sas_ata_task_abort(%struct.sas_task*) #1

declare dso_local i32 @blk_abort_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
