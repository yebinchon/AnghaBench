; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.c_NCR_700_clear_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.c_NCR_700_clear_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.NCR_700_Host_Parameters = type { i64 }

@CLR_FIFO_710 = common dso_local global i32 0, align 4
@CTEST8_REG = common dso_local global i32 0, align 4
@CLR_FIFO = common dso_local global i32 0, align 4
@DFIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @NCR_700_clear_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NCR_700_clear_fifo(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.NCR_700_Host_Parameters*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.NCR_700_Host_Parameters*
  store %struct.NCR_700_Host_Parameters* %9, %struct.NCR_700_Host_Parameters** %3, align 8
  %10 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %3, align 8
  %11 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @CLR_FIFO_710, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %17 = load i32, i32* @CTEST8_REG, align 4
  %18 = call i32 @NCR_700_writeb(i32 %15, %struct.Scsi_Host* %16, i32 %17)
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @CLR_FIFO, align 4
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %22 = load i32, i32* @DFIFO_REG, align 4
  %23 = call i32 @NCR_700_writeb(i32 %20, %struct.Scsi_Host* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @NCR_700_writeb(i32, %struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
