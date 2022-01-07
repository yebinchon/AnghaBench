; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.bsg_job_data* }
%struct.TYPE_7__ = type { i32 }
%struct.bsg_job_data = type { %struct.TYPE_10__, %struct.bsg_job* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.bsg_job = type { %struct.TYPE_8__, %struct.fc_bsg_reply*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.fc_bsg_reply = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_11__*)* @lpfc_bsg_issue_mbox_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_issue_mbox_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.bsg_job_data*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  %7 = alloca %struct.bsg_job*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  store %struct.bsg_job_data* %14, %struct.bsg_job_data** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* %17, i32** %10, align 8
  %18 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %19 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @memcpy(i32* %24, i32* %25, i32 4)
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 1
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %32 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %31, i32 0, i32 1
  %33 = load %struct.bsg_job*, %struct.bsg_job** %32, align 8
  store %struct.bsg_job* %33, %struct.bsg_job** %7, align 8
  %34 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %35 = icmp ne %struct.bsg_job* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %38 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 1
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %45 = icmp ne %struct.bsg_job* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %39
  %47 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %48 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %47, i32 0, i32 1
  %49 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %48, align 8
  store %struct.fc_bsg_reply* %49, %struct.fc_bsg_reply** %6, align 8
  %50 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %51 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  %54 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %55 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %59 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @sg_copy_from_buffer(i32 %57, i32 %61, i32* %62, i32 %63)
  %65 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %66 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %46, %39
  %68 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %69 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %68, i32 0, i32 1
  store %struct.bsg_job* null, %struct.bsg_job** %69, align 8
  %70 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %71 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mempool_free(i32 %74, i32 %77)
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %81 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %79, i32 %84)
  %86 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %87 = call i32 @kfree(%struct.bsg_job_data* %86)
  %88 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %89 = icmp ne %struct.bsg_job* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %67
  %91 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %92 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %94 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %95 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @bsg_job_done(%struct.bsg_job* %93, i64 %96, i32 %99)
  br label %101

101:                                              ; preds = %90, %67
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @mempool_free(i32, i32) #1

declare dso_local i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
