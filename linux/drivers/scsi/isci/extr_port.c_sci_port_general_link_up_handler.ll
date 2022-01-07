; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_general_link_up_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_general_link_up_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64, %struct.sci_base_state_machine }
%struct.sci_base_state_machine = type { i64 }
%struct.isci_phy = type { i32 }
%struct.sci_sas_address = type { i64, i64 }

@SCI_PORT_RESETTING = common dso_local global i64 0, align 8
@SCI_PORT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, %struct.isci_phy*, i32)* @sci_port_general_link_up_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_general_link_up_handler(%struct.isci_port* %0, %struct.isci_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sci_sas_address, align 8
  %8 = alloca %struct.sci_sas_address, align 8
  %9 = alloca %struct.sci_base_state_machine*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %11 = call i32 @sci_port_get_attached_sas_address(%struct.isci_port* %10, %struct.sci_sas_address* %7)
  %12 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %13 = call i32 @sci_phy_get_attached_sas_address(%struct.isci_phy* %12, %struct.sci_sas_address* %8)
  %14 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %8, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %8, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %7, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %27 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25, %19
  %31 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %32 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %31, i32 0, i32 1
  store %struct.sci_base_state_machine* %32, %struct.sci_base_state_machine** %9, align 8
  %33 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %34 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @sci_port_activate_phy(%struct.isci_port* %33, %struct.isci_phy* %34, i32 %35)
  %37 = load %struct.sci_base_state_machine*, %struct.sci_base_state_machine** %9, align 8
  %38 = getelementptr inbounds %struct.sci_base_state_machine, %struct.sci_base_state_machine* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCI_PORT_RESETTING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %44 = load i32, i32* @SCI_PORT_READY, align 4
  %45 = call i32 @port_state_machine_change(%struct.isci_port* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %30
  br label %51

47:                                               ; preds = %25
  %48 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %49 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %50 = call i32 @sci_port_invalid_link_up(%struct.isci_port* %48, %struct.isci_phy* %49)
  br label %51

51:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @sci_port_get_attached_sas_address(%struct.isci_port*, %struct.sci_sas_address*) #1

declare dso_local i32 @sci_phy_get_attached_sas_address(%struct.isci_phy*, %struct.sci_sas_address*) #1

declare dso_local i32 @sci_port_activate_phy(%struct.isci_port*, %struct.isci_phy*, i32) #1

declare dso_local i32 @port_state_machine_change(%struct.isci_port*, i32) #1

declare dso_local i32 @sci_port_invalid_link_up(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
