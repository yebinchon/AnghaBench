; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_task_request_construct_ssp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_task_request_construct_ssp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32 }

@SCI_REQ_CONSTRUCTED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_task_request_construct_ssp(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %3 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %4 = call i32 @scu_ssp_task_request_construct_task_context(%struct.isci_request* %3)
  %5 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %6 = call i32 @sci_task_request_build_ssp_task_iu(%struct.isci_request* %5)
  %7 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %8 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %7, i32 0, i32 0
  %9 = load i32, i32* @SCI_REQ_CONSTRUCTED, align 4
  %10 = call i32 @sci_change_state(i32* %8, i32 %9)
  %11 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %11
}

declare dso_local i32 @scu_ssp_task_request_construct_task_context(%struct.isci_request*) #1

declare dso_local i32 @sci_task_request_build_ssp_task_iu(%struct.isci_request*) #1

declare dso_local i32 @sci_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
