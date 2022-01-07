; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_atapi_d2h_reg_frame_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_atapi_d2h_reg_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sas_task = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@SCI_FAILURE_IO_RESPONSE_VALID = common dso_local global i32 0, align 4
@SCU_TASK_DONE_CHECK_RESPONSE = common dso_local global i32 0, align 4
@SCU_TASK_DONE_GOOD = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@SCI_REQ_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_request*, i32)* @atapi_d2h_reg_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atapi_d2h_reg_frame_handler(%struct.isci_request* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca i32, align 4
  store %struct.isci_request* %0, %struct.isci_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %8 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %7)
  store %struct.sas_task* %8, %struct.sas_task** %5, align 8
  %9 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @process_unsolicited_fis(%struct.isci_request* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SCI_SUCCESS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %17 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATA_ERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @SCI_FAILURE_IO_RESPONSE_VALID, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %15
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @SCI_FAILURE_IO_RESPONSE_VALID, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SCI_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @SCU_TASK_DONE_CHECK_RESPONSE, align 4
  %35 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %36 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %39 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %47

40:                                               ; preds = %29
  %41 = load i32, i32* @SCU_TASK_DONE_GOOD, align 4
  %42 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %43 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SCI_SUCCESS, align 4
  %45 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %46 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %49 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DMA_NONE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %55 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %54, i32 0, i32 1
  %56 = load i32, i32* @SCI_REQ_COMPLETED, align 4
  %57 = call i32 @sci_change_state(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

declare dso_local i32 @process_unsolicited_fis(%struct.isci_request*, i32) #1

declare dso_local i32 @sci_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
