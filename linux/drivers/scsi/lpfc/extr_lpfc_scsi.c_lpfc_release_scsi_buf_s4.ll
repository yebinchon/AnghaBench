; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_release_scsi_buf_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_release_scsi_buf_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_io_buf = type { i32, i32*, i64, %struct.lpfc_sli4_hdw_queue*, i64, i64 }
%struct.lpfc_sli4_hdw_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_io_buf*)* @lpfc_release_scsi_buf_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_release_scsi_buf_s4(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_io_buf*, align 8
  %5 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %4, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %11, i32 0, i32 3
  %13 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %12, align 8
  store %struct.lpfc_sli4_hdw_queue* %13, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %14 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %25, i32 0, i32 0
  %27 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %27, i32 0, i32 2
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %41 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %42 = call i32 @lpfc_release_io_buf(%struct.lpfc_hba* %39, %struct.lpfc_io_buf* %40, %struct.lpfc_sli4_hdw_queue* %41)
  br label %43

43:                                               ; preds = %38, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_release_io_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*, %struct.lpfc_sli4_hdw_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
