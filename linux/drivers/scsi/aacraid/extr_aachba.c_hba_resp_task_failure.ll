; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_hba_resp_task_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_hba_resp_task_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_hba_resp = type { i32 }

@AAC_DEVTYPE_NATIVE_RAW = common dso_local global i32 0, align 4
@AAC_DEVTYPE_ARC_RAW = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@ABORT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, %struct.scsi_cmnd*, %struct.aac_hba_resp*)* @hba_resp_task_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hba_resp_task_failure(%struct.aac_dev* %0, %struct.scsi_cmnd* %1, %struct.aac_hba_resp* %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.aac_hba_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.aac_hba_resp* %2, %struct.aac_hba_resp** %6, align 8
  %9 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %6, align 8
  %10 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %93 [
    i32 134, label %12
    i32 131, label %58
    i32 130, label %58
    i32 132, label %68
    i32 133, label %76
    i32 128, label %84
    i32 129, label %92
  ]

12:                                               ; preds = %3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = call i32 @scmd_channel(%struct.scsi_cmnd* %13)
  %15 = call i64 @aac_logical_to_phys(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = call i64 @scmd_id(%struct.scsi_cmnd* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %19 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AAC_DEVTYPE_NATIVE_RAW, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %12
  %31 = load i32, i32* @AAC_DEVTYPE_ARC_RAW, align 4
  %32 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %33 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %31, i32* %40, align 4
  %41 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %42 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %30, %12
  %51 = load i32, i32* @DID_NO_CONNECT, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* @COMMAND_COMPLETE, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %52, %54
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %101

58:                                               ; preds = %3, %3
  %59 = load i32, i32* @DID_OK, align 4
  %60 = shl i32 %59, 16
  %61 = load i32, i32* @COMMAND_COMPLETE, align 4
  %62 = shl i32 %61, 8
  %63 = or i32 %60, %62
  %64 = load i32, i32* @SAM_STAT_BUSY, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %101

68:                                               ; preds = %3
  %69 = load i32, i32* @DID_ABORT, align 4
  %70 = shl i32 %69, 16
  %71 = load i32, i32* @ABORT, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %70, %72
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %101

76:                                               ; preds = %3
  %77 = load i32, i32* @DID_NO_CONNECT, align 4
  %78 = shl i32 %77, 16
  %79 = load i32, i32* @COMMAND_COMPLETE, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %78, %80
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %101

84:                                               ; preds = %3
  %85 = load i32, i32* @DID_OK, align 4
  %86 = shl i32 %85, 16
  %87 = load i32, i32* @COMMAND_COMPLETE, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %86, %88
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %101

92:                                               ; preds = %3
  br label %93

93:                                               ; preds = %3, %92
  %94 = load i32, i32* @DID_ERROR, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* @COMMAND_COMPLETE, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %95, %97
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %84, %76, %68, %58, %50
  ret void
}

declare dso_local i64 @aac_logical_to_phys(i32) #1

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
