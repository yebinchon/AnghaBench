; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_mbox_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_mbox_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32*, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.dfc_mbox_req = type { i64, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"2737 Mix-and-match backward compatibility between MBOX_REQ old size:%d and new request size:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_mbox_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_mbox_cmd(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.dfc_mbox_req*, align 8
  %8 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %10 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %9)
  %11 = call %struct.lpfc_vport* @shost_priv(i32 %10)
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %3, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 3
  %14 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %13, align 8
  store %struct.fc_bsg_request* %14, %struct.fc_bsg_request** %4, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 2
  %17 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %16, align 8
  store %struct.fc_bsg_reply* %17, %struct.fc_bsg_reply** %5, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %6, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %22 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %24 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 24
  br i1 %27, label %28, label %49

28:                                               ; preds = %1
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load i32, i32* @LOG_LIBDFC, align 4
  %32 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %33 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %37, i32 16)
  %39 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.dfc_mbox_req*
  store %struct.dfc_mbox_req* %44, %struct.dfc_mbox_req** %7, align 8
  %45 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %7, align 8
  %46 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %7, align 8
  %48 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %28, %1
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %51 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %53 = call i32 @lpfc_bsg_issue_mbox(%struct.lpfc_hba* %50, %struct.bsg_job* %51, %struct.lpfc_vport* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %58 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %60 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %62 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %63 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %66 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @bsg_job_done(%struct.bsg_job* %61, i32 %64, i64 %67)
  br label %80

69:                                               ; preds = %49
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %76 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %78 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %73, %72
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local %struct.lpfc_vport* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_bsg_issue_mbox(%struct.lpfc_hba*, %struct.bsg_job*, %struct.lpfc_vport*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
