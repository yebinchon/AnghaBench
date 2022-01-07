; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi_phy = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, %struct.device* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i8*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"pin_hd20_pclk\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to register clock: %d\0A\00", align 1
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to register clock provider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi_phy*)* @inno_hdmi_phy_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_phy_clk_register(%struct.inno_hdmi_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inno_hdmi_phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.clk_init_data, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.inno_hdmi_phy* %0, %struct.inno_hdmi_phy** %3, align 8
  %9 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %10 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %9, i32 0, i32 4
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %16 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @__clk_get_name(i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  store i8** %7, i8*** %19, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %24 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  %31 = call i32 @of_property_read_string(%struct.device_node* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %30)
  %32 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %33 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %34, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %37 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %36, i32 0, i32 1
  %38 = call i32 @devm_clk_register(%struct.device* %35, %struct.TYPE_4__* %37)
  %39 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %40 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %42 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %1
  %47 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %48 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %70

55:                                               ; preds = %1
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = load i32, i32* @of_clk_src_simple_get, align 4
  %58 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %3, align 8
  %59 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @of_clk_add_provider(%struct.device_node* %56, i32 %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %64, %46
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @devm_clk_register(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
