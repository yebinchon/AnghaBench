; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_complete_unsol_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_complete_unsol_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i64 }
%struct.lpfc_iocbq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*, i64, i64)* @lpfc_complete_unsol_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_complete_unsol_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_sli_ring*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %8, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  switch i64 %13, label %19 [
    i64 128, label %14
  ]

14:                                               ; preds = %5
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %16 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %18 = call i32 @lpfc_nvmet_unsol_ls_event(%struct.lpfc_hba* %15, %struct.lpfc_sli_ring* %16, %struct.lpfc_iocbq* %17)
  store i32 1, i32* %6, align 4
  br label %106

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %30 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %33, align 8
  %35 = icmp ne i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %38 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %41, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %44 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %46 = call i32 %42(%struct.lpfc_hba* %43, %struct.lpfc_sli_ring* %44, %struct.lpfc_iocbq* %45)
  br label %47

47:                                               ; preds = %36, %28
  store i32 1, i32* %6, align 4
  br label %106

48:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %102, %48
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  %56 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %57 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %55
  %67 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %68 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %66
  %78 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %79 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %84, align 8
  %86 = icmp ne i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %89 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %94, align 8
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %97 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %98 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %99 = call i32 %95(%struct.lpfc_hba* %96, %struct.lpfc_sli_ring* %97, %struct.lpfc_iocbq* %98)
  br label %100

100:                                              ; preds = %87, %77
  store i32 1, i32* %6, align 4
  br label %106

101:                                              ; preds = %66, %55
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %49

105:                                              ; preds = %49
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %100, %47, %14
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @lpfc_nvmet_unsol_ls_event(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
