; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_clk480m_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_clk480m_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb2phy = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__, i64 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_5__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32*, i64 }

@.str = private unnamed_addr constant [16 x i8] c"clk_usbphy_480m\00", align 1
@rockchip_usb2phy_clkout_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@rockchip_usb2phy_clk480m_unregister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_usb2phy*)* @rockchip_usb2phy_clk480m_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb2phy_clk480m_register(%struct.rockchip_usb2phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_usb2phy*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clk_init_data, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rockchip_usb2phy* %0, %struct.rockchip_usb2phy** %3, align 8
  %8 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 3
  store i32* @rockchip_usb2phy_clkout_ops, i32** %15, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  %18 = call i32 @of_property_read_string(%struct.device_node* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %17)
  %19 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %20 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %25 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @__clk_get_name(i64 %26)
  store i8* %27, i8** %6, align 8
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 1
  store i8** %6, i8*** %28, align 8
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 2
  store i32 1, i32* %29, align 8
  br label %33

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 1
  store i8** null, i8*** %31, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 2
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %35 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.clk_init_data* %5, %struct.clk_init_data** %36, align 8
  %37 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %41 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %40, i32 0, i32 2
  %42 = call i32 @clk_register(%struct.TYPE_4__* %39, %struct.TYPE_5__* %41)
  %43 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %44 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %46 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  %51 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %52 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %84

55:                                               ; preds = %33
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = load i32, i32* @of_clk_src_simple_get, align 4
  %58 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %59 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @of_clk_add_provider(%struct.device_node* %56, i32 %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %79

65:                                               ; preds = %55
  %66 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %67 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* @rockchip_usb2phy_clk480m_unregister, align 4
  %70 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %71 = call i32 @devm_add_action(%struct.TYPE_4__* %68, i32 %69, %struct.rockchip_usb2phy* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %76

75:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %86

76:                                               ; preds = %74
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = call i32 @of_clk_del_provider(%struct.device_node* %77)
  br label %79

79:                                               ; preds = %76, %64
  %80 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %81 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @clk_unregister(i32 %82)
  br label %84

84:                                               ; preds = %79, %50
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %75
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i8* @__clk_get_name(i64) #1

declare dso_local i32 @clk_register(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_4__*, i32, %struct.rockchip_usb2phy*) #1

declare dso_local i32 @of_clk_del_provider(%struct.device_node*) #1

declare dso_local i32 @clk_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
