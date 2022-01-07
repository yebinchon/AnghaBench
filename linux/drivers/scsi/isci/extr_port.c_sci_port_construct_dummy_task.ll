; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_construct_dummy_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_construct_dummy_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, i32, %struct.isci_host* }
%struct.isci_host = type { %struct.scu_task_context* }
%struct.scu_task_context = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@SCU_TASK_CONTEXT_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SCU_TASK_CONTEXT_VALID = common dso_local global i32 0, align 4
@SCU_TASK_CONTEXT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, i32)* @sci_port_construct_dummy_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_construct_dummy_task(%struct.isci_port* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.scu_task_context*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %8 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %7, i32 0, i32 2
  %9 = load %struct.isci_host*, %struct.isci_host** %8, align 8
  store %struct.isci_host* %9, %struct.isci_host** %5, align 8
  %10 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 0
  %12 = load %struct.scu_task_context*, %struct.scu_task_context** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ISCI_TAG_TCI(i32 %13)
  %15 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %12, i64 %14
  store %struct.scu_task_context* %15, %struct.scu_task_context** %6, align 8
  %16 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %17 = call i32 @memset(%struct.scu_task_context* %16, i32 0, i32 48)
  %18 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %19 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %21 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %23 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %26 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @SCU_TASK_CONTEXT_PROTOCOL_SSP, align 4
  %28 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %29 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @ISCI_TAG_TCI(i32 %30)
  %32 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %33 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @SCU_TASK_CONTEXT_VALID, align 4
  %35 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %36 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @SCU_TASK_CONTEXT_TYPE, align 4
  %38 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %39 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %41 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %44 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %46 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %45, i32 0, i32 3
  store i32 1, i32* %46, align 8
  %47 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %48 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %47, i32 0, i32 4
  store i32 1, i32* %48, align 4
  ret void
}

declare dso_local i64 @ISCI_TAG_TCI(i32) #1

declare dso_local i32 @memset(%struct.scu_task_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
