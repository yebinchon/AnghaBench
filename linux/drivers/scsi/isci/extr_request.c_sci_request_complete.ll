; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_request_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_2__, i32, %struct.isci_host* }
%struct.TYPE_2__ = type { i32 }
%struct.isci_host = type { i32 }

@SCI_REQ_COMPLETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"isci: request completion from wrong state (%s)\0A\00", align 1
@SCI_FAILURE_INVALID_STATE = common dso_local global i32 0, align 4
@SCU_INVALID_FRAME_INDEX = common dso_local global i32 0, align 4
@SCI_REQ_FINAL = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_request_complete(%struct.isci_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_host*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %3, align 8
  %6 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %7 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %6, i32 0, i32 2
  %8 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  store %struct.isci_host* %8, %struct.isci_host** %5, align 8
  %9 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %10 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SCI_REQ_COMPLETED, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @req_state_name(i32 %17)
  %19 = call i64 @WARN_ONCE(i32 %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @SCI_FAILURE_INVALID_STATE, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %25 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SCU_INVALID_FRAME_INDEX, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %31 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %32 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sci_controller_release_frame(%struct.isci_host* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %37 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %36, i32 0, i32 0
  %38 = load i32, i32* @SCI_REQ_FINAL, align 4
  %39 = call i32 @sci_change_state(%struct.TYPE_2__* %37, i32 %38)
  %40 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @req_state_name(i32) #1

declare dso_local i32 @sci_controller_release_frame(%struct.isci_host*, i32) #1

declare dso_local i32 @sci_change_state(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
