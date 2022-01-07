; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_ea_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_ea_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }
%struct.isci_remote_device = type { i32, i32, %struct.TYPE_2__, %struct.domain_device* }
%struct.TYPE_2__ = type { i32 }
%struct.domain_device = type { i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_port*, %struct.isci_remote_device*)* @sci_remote_device_ea_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_remote_device_ea_construct(%struct.isci_port* %0, %struct.isci_remote_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_remote_device*, align 8
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32, align 4
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %5, align 8
  %8 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %9 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %8, i32 0, i32 3
  %10 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  store %struct.domain_device* %10, %struct.domain_device** %6, align 8
  %11 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %12 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %13 = call i32 @sci_remote_device_construct(%struct.isci_port* %11, %struct.isci_remote_device* %12)
  %14 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %15 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %18 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %19 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @sci_controller_allocate_remote_node_context(i32 %16, %struct.isci_remote_device* %17, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SCI_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* @u16, align 4
  %29 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %30 = call i32 @sci_port_get_max_allowed_speed(%struct.isci_port* %29)
  %31 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %32 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min_t(i32 %28, i32 %30, i32 %33)
  %35 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %36 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %38 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %27, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @sci_remote_device_construct(%struct.isci_port*, %struct.isci_remote_device*) #1

declare dso_local i32 @sci_controller_allocate_remote_node_context(i32, %struct.isci_remote_device*, i32*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @sci_port_get_max_allowed_speed(%struct.isci_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
