; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32 }
%struct.lpfc_iocbq = type { i32 }
%struct.lpfc_sli_ring = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %0, i32 %1, %struct.lpfc_iocbq* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_sli_ring*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPFC_SLI_REV4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %21 = call %struct.lpfc_sli_ring* @lpfc_sli4_calc_ring(%struct.lpfc_hba* %19, %struct.lpfc_iocbq* %20)
  store %struct.lpfc_sli_ring* %21, %struct.lpfc_sli_ring** %10, align 8
  %22 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %23 = icmp eq %struct.lpfc_sli_ring* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %28, i32* %5, align 4
  br label %59

29:                                               ; preds = %18
  %30 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %34, i32 %35, %struct.lpfc_iocbq* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %40 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %57

43:                                               ; preds = %4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 1
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %48, i32 %49, %struct.lpfc_iocbq* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 1
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %43, %29
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %27
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.lpfc_sli_ring* @lpfc_sli4_calc_ring(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
