; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_bsg_request(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_request*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %7 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %8 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %7, i32 0, i32 1
  %9 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %8, align 8
  store %struct.fc_bsg_request* %9, %struct.fc_bsg_request** %3, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %11 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %10, i32 0, i32 0
  %12 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %11, align 8
  store %struct.fc_bsg_reply* %12, %struct.fc_bsg_reply** %4, align 8
  %13 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %3, align 8
  %14 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %26 [
    i32 130, label %17
    i32 128, label %20
    i32 129, label %23
  ]

17:                                               ; preds = %1
  %18 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %19 = call i32 @lpfc_bsg_hst_vendor(%struct.bsg_job* %18)
  store i32 %19, i32* %6, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %22 = call i32 @lpfc_bsg_rport_els(%struct.bsg_job* %21)
  store i32 %22, i32* %6, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %25 = call i32 @lpfc_bsg_send_mgmt_cmd(%struct.bsg_job* %24)
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %30 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %23, %20, %17
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @lpfc_bsg_hst_vendor(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_rport_els(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_send_mgmt_cmd(%struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
