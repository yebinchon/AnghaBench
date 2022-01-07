; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_read_mbox_ext_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_read_mbox_ext_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.bsg_job = type { %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32 }

@MBXERR_ERROR = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"2939 SLI_CONFIG ext-buffer rd mailbox command complete, ctxState:x%x, mbxStatus:x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_11__*)* @lpfc_bsg_issue_read_mbox_ext_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_issue_read_mbox_ext_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call %struct.bsg_job* @lpfc_bsg_issue_mbox_ext_handle_job(%struct.lpfc_hba* %7, %struct.TYPE_11__* %8)
  store %struct.bsg_job* %9, %struct.bsg_job** %5, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %11 = icmp ne %struct.bsg_job* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @MBXERR_ERROR, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 %13, i64* %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = load i32, i32* @KERN_INFO, align 4
  %21 = load i32, i32* @LOG_LIBDFC, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %18
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %18
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = call i32 @lpfc_bsg_mbox_ext_session_reset(%struct.lpfc_hba* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mempool_free(%struct.TYPE_11__* %48, i32 %51)
  %53 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %54 = icmp ne %struct.bsg_job* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %57 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %56, i32 0, i32 0
  %58 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %57, align 8
  store %struct.fc_bsg_reply* %58, %struct.fc_bsg_reply** %6, align 8
  %59 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %60 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %64 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bsg_job_done(%struct.bsg_job* %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %55, %47
  ret void
}

declare dso_local %struct.bsg_job* @lpfc_bsg_issue_mbox_ext_handle_job(%struct.lpfc_hba*, %struct.TYPE_11__*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @lpfc_bsg_mbox_ext_session_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
