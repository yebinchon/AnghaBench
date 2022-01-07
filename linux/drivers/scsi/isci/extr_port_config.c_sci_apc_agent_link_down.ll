; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.sci_port_configuration_agent = type { i32, i32 }
%struct.isci_port = type { i32 }
%struct.isci_phy = type { i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*, %struct.sci_port_configuration_agent*, %struct.isci_port*, %struct.isci_phy*)* @sci_apc_agent_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_apc_agent_link_down(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1, %struct.isci_port* %2, %struct.isci_phy* %3) #0 {
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
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %16 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %20 = icmp ne %struct.isci_port* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %50

22:                                               ; preds = %4
  %23 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %24 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %27 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %22
  %33 = load %struct.isci_port*, %struct.isci_port** %7, align 8
  %34 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %35 = call i32 @sci_port_remove_phy(%struct.isci_port* %33, %struct.isci_phy* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SCI_SUCCESS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.isci_phy*, %struct.isci_phy** %8, align 8
  %41 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %46 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39, %32
  br label %50

50:                                               ; preds = %21, %49, %22
  ret void
}

declare dso_local i32 @sci_port_remove_phy(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
