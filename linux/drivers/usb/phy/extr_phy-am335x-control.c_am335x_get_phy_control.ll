; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-am335x-control.c_am335x_get_phy_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-am335x-control.c_am335x_get_phy_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_control = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.am335x_control_usb = type { %struct.phy_control }

@.str = private unnamed_addr constant [12 x i8] c"ti,ctrl_mod\00", align 1
@platform_bus_type = common dso_local global i32 0, align 4
@match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_control* @am335x_get_phy_control(%struct.device* %0) #0 {
  %2 = alloca %struct.phy_control*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.am335x_control_usb*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.device_node* @of_parse_phandle(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.phy_control* null, %struct.phy_control** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load i32, i32* @match, align 4
  %16 = call %struct.device* @bus_find_device(i32* @platform_bus_type, i32* null, %struct.device_node* %14, i32 %15)
  store %struct.device* %16, %struct.device** %3, align 8
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call i32 @of_node_put(%struct.device_node* %17)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store %struct.phy_control* null, %struct.phy_control** %2, align 8
  br label %33

22:                                               ; preds = %13
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call %struct.am335x_control_usb* @dev_get_drvdata(%struct.device* %23)
  store %struct.am335x_control_usb* %24, %struct.am335x_control_usb** %5, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @put_device(%struct.device* %25)
  %27 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %28 = icmp ne %struct.am335x_control_usb* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store %struct.phy_control* null, %struct.phy_control** %2, align 8
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %32 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %31, i32 0, i32 0
  store %struct.phy_control* %32, %struct.phy_control** %2, align 8
  br label %33

33:                                               ; preds = %30, %29, %21, %12
  %34 = load %struct.phy_control*, %struct.phy_control** %2, align 8
  ret %struct.phy_control* %34
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.am335x_control_usb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
