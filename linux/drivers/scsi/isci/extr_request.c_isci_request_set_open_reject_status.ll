; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_isci_request_set_open_reject_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_isci_request_set_open_reject_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32 }
%struct.sas_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IREQ_COMPLETE_IN_TARGET = common dso_local global i32 0, align 4
@SAS_TASK_UNDELIVERED = common dso_local global i32 0, align 4
@SAS_OPEN_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*, %struct.sas_task*, i32*, i32*, i32)* @isci_request_set_open_reject_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_request_set_open_reject_status(%struct.isci_request* %0, %struct.sas_task* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.isci_request*, align 8
  %7 = alloca %struct.sas_task*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.isci_request* %0, %struct.isci_request** %6, align 8
  store %struct.sas_task* %1, %struct.sas_task** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @IREQ_COMPLETE_IN_TARGET, align 4
  %12 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %13 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %12, i32 0, i32 0
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load i32, i32* @SAS_TASK_UNDELIVERED, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SAS_OPEN_REJECT, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %21 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
