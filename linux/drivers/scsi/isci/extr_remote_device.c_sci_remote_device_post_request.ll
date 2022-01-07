; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_post_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_post_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { %struct.TYPE_2__, %struct.isci_port* }
%struct.TYPE_2__ = type { i32 }
%struct.isci_port = type { i32, i32 }

@ISCI_PEG = common dso_local global i32 0, align 4
@SCU_CONTEXT_COMMAND_PROTOCOL_ENGINE_GROUP_SHIFT = common dso_local global i32 0, align 4
@SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_remote_device_post_request(%struct.isci_remote_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_port*, align 8
  %6 = alloca i32, align 4
  store %struct.isci_remote_device* %0, %struct.isci_remote_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %8 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %7, i32 0, i32 1
  %9 = load %struct.isci_port*, %struct.isci_port** %8, align 8
  store %struct.isci_port* %9, %struct.isci_port** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ISCI_PEG, align 4
  %12 = load i32, i32* @SCU_CONTEXT_COMMAND_PROTOCOL_ENGINE_GROUP_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %10, %13
  %15 = load %struct.isci_port*, %struct.isci_port** %5, align 8
  %16 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %22 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %20, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.isci_port*, %struct.isci_port** %5, align 8
  %27 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sci_controller_post_request(i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @sci_controller_post_request(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
