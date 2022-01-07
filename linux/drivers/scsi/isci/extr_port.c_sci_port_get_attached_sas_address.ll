; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_attached_sas_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_attached_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }
%struct.sci_sas_address = type { i64, i64 }
%struct.isci_phy = type { i64, i64 }

@SAS_PROTOCOL_SATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_port_get_attached_sas_address(%struct.isci_port* %0, %struct.sci_sas_address* %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.sci_sas_address*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store %struct.sci_sas_address* %1, %struct.sci_sas_address** %4, align 8
  %6 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %7 = call %struct.isci_phy* @sci_port_get_a_connected_phy(%struct.isci_port* %6)
  store %struct.isci_phy* %7, %struct.isci_phy** %5, align 8
  %8 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %9 = icmp ne %struct.isci_phy* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %12 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SAS_PROTOCOL_SATA, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %18 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %19 = call i32 @sci_phy_get_attached_sas_address(%struct.isci_phy* %17, %struct.sci_sas_address* %18)
  br label %31

20:                                               ; preds = %10
  %21 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %22 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %23 = call i32 @sci_phy_get_sas_address(%struct.isci_phy* %21, %struct.sci_sas_address* %22)
  %24 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %25 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %28 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %20, %16
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %34 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.sci_sas_address*, %struct.sci_sas_address** %4, align 8
  %36 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %31
  ret void
}

declare dso_local %struct.isci_phy* @sci_port_get_a_connected_phy(%struct.isci_port*) #1

declare dso_local i32 @sci_phy_get_attached_sas_address(%struct.isci_phy*, %struct.sci_sas_address*) #1

declare dso_local i32 @sci_phy_get_sas_address(%struct.isci_phy*, %struct.sci_sas_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
