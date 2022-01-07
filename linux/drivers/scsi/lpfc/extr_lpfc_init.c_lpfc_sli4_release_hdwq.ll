; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_release_hdwq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_release_hdwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.lpfc_sli4_hdw_queue* }
%struct.TYPE_3__ = type { %struct.lpfc_queue* }
%struct.lpfc_queue = type { i32 }
%struct.lpfc_sli4_hdw_queue = type { %struct.lpfc_queue*, %struct.lpfc_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_release_hdwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_release_hdwq(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %8, align 8
  store %struct.lpfc_sli4_hdw_queue* %9, %struct.lpfc_sli4_hdw_queue** %3, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %17, i64 %18
  %20 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %19, i32 0, i32 1
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %20, align 8
  %22 = call i32 @lpfc_sli4_queue_free(%struct.lpfc_queue* %21)
  %23 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %23, i64 %24
  %26 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %25, i32 0, i32 0
  %27 = load %struct.lpfc_queue*, %struct.lpfc_queue** %26, align 8
  %28 = call i32 @lpfc_sli4_queue_free(%struct.lpfc_queue* %27)
  %29 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %29, i64 %30
  %32 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %31, i32 0, i32 1
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %32, align 8
  %33 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %33, i64 %34
  %36 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %35, i32 0, i32 0
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %36, align 8
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %16
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %48 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %48, i64 %49
  %51 = call i32 @lpfc_free_sgl_per_hdwq(%struct.lpfc_hba* %47, %struct.lpfc_sli4_hdw_queue* %50)
  br label %52

52:                                               ; preds = %46, %41, %16
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %54 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %54, i64 %55
  %57 = call i32 @lpfc_free_cmd_rsp_buf_per_hdwq(%struct.lpfc_hba* %53, %struct.lpfc_sli4_hdw_queue* %56)
  br label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %10

61:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.lpfc_queue*, %struct.lpfc_queue** %75, align 8
  store %struct.lpfc_queue* %76, %struct.lpfc_queue** %4, align 8
  %77 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %78 = call i32 @lpfc_sli4_queue_free(%struct.lpfc_queue* %77)
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %85, align 8
  br label %86

86:                                               ; preds = %68
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %62

89:                                               ; preds = %62
  ret void
}

declare dso_local i32 @lpfc_sli4_queue_free(%struct.lpfc_queue*) #1

declare dso_local i32 @lpfc_free_sgl_per_hdwq(%struct.lpfc_hba*, %struct.lpfc_sli4_hdw_queue*) #1

declare dso_local i32 @lpfc_free_cmd_rsp_buf_per_hdwq(%struct.lpfc_hba*, %struct.lpfc_sli4_hdw_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
