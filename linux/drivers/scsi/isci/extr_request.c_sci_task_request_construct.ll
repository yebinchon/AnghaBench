; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_task_request_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_task_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.isci_remote_device = type { %struct.domain_device* }
%struct.domain_device = type { i64 }
%struct.isci_request = type { i32, i32, i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@IREQ_TMF = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SCI_FAILURE_UNSUPPORTED_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_task_request_construct(%struct.isci_host* %0, %struct.isci_remote_device* %1, i32 %2, %struct.isci_request* %3) #0 {
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.isci_remote_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isci_request*, align 8
  %9 = alloca %struct.domain_device*, align 8
  %10 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.isci_request* %3, %struct.isci_request** %8, align 8
  %11 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %12 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %11, i32 0, i32 0
  %13 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  store %struct.domain_device* %13, %struct.domain_device** %9, align 8
  %14 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %16 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %17 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  %18 = call i32 @sci_general_request_construct(%struct.isci_host* %15, %struct.isci_remote_device* %16, %struct.isci_request* %17)
  %19 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SAS_END_DEVICE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  %26 = call i64 @dev_is_sata(%struct.domain_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24, %4
  %29 = load i32, i32* @IREQ_TMF, align 4
  %30 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  %31 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %30, i32 0, i32 2
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  %34 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memset(i32 %35, i32 0, i32 4)
  %37 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  %38 = call i64 @dev_is_sata(%struct.domain_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %42 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  %43 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %28
  %45 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %46 = load %struct.isci_request*, %struct.isci_request** %8, align 8
  %47 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %51

49:                                               ; preds = %24
  %50 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PROTOCOL, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @sci_general_request_construct(%struct.isci_host*, %struct.isci_remote_device*, %struct.isci_request*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
