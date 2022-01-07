; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_sum_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_sum_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.lpfc_iocbq** }
%struct.lpfc_iocbq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_sum_iocb(%struct.lpfc_vport* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %9, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  store i32 1, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %46, %4
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %30, i64 %32
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %33, align 8
  store %struct.lpfc_iocbq* %34, %struct.lpfc_iocbq** %10, align 8
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @lpfc_sli_validate_fcp_iocb(%struct.lpfc_iocbq* %35, %struct.lpfc_vport* %36, i32 %37, i32 %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @lpfc_sli_validate_fcp_iocb(%struct.lpfc_iocbq*, %struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
