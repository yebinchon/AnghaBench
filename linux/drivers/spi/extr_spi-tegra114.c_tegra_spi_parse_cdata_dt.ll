; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_parse_cdata_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_parse_cdata_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_client_data = type { i32, i32 }
%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"device node not found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"nvidia,tx-clk-tap-delay\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"nvidia,rx-clk-tap-delay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_spi_client_data* (%struct.spi_device*)* @tegra_spi_parse_cdata_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_spi_client_data* @tegra_spi_parse_cdata_dt(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.tegra_spi_client_data*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tegra_spi_client_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(%struct.TYPE_2__* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.tegra_spi_client_data* null, %struct.tegra_spi_client_data** %2, align 8
  br label %32

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tegra_spi_client_data* @kzalloc(i32 8, i32 %17)
  store %struct.tegra_spi_client_data* %18, %struct.tegra_spi_client_data** %4, align 8
  %19 = load %struct.tegra_spi_client_data*, %struct.tegra_spi_client_data** %4, align 8
  %20 = icmp ne %struct.tegra_spi_client_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.tegra_spi_client_data* null, %struct.tegra_spi_client_data** %2, align 8
  br label %32

22:                                               ; preds = %16
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = load %struct.tegra_spi_client_data*, %struct.tegra_spi_client_data** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_spi_client_data, %struct.tegra_spi_client_data* %24, i32 0, i32 1
  %26 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load %struct.tegra_spi_client_data*, %struct.tegra_spi_client_data** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_spi_client_data, %struct.tegra_spi_client_data* %28, i32 0, i32 0
  %30 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  %31 = load %struct.tegra_spi_client_data*, %struct.tegra_spi_client_data** %4, align 8
  store %struct.tegra_spi_client_data* %31, %struct.tegra_spi_client_data** %2, align 8
  br label %32

32:                                               ; preds = %22, %21, %12
  %33 = load %struct.tegra_spi_client_data*, %struct.tegra_spi_client_data** %2, align 8
  ret %struct.tegra_spi_client_data* %33
}

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.tegra_spi_client_data* @kzalloc(i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
