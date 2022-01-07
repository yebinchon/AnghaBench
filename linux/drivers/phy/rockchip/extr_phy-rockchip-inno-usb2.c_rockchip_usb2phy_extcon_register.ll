; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_extcon_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_extcon_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb2phy = type { %struct.extcon_dev*, %struct.TYPE_5__* }
%struct.extcon_dev = type { i32 }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid or missing extcon\0A\00", align 1
@rockchip_usb2phy_extcon_cable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_usb2phy*)* @rockchip_usb2phy_extcon_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb2phy_extcon_register(%struct.rockchip_usb2phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_usb2phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.extcon_dev*, align 8
  store %struct.rockchip_usb2phy* %0, %struct.rockchip_usb2phy** %3, align 8
  %7 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %8 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i64 @of_property_read_bool(%struct.device_node* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.TYPE_5__* %18, i32 0)
  store %struct.extcon_dev* %19, %struct.extcon_dev** %6, align 8
  %20 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %21 = call i64 @IS_ERR(%struct.extcon_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.extcon_dev* %24)
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %31 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @dev_err(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.extcon_dev* %35)
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %15
  br label %65

38:                                               ; preds = %1
  %39 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %40 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* @rockchip_usb2phy_extcon_cable, align 4
  %43 = call %struct.extcon_dev* @devm_extcon_dev_allocate(%struct.TYPE_5__* %41, i32 %42)
  store %struct.extcon_dev* %43, %struct.extcon_dev** %6, align 8
  %44 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %45 = call i64 @IS_ERR(%struct.extcon_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %69

50:                                               ; preds = %38
  %51 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %52 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %55 = call i32 @devm_extcon_dev_register(%struct.TYPE_5__* %53, %struct.extcon_dev* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %60 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @dev_err(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %67 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %68 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %67, i32 0, i32 0
  store %struct.extcon_dev* %66, %struct.extcon_dev** %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %58, %47, %34
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.extcon_dev* @devm_extcon_dev_allocate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_5__*, %struct.extcon_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
