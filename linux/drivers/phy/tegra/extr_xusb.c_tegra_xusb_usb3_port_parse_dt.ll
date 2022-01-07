; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_usb3_port_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_usb3_port_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_usb3_port = type { i32, i32, i32, %struct.tegra_xusb_port }
%struct.tegra_xusb_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"nvidia,usb2-companion\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to read port: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"nvidia,internal\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_usb3_port*)* @tegra_xusb_usb3_port_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_usb3_port_parse_dt(%struct.tegra_xusb_usb3_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_xusb_usb3_port*, align 8
  %4 = alloca %struct.tegra_xusb_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_xusb_usb3_port* %0, %struct.tegra_xusb_usb3_port** %3, align 8
  %8 = load %struct.tegra_xusb_usb3_port*, %struct.tegra_xusb_usb3_port** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_usb3_port, %struct.tegra_xusb_usb3_port* %8, i32 0, i32 3
  store %struct.tegra_xusb_port* %9, %struct.tegra_xusb_port** %4, align 8
  %10 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %19, i32 0, i32 0
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.tegra_xusb_usb3_port*, %struct.tegra_xusb_usb3_port** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_xusb_usb3_port, %struct.tegra_xusb_usb3_port* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @of_property_read_bool(%struct.device_node* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.tegra_xusb_usb3_port*, %struct.tegra_xusb_usb3_port** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb_usb3_port, %struct.tegra_xusb_usb3_port* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %32, i32 0, i32 0
  %34 = call i32 @devm_regulator_get(%struct.TYPE_3__* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.tegra_xusb_usb3_port*, %struct.tegra_xusb_usb3_port** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_usb3_port, %struct.tegra_xusb_usb3_port* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.tegra_xusb_usb3_port*, %struct.tegra_xusb_usb3_port** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_xusb_usb3_port, %struct.tegra_xusb_usb3_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR_OR_ZERO(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %24, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
