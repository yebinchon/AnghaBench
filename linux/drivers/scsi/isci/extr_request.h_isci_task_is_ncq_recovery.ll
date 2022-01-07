; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.h_isci_task_is_ncq_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.h_isci_task_is_ncq_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ATA_CMD_READ_LOG_EXT = common dso_local global i64 0, align 8
@ATA_LOG_SATA_NCQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*)* @isci_task_is_ncq_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_task_is_ncq_recovery(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  %3 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %4 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @sas_protocol_ata(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %10 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATA_CMD_READ_LOG_EXT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %18 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ATA_LOG_SATA_NCQ, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %16, %8, %1
  %25 = phi i1 [ false, %8 ], [ false, %1 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @sas_protocol_ata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
