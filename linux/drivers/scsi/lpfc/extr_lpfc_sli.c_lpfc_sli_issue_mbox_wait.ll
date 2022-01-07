; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_mbox_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_mbox_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.completion* }
%struct.completion = type { i32 }

@LPFC_MBX_WAKE = common dso_local global i32 0, align 4
@lpfc_sli_wake_mbox_wait = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.completion, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @LPFC_MBX_WAKE, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* @lpfc_sli_wake_mbox_wait, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = call i32 @init_completion(%struct.completion* %7)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store %struct.completion* %7, %struct.completion** %21, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = load i32, i32* @MBX_NOWAIT, align 4
  %25 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %22, %struct.TYPE_4__* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MBX_BUSY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MBX_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29, %3
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = call i32 @msecs_to_jiffies(i32 %35)
  %37 = call i32 @wait_for_completion_timeout(%struct.completion* %7, i32 %36)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store %struct.completion* null, %struct.completion** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LPFC_MBX_WAKE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @MBX_SUCCESS, align 4
  store i32 %51, i32* %8, align 4
  br label %57

52:                                               ; preds = %33
  %53 = load i32, i32* @MBX_TIMEOUT, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %50
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %29
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
