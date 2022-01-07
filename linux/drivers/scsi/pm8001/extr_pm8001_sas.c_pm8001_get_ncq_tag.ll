; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_get_ncq_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_get_ncq_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.ata_queued_cmd* }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ATA_CMD_FPDMA_WRITE = common dso_local global i64 0, align 8
@ATA_CMD_FPDMA_READ = common dso_local global i64 0, align 8
@ATA_CMD_FPDMA_RECV = common dso_local global i64 0, align 8
@ATA_CMD_FPDMA_SEND = common dso_local global i64 0, align 8
@ATA_CMD_NCQ_NON_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_get_ncq_tag(%struct.sas_task* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %8 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %7, i32 0, i32 0
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %8, align 8
  store %struct.ata_queued_cmd* %9, %struct.ata_queued_cmd** %6, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %11 = icmp ne %struct.ata_queued_cmd* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATA_CMD_FPDMA_WRITE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ATA_CMD_FPDMA_READ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %19
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ATA_CMD_FPDMA_RECV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATA_CMD_FPDMA_SEND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ATA_CMD_NCQ_NON_DATA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40, %33, %26, %19, %12
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i32 1, i32* %3, align 4
  br label %54

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
