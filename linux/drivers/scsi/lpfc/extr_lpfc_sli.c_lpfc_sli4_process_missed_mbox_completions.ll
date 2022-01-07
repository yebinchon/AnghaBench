; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_process_missed_mbox_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_process_missed_mbox_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.lpfc_sli4_hba }
%struct.lpfc_sli4_hba = type { i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)*, i32 (%struct.lpfc_queue.1*)*, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.lpfc_hba.0 = type opaque
%struct.lpfc_queue = type opaque
%struct.lpfc_queue.1 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.lpfc_queue.2* }
%struct.lpfc_queue.2 = type { i64 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_process_missed_mbox_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_process_missed_mbox_completions(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_sli4_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpfc_queue.2*, align 8
  %7 = alloca %struct.lpfc_queue.2*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 2
  store %struct.lpfc_sli4_hba* %10, %struct.lpfc_sli4_hba** %4, align 8
  store %struct.lpfc_queue.2* null, %struct.lpfc_queue.2** %6, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = icmp ne %struct.lpfc_hba* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LPFC_SLI_REV4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %95

24:                                               ; preds = %17
  %25 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %43, align 8
  store %struct.lpfc_queue.2* %44, %struct.lpfc_queue.2** %7, align 8
  %45 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %7, align 8
  %46 = icmp ne %struct.lpfc_queue.2* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %7, align 8
  %49 = getelementptr inbounds %struct.lpfc_queue.2, %struct.lpfc_queue.2* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %7, align 8
  store %struct.lpfc_queue.2* %58, %struct.lpfc_queue.2** %6, align 8
  br label %63

59:                                               ; preds = %47, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %30

63:                                               ; preds = %57, %30
  br label %64

64:                                               ; preds = %63, %24
  %65 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %6, align 8
  %66 = icmp ne %struct.lpfc_queue.2* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %95

68:                                               ; preds = %64
  %69 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %69, i32 0, i32 1
  %71 = load i32 (%struct.lpfc_queue.1*)*, i32 (%struct.lpfc_queue.1*)** %70, align 8
  %72 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %6, align 8
  %73 = bitcast %struct.lpfc_queue.2* %72 to %struct.lpfc_queue.1*
  %74 = call i32 %71(%struct.lpfc_queue.1* %73)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = call i32 @lpfc_sli4_mbox_completions_pending(%struct.lpfc_hba* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %6, align 8
  %82 = call i32 @lpfc_sli4_process_eq(%struct.lpfc_hba* %80, %struct.lpfc_queue.2* %81)
  br label %93

83:                                               ; preds = %68
  %84 = load %struct.lpfc_sli4_hba*, %struct.lpfc_sli4_hba** %4, align 8
  %85 = getelementptr inbounds %struct.lpfc_sli4_hba, %struct.lpfc_sli4_hba* %84, i32 0, i32 0
  %86 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)** %85, align 8
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = bitcast %struct.lpfc_hba* %87 to %struct.lpfc_hba.0*
  %89 = load %struct.lpfc_queue.2*, %struct.lpfc_queue.2** %6, align 8
  %90 = bitcast %struct.lpfc_queue.2* %89 to %struct.lpfc_queue*
  %91 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %92 = call i32 %86(%struct.lpfc_hba.0* %88, %struct.lpfc_queue* %90, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %83, %79
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %67, %23
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli4_mbox_completions_pending(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_process_eq(%struct.lpfc_hba*, %struct.lpfc_queue.2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
