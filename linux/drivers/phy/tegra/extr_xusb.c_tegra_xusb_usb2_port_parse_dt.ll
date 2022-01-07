; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_usb2_port_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_usb2_port_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_usb2_port = type { i32, i32, i32, %struct.tegra_xusb_port }
%struct.tegra_xusb_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"nvidia,internal\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@modes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid value %s for \22mode\22\0A\00", align 1
@USB_DR_MODE_UNKNOWN = common dso_local global i32 0, align 4
@USB_DR_MODE_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_usb2_port*)* @tegra_xusb_usb2_port_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_usb2_port_parse_dt(%struct.tegra_xusb_usb2_port* %0) #0 {
  %2 = alloca %struct.tegra_xusb_usb2_port*, align 8
  %3 = alloca %struct.tegra_xusb_port*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_xusb_usb2_port* %0, %struct.tegra_xusb_usb2_port** %2, align 8
  %7 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %7, i32 0, i32 3
  store %struct.tegra_xusb_port* %8, %struct.tegra_xusb_port** %3, align 8
  %9 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i32 @of_property_read_bool(%struct.device_node* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call i32 @of_property_read_string(%struct.device_node* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @modes, align 4
  %22 = load i32, i32* @modes, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @match_string(i32 %21, i32 %23, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %29, i32 0, i32 0
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @dev_err(%struct.TYPE_3__* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @USB_DR_MODE_UNKNOWN, align 4
  %34 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %2, align 8
  %39 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %28
  br label %45

41:                                               ; preds = %1
  %42 = load i32, i32* @USB_DR_MODE_HOST, align 4
  %43 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %46, i32 0, i32 0
  %48 = call i32 @devm_regulator_get(%struct.TYPE_3__* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %2, align 8
  %50 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %2, align 8
  %52 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR_OR_ZERO(i32 %53)
  ret i32 %54
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
