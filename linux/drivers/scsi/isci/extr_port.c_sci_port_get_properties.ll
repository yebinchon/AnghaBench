; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64 }
%struct.sci_port_properties = type { i64, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SCIC_SDS_DUMMY_PORT = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_PORT = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_port_get_properties(%struct.isci_port* %0, %struct.sci_port_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.sci_port_properties*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.sci_port_properties* %1, %struct.sci_port_properties** %5, align 8
  %6 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %7 = icmp ne %struct.isci_port* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %10 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SCIC_SDS_DUMMY_PORT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %2
  %15 = load i32, i32* @SCI_FAILURE_INVALID_PORT, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %8
  %17 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %18 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sci_port_properties*, %struct.sci_port_properties** %5, align 8
  %21 = getelementptr inbounds %struct.sci_port_properties, %struct.sci_port_properties* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %23 = call i32 @sci_port_get_phys(%struct.isci_port* %22)
  %24 = load %struct.sci_port_properties*, %struct.sci_port_properties** %5, align 8
  %25 = getelementptr inbounds %struct.sci_port_properties, %struct.sci_port_properties* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %27 = load %struct.sci_port_properties*, %struct.sci_port_properties** %5, align 8
  %28 = getelementptr inbounds %struct.sci_port_properties, %struct.sci_port_properties* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @sci_port_get_sas_address(%struct.isci_port* %26, i32* %29)
  %31 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %32 = load %struct.sci_port_properties*, %struct.sci_port_properties** %5, align 8
  %33 = getelementptr inbounds %struct.sci_port_properties, %struct.sci_port_properties* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @sci_port_get_protocols(%struct.isci_port* %31, i32* %34)
  %36 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %37 = load %struct.sci_port_properties*, %struct.sci_port_properties** %5, align 8
  %38 = getelementptr inbounds %struct.sci_port_properties, %struct.sci_port_properties* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @sci_port_get_attached_sas_address(%struct.isci_port* %36, i32* %39)
  %41 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %16, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @sci_port_get_phys(%struct.isci_port*) #1

declare dso_local i32 @sci_port_get_sas_address(%struct.isci_port*, i32*) #1

declare dso_local i32 @sci_port_get_protocols(%struct.isci_port*, i32*) #1

declare dso_local i32 @sci_port_get_attached_sas_address(%struct.isci_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
