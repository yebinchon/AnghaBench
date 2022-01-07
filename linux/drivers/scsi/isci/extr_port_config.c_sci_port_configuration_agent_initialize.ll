; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_port_configuration_agent_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_port_configuration_agent_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sci_port_configuration_agent = type { i32, i32, i32 }

@SCIC_PORT_MANUAL_CONFIGURATION_MODE = common dso_local global i32 0, align 4
@sci_mpc_agent_link_up = common dso_local global i32 0, align 4
@sci_mpc_agent_link_down = common dso_local global i32 0, align 4
@mpc_agent_timeout = common dso_local global i32 0, align 4
@sci_apc_agent_link_up = common dso_local global i32 0, align 4
@sci_apc_agent_link_down = common dso_local global i32 0, align 4
@apc_agent_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_port_configuration_agent_initialize(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.sci_port_configuration_agent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %4, align 8
  %7 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %8 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SCIC_PORT_MANUAL_CONFIGURATION_MODE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %17 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %18 = call i32 @sci_mpc_agent_validate_phy_configuration(%struct.isci_host* %16, %struct.sci_port_configuration_agent* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @sci_mpc_agent_link_up, align 4
  %20 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %21 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @sci_mpc_agent_link_down, align 4
  %23 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %24 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %26 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %25, i32 0, i32 0
  %27 = load i32, i32* @mpc_agent_timeout, align 4
  %28 = call i32 @sci_init_timer(i32* %26, i32 %27)
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %31 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %32 = call i32 @sci_apc_agent_validate_phy_configuration(%struct.isci_host* %30, %struct.sci_port_configuration_agent* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @sci_apc_agent_link_up, align 4
  %34 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %35 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @sci_apc_agent_link_down, align 4
  %37 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %38 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %40 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %39, i32 0, i32 0
  %41 = load i32, i32* @apc_agent_timeout, align 4
  %42 = call i32 @sci_init_timer(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %29, %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @sci_mpc_agent_validate_phy_configuration(%struct.isci_host*, %struct.sci_port_configuration_agent*) #1

declare dso_local i32 @sci_init_timer(i32*, i32) #1

declare dso_local i32 @sci_apc_agent_validate_phy_configuration(%struct.isci_host*, %struct.sci_port_configuration_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
