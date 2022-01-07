; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_im_bsg_request(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_request*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %6 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %7 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %6, i32 0, i32 1
  %8 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %7, align 8
  store %struct.fc_bsg_request* %8, %struct.fc_bsg_request** %3, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %10 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %9, i32 0, i32 0
  %11 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %10, align 8
  store %struct.fc_bsg_reply* %11, %struct.fc_bsg_reply** %4, align 8
  %12 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %3, align 8
  %14 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 131, label %19
    i32 128, label %19
    i32 132, label %19
    i32 129, label %19
  ]

16:                                               ; preds = %1
  %17 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %18 = call i32 @bfad_im_bsg_vendor_request(%struct.bsg_job* %17)
  store i32 %18, i32* %5, align 4
  br label %29

19:                                               ; preds = %1, %1, %1, %1
  %20 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %21 = call i32 @bfad_im_bsg_els_ct_request(%struct.bsg_job* %20)
  store i32 %21, i32* %5, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %26 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %28 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %19, %16
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @bfad_im_bsg_vendor_request(%struct.bsg_job*) #1

declare dso_local i32 @bfad_im_bsg_els_ct_request(%struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
