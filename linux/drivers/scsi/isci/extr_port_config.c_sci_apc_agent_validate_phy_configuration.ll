; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_validate_phy_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_validate_phy_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32* }
%struct.sci_port_configuration_agent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sci_sas_address = type { i32 }

@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, %struct.sci_port_configuration_agent*)* @sci_apc_agent_validate_phy_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_apc_agent_validate_phy_configuration(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.sci_port_configuration_agent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sci_sas_address, align 4
  %8 = alloca %struct.sci_sas_address, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %70, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @SCI_MAX_PHYS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %16 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @sci_phy_get_sas_address(i32* %19, %struct.sci_sas_address* %7)
  br label %21

21:                                               ; preds = %69, %13
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* @SCI_MAX_PHYS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %21
  %27 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %28 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @sci_phy_get_sas_address(i32* %31, %struct.sci_sas_address* %8)
  %33 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @sci_sas_address_compare(i32 %34, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %26
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %42 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %40, i64* %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %49 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %47, i64* %53, align 8
  br label %69

54:                                               ; preds = %26
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %57 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %55, i64* %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %64 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 %62, i64* %68, align 8
  br label %70

69:                                               ; preds = %39
  br label %21

70:                                               ; preds = %54, %21
  br label %9

71:                                               ; preds = %9
  %72 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %73 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %4, align 8
  %74 = call i32 @sci_port_configuration_agent_validate_ports(%struct.isci_host* %72, %struct.sci_port_configuration_agent* %73)
  ret i32 %74
}

declare dso_local i32 @sci_phy_get_sas_address(i32*, %struct.sci_sas_address*) #1

declare dso_local i64 @sci_sas_address_compare(i32, i32) #1

declare dso_local i32 @sci_port_configuration_agent_validate_ports(%struct.isci_host*, %struct.sci_port_configuration_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
