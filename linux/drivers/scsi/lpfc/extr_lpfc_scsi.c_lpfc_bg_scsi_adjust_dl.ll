; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_adjust_dl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_adjust_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_io_buf = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64 }

@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SCSI_PROT_READ_INSERT = common dso_local global i64 0, align 8
@SCSI_PROT_WRITE_STRIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_io_buf*)* @lpfc_bg_scsi_adjust_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %5, align 8
  %8 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %9 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %8, i32 0, i32 0
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %12 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %19)
  %21 = load i64, i64* @SCSI_PROT_READ_INSERT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %18
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %28 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %27)
  %29 = load i64, i64* @SCSI_PROT_WRITE_STRIP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %37 = call i32 @lpfc_cmd_blksize(%struct.scsi_cmnd* %36)
  %38 = sdiv i32 %35, %37
  %39 = mul nsw i32 %38, 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %31, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_cmd_blksize(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
