; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_report_sense_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_report_sense_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { %struct.TYPE_2__, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { i32, i64 }
%struct.SENSE_DATA = type { i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SCSI_SENSE_CURRENT_ERRORS = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CommandControlBlock*)* @arcmsr_report_sense_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_report_sense_info(%struct.CommandControlBlock* %0) #0 {
  %2 = alloca %struct.CommandControlBlock*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.SENSE_DATA*, align 8
  %5 = alloca i32, align 4
  store %struct.CommandControlBlock* %0, %struct.CommandControlBlock** %2, align 8
  %6 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %7 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %6, i32 0, i32 1
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.SENSE_DATA*
  store %struct.SENSE_DATA* %12, %struct.SENSE_DATA** %4, align 8
  %13 = load i32, i32* @DID_OK, align 4
  %14 = shl i32 %13, 16
  %15 = load i32, i32* @CHECK_CONDITION, align 4
  %16 = shl i32 %15, 1
  %17 = or i32 %14, %16
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %21 = icmp ne %struct.SENSE_DATA* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %1
  %23 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 8, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i64 [ 8, %26 ], [ %29, %27 ]
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %34 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %35 = call i32 @memset(%struct.SENSE_DATA* %33, i32 0, i32 %34)
  %36 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %37 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %38 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @memcpy(%struct.SENSE_DATA* %36, i32 %40, i32 %41)
  %43 = load i32, i32* @SCSI_SENSE_CURRENT_ERRORS, align 4
  %44 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %45 = getelementptr inbounds %struct.SENSE_DATA, %struct.SENSE_DATA* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %47 = getelementptr inbounds %struct.SENSE_DATA, %struct.SENSE_DATA* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @DRIVER_SENSE, align 4
  %49 = shl i32 %48, 24
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @memset(%struct.SENSE_DATA*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.SENSE_DATA*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
