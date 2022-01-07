; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_workq_post_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_workq_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_work_evt = type { i32, i32, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_workq_post_event(%struct.lpfc_hba* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_work_evt*, align 8
  %11 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.lpfc_work_evt* @kmalloc(i32 24, i32 %12)
  store %struct.lpfc_work_evt* %13, %struct.lpfc_work_evt** %10, align 8
  %14 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %10, align 8
  %15 = icmp ne %struct.lpfc_work_evt* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %10, align 8
  %20 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %10, align 8
  %23 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %10, align 8
  %26 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %10, align 8
  %32 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %31, i32 0, i32 0
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 1
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %41 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %40)
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %17, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.lpfc_work_evt* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
