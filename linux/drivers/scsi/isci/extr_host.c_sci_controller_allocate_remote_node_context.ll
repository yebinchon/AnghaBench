; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_allocate_remote_node_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_allocate_remote_node_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.isci_remote_device**, i32 }
%struct.isci_remote_device = type { i32 }

@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_controller_allocate_remote_node_context(%struct.isci_host* %0, %struct.isci_remote_device* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.isci_remote_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %11 = call i32 @sci_remote_device_node_count(%struct.isci_remote_device* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 1
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @sci_remote_node_table_allocate_remote_node(i32* %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %21 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %22 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %21, i32 0, i32 0
  %23 = load %struct.isci_remote_device**, %struct.isci_remote_device*** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.isci_remote_device*, %struct.isci_remote_device** %23, i64 %24
  store %struct.isci_remote_device* %20, %struct.isci_remote_device** %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @SCI_FAILURE_INSUFFICIENT_RESOURCES, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @sci_remote_device_node_count(%struct.isci_remote_device*) #1

declare dso_local i64 @sci_remote_node_table_allocate_remote_node(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
