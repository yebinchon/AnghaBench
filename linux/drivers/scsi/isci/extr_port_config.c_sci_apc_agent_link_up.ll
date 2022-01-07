; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.sci_port_configuration_agent = type { i32 }
%struct.isci_port = type { i32 }
%struct.isci_phy = type { i32 }

@SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*, %struct.sci_port_configuration_agent*, %struct.isci_port*, %struct.isci_phy*)* @sci_apc_agent_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_apc_agent_link_up(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1, %struct.isci_port* %2, %struct.isci_phy* %3) #0 {
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.sci_port_configuration_agent*, align 8
  %7 = alloca %struct.isci_port*, align 8
  %8 = alloca %struct.isci_phy*, align 8
  %9 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %6, align 8
  store %struct.isci_port* %2, %struct.isci_port** %7, align 8
  store %struct.isci_phy* %3, %struct.isci_phy** %8, align 8
  %10 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %11 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %14 = icmp ne %struct.isci_port* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 1, %16
  %18 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %19 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %23 = load i32, i32* @SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION, align 4
  %24 = call i32 @sci_apc_agent_start_timer(%struct.sci_port_configuration_agent* %22, i32 %23)
  br label %35

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %29 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %33 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %34 = call i32 @sci_port_link_up(%struct.isci_port* %32, %struct.isci_phy* %33)
  br label %35

35:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @sci_apc_agent_start_timer(%struct.sci_port_configuration_agent*, i32) #1

declare dso_local i32 @sci_port_link_up(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
