; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_destroy_dummy_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_destroy_dummy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, i32, %struct.isci_host* }
%struct.isci_host = type { i32 }

@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@SCU_DUMMY_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*)* @sci_port_destroy_dummy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_destroy_dummy_resources(%struct.isci_port* %0) #0 {
  %2 = alloca %struct.isci_port*, align 8
  %3 = alloca %struct.isci_host*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %2, align 8
  %4 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %5 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %4, i32 0, i32 2
  %6 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  store %struct.isci_host* %6, %struct.isci_host** %3, align 8
  %7 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %8 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %14 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %15 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @isci_free_tag(%struct.isci_host* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %20 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SCU_DUMMY_INDEX, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %26 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %25, i32 0, i32 0
  %27 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %28 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sci_remote_node_table_release_remote_node_index(i32* %26, i32 1, i32 %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i32, i32* @SCU_DUMMY_INDEX, align 4
  %33 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %34 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %36 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %37 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local i32 @isci_free_tag(%struct.isci_host*, i32) #1

declare dso_local i32 @sci_remote_node_table_release_remote_node_index(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
