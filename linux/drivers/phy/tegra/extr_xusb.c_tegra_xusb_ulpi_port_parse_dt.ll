; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_ulpi_port_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_ulpi_port_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_ulpi_port = type { i32, %struct.tegra_xusb_port }
%struct.tegra_xusb_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"nvidia,internal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_ulpi_port*)* @tegra_xusb_ulpi_port_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_ulpi_port_parse_dt(%struct.tegra_xusb_ulpi_port* %0) #0 {
  %2 = alloca %struct.tegra_xusb_ulpi_port*, align 8
  %3 = alloca %struct.tegra_xusb_port*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.tegra_xusb_ulpi_port* %0, %struct.tegra_xusb_ulpi_port** %2, align 8
  %5 = load %struct.tegra_xusb_ulpi_port*, %struct.tegra_xusb_ulpi_port** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_xusb_ulpi_port, %struct.tegra_xusb_ulpi_port* %5, i32 0, i32 1
  store %struct.tegra_xusb_port* %6, %struct.tegra_xusb_port** %3, align 8
  %7 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_property_read_bool(%struct.device_node* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.tegra_xusb_ulpi_port*, %struct.tegra_xusb_ulpi_port** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_ulpi_port, %struct.tegra_xusb_ulpi_port* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  ret i32 0
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
