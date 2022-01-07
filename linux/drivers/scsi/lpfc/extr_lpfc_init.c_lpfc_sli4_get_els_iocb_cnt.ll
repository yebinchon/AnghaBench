; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_get_els_iocb_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_get_els_iocb_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_get_els_iocb_cnt(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPFC_SLI_REV4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 100
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 10, i32* %2, align 4
  br label %41

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 256
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 25, i32* %2, align 4
  br label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 512
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 50, i32* %2, align 4
  br label %41

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 1024
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 100, i32* %2, align 4
  br label %41

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, 1536
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 150, i32* %2, align 4
  br label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 2048
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 200, i32* %2, align 4
  br label %41

39:                                               ; preds = %35
  store i32 250, i32* %2, align 4
  br label %41

40:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %38, %34, %30, %26, %22, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
