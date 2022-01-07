; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_io_request_construct_basic_ssp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_io_request_construct_basic_ssp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32, i32 }
%struct.sas_task = type { i32, i32 }

@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SCI_REQ_CONSTRUCTED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_request*)* @sci_io_request_construct_basic_ssp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_io_request_construct_basic_ssp(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.sas_task*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %4 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %5 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %4)
  store %struct.sas_task* %5, %struct.sas_task** %3, align 8
  %6 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %7 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %8 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %10 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %11 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %14 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @scu_ssp_io_request_construct_task_context(%struct.isci_request* %9, i32 %12, i32 %15)
  %17 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %18 = call i32 @sci_io_request_build_ssp_command_iu(%struct.isci_request* %17)
  %19 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %20 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %19, i32 0, i32 0
  %21 = load i32, i32* @SCI_REQ_CONSTRUCTED, align 4
  %22 = call i32 @sci_change_state(i32* %20, i32 %21)
  %23 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %23
}

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

declare dso_local i32 @scu_ssp_io_request_construct_task_context(%struct.isci_request*, i32, i32) #1

declare dso_local i32 @sci_io_request_build_ssp_command_iu(%struct.isci_request*) #1

declare dso_local i32 @sci_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
