; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mbox_completions_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mbox_completions_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.lpfc_queue* }
%struct.TYPE_3__ = type { i64 }
%struct.lpfc_queue = type { i32, i32, i32 }
%struct.lpfc_mcqe = type { i32 }
%struct.lpfc_cqe = type opaque

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_cqe_valid = common dso_local global i32 0, align 4
@lpfc_trailer_completed = common dso_local global i32 0, align 4
@lpfc_trailer_async = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_mbox_completions_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_mbox_completions_pending(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca %struct.lpfc_mcqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = icmp ne %struct.lpfc_hba* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LPFC_SLI_REV4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %89

22:                                               ; preds = %15
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.lpfc_queue*, %struct.lpfc_queue** %25, align 8
  store %struct.lpfc_queue* %26, %struct.lpfc_queue** %5, align 8
  %27 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %86, %22
  %34 = load i32, i32* @lpfc_cqe_valid, align 4
  %35 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @lpfc_sli4_qe(%struct.lpfc_queue* %35, i32 %36)
  %38 = inttoptr i64 %37 to %struct.lpfc_cqe*
  %39 = bitcast %struct.lpfc_cqe* %38 to %struct.lpfc_mcqe*
  %40 = call i32 @bf_get_le32(i32 %34, %struct.lpfc_mcqe* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %33
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @lpfc_sli4_qe(%struct.lpfc_queue* %44, i32 %45)
  %47 = inttoptr i64 %46 to %struct.lpfc_mcqe*
  store %struct.lpfc_mcqe* %47, %struct.lpfc_mcqe** %6, align 8
  %48 = load i32, i32* @lpfc_trailer_completed, align 4
  %49 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %6, align 8
  %50 = call i32 @bf_get_le32(i32 %48, %struct.lpfc_mcqe* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* @lpfc_trailer_async, align 4
  %54 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %6, align 8
  %55 = call i32 @bf_get_le32(i32 %53, %struct.lpfc_mcqe* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 1, i32* %7, align 4
  br label %87

58:                                               ; preds = %52, %43
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %62 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = srem i32 %60, %63
  store i32 %64, i32* %4, align 4
  %65 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %87

71:                                               ; preds = %58
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %78, %71
  br label %33

87:                                               ; preds = %70, %57, %33
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %21
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_get_le32(i32, %struct.lpfc_mcqe*) #1

declare dso_local i64 @lpfc_sli4_qe(%struct.lpfc_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
