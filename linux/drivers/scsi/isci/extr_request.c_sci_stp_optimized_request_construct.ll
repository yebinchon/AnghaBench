; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_stp_optimized_request_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_stp_optimized_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.scu_task_context* }
%struct.scu_task_context = type { i8*, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_DMA_OUT = common dso_local global i8* null, align 8
@SCU_TASK_TYPE_DMA_IN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*, i8*, i32, i32)* @sci_stp_optimized_request_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_stp_optimized_request_construct(%struct.isci_request* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.isci_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scu_task_context*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.isci_request*, %struct.isci_request** %5, align 8
  %11 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %10, i32 0, i32 0
  %12 = load %struct.scu_task_context*, %struct.scu_task_context** %11, align 8
  store %struct.scu_task_context* %12, %struct.scu_task_context** %9, align 8
  %13 = load %struct.isci_request*, %struct.isci_request** %5, align 8
  %14 = load %struct.scu_task_context*, %struct.scu_task_context** %9, align 8
  %15 = call i32 @scu_sata_request_construct_task_context(%struct.isci_request* %13, %struct.scu_task_context* %14)
  %16 = load %struct.isci_request*, %struct.isci_request** %5, align 8
  %17 = call i32 @sci_request_build_sgl(%struct.isci_request* %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.scu_task_context*, %struct.scu_task_context** %9, align 8
  %20 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** @SCU_TASK_TYPE_DMA_OUT, align 8
  %27 = load i8*, i8** @SCU_TASK_TYPE_DMA_IN, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = getelementptr i8, i8* %25, i64 %30
  %32 = load %struct.scu_task_context*, %struct.scu_task_context** %9, align 8
  %33 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %38

34:                                               ; preds = %4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.scu_task_context*, %struct.scu_task_context** %9, align 8
  %37 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %24
  ret void
}

declare dso_local i32 @scu_sata_request_construct_task_context(%struct.isci_request*, %struct.scu_task_context*) #1

declare dso_local i32 @sci_request_build_sgl(%struct.isci_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
