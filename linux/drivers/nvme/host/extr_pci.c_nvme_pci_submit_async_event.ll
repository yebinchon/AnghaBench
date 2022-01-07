; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_submit_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_submit_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_dev = type { %struct.nvme_queue* }
%struct.nvme_queue = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@nvme_admin_async_event = common dso_local global i32 0, align 4
@NVME_AQ_BLK_MQ_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_pci_submit_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_pci_submit_async_event(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca %struct.nvme_queue*, align 8
  %5 = alloca %struct.nvme_command, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %7 = call %struct.nvme_dev* @to_nvme_dev(%struct.nvme_ctrl* %6)
  store %struct.nvme_dev* %7, %struct.nvme_dev** %3, align 8
  %8 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %8, i32 0, i32 0
  %10 = load %struct.nvme_queue*, %struct.nvme_queue** %9, align 8
  %11 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %10, i64 0
  store %struct.nvme_queue* %11, %struct.nvme_queue** %4, align 8
  %12 = call i32 @memset(%struct.nvme_command* %5, i32 0, i32 8)
  %13 = load i32, i32* @nvme_admin_async_event, align 4
  %14 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @NVME_AQ_BLK_MQ_DEPTH, align 4
  %17 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %20 = call i32 @nvme_submit_cmd(%struct.nvme_queue* %19, %struct.nvme_command* %5, i32 1)
  ret void
}

declare dso_local %struct.nvme_dev* @to_nvme_dev(%struct.nvme_ctrl*) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @nvme_submit_cmd(%struct.nvme_queue*, %struct.nvme_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
