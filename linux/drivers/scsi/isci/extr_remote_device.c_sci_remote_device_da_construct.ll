; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_da_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_da_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }
%struct.isci_remote_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sci_port_properties = type { i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_port*, %struct.isci_remote_device*)* @sci_remote_device_da_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_remote_device_da_construct(%struct.isci_port* %0, %struct.isci_remote_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_remote_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sci_port_properties, align 4
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %5, align 8
  %8 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %9 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %10 = call i32 @sci_remote_device_construct(%struct.isci_port* %8, %struct.isci_remote_device* %9)
  %11 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %12 = call i32 @sci_port_get_properties(%struct.isci_port* %11, %struct.sci_port_properties* %7)
  %13 = getelementptr inbounds %struct.sci_port_properties, %struct.sci_port_properties* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hweight32(i32 %14)
  %16 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %17 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %19 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %22 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %23 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @sci_controller_allocate_remote_node_context(i32 %20, %struct.isci_remote_device* %21, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SCI_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %33 = call i32 @sci_port_get_max_allowed_speed(%struct.isci_port* %32)
  %34 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %35 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @sci_remote_device_construct(%struct.isci_port*, %struct.isci_remote_device*) #1

declare dso_local i32 @sci_port_get_properties(%struct.isci_port*, %struct.sci_port_properties*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @sci_controller_allocate_remote_node_context(i32, %struct.isci_remote_device*, i32*) #1

declare dso_local i32 @sci_port_get_max_allowed_speed(%struct.isci_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
