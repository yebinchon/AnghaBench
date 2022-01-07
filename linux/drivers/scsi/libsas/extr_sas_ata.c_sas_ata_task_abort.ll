; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_task_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.ata_queued_cmd* }
%struct.ata_queued_cmd = type { %struct.completion*, i32, i32, %struct.TYPE_2__* }
%struct.completion = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_ata_task_abort(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.completion*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  %5 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %6 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %5, i32 0, i32 0
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  store %struct.ata_queued_cmd* %7, %struct.ata_queued_cmd** %3, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @blk_abort_request(i32 %17)
  br label %41

19:                                               ; preds = %1
  %20 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %32 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %36, i32 0, i32 0
  %38 = load %struct.completion*, %struct.completion** %37, align 8
  store %struct.completion* %38, %struct.completion** %4, align 8
  %39 = load %struct.completion*, %struct.completion** %4, align 8
  %40 = call i32 @complete(%struct.completion* %39)
  br label %41

41:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @blk_abort_request(i32) #1

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
