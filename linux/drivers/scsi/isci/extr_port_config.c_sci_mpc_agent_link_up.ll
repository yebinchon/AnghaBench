; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_mpc_agent_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_mpc_agent_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.sci_port_configuration_agent = type { i32, i32 }
%struct.isci_port = type { i32 }
%struct.isci_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*, %struct.sci_port_configuration_agent*, %struct.isci_port*, %struct.isci_phy*)* @sci_mpc_agent_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_mpc_agent_link_up(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1, %struct.isci_port* %2, %struct.isci_phy* %3) #0 {
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.sci_port_configuration_agent*, align 8
  %7 = alloca %struct.isci_port*, align 8
  %8 = alloca %struct.isci_phy*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %6, align 8
  store %struct.isci_port* %2, %struct.isci_port** %7, align 8
  store %struct.isci_phy* %3, %struct.isci_phy** %8, align 8
  %9 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %10 = icmp ne %struct.isci_port* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %42

12:                                               ; preds = %4
  %13 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %14 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %18 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %22 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %23 = call i32 @sci_port_link_up(%struct.isci_port* %21, %struct.isci_phy* %22)
  %24 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %25 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %28 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %12
  %34 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %35 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %39 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %11, %33, %12
  ret void
}

declare dso_local i32 @sci_port_link_up(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
