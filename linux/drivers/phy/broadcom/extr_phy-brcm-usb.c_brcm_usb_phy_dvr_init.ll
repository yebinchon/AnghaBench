; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb.c_brcm_usb_phy_dvr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb.c_brcm_usb_phy_dvr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcm_usb_phy_data = type { %struct.phy*, %struct.TYPE_2__*, i64, i64, %struct.phy* }
%struct.TYPE_2__ = type { i64, %struct.phy* }
%struct.phy = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"sw_usb\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Clock not found in Device Tree\0A\00", align 1
@brcm_usb_phy_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to create EHCI/OHCI PHY\0A\00", align 1
@BRCM_USB_PHY_2_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to create XHCI PHY\0A\00", align 1
@BRCM_USB_PHY_3_0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"sw_usb3\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"USB3.0 clock not found in Device Tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.brcm_usb_phy_data*, %struct.device_node*)* @brcm_usb_phy_dvr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcm_usb_phy_dvr_init(%struct.device* %0, %struct.brcm_usb_phy_data* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.brcm_usb_phy_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.phy*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.brcm_usb_phy_data* %1, %struct.brcm_usb_phy_data** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %7, align 8
  %11 = call i8* @of_clk_get_by_name(%struct.device_node* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = bitcast i8* %11 to %struct.phy*
  %13 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %14 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %13, i32 0, i32 4
  store %struct.phy* %12, %struct.phy** %14, align 8
  %15 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %16 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %15, i32 0, i32 4
  %17 = load %struct.phy*, %struct.phy** %16, align 8
  %18 = call i64 @IS_ERR(%struct.phy* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @dev_info(%struct.device* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %24 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %23, i32 0, i32 4
  store %struct.phy* null, %struct.phy** %24, align 8
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %27 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %26, i32 0, i32 4
  %28 = load %struct.phy*, %struct.phy** %27, align 8
  %29 = call i32 @clk_prepare_enable(%struct.phy* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %136

34:                                               ; preds = %25
  %35 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %36 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call %struct.phy* @devm_phy_create(%struct.device* %40, i32* null, i32* @brcm_usb_phy_ops)
  store %struct.phy* %41, %struct.phy** %8, align 8
  %42 = load %struct.phy*, %struct.phy** %8, align 8
  %43 = call i64 @IS_ERR(%struct.phy* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.phy*, %struct.phy** %8, align 8
  %49 = call i32 @PTR_ERR(%struct.phy* %48)
  store i32 %49, i32* %4, align 4
  br label %136

50:                                               ; preds = %39
  %51 = load %struct.phy*, %struct.phy** %8, align 8
  %52 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %53 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @BRCM_USB_PHY_2_0, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store %struct.phy* %51, %struct.phy** %57, align 8
  %58 = load i64, i64* @BRCM_USB_PHY_2_0, align 8
  %59 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %60 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @BRCM_USB_PHY_2_0, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %58, i64* %64, align 8
  %65 = load %struct.phy*, %struct.phy** %8, align 8
  %66 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %67 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @BRCM_USB_PHY_2_0, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = call i32 @phy_set_drvdata(%struct.phy* %65, %struct.TYPE_2__* %70)
  br label %72

72:                                               ; preds = %50, %34
  %73 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %74 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %135

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call %struct.phy* @devm_phy_create(%struct.device* %78, i32* null, i32* @brcm_usb_phy_ops)
  store %struct.phy* %79, %struct.phy** %8, align 8
  %80 = load %struct.phy*, %struct.phy** %8, align 8
  %81 = call i64 @IS_ERR(%struct.phy* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.phy*, %struct.phy** %8, align 8
  %87 = call i32 @PTR_ERR(%struct.phy* %86)
  store i32 %87, i32* %4, align 4
  br label %136

88:                                               ; preds = %77
  %89 = load %struct.phy*, %struct.phy** %8, align 8
  %90 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %91 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* @BRCM_USB_PHY_3_0, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store %struct.phy* %89, %struct.phy** %95, align 8
  %96 = load i64, i64* @BRCM_USB_PHY_3_0, align 8
  %97 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %98 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @BRCM_USB_PHY_3_0, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i64 %96, i64* %102, align 8
  %103 = load %struct.phy*, %struct.phy** %8, align 8
  %104 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %105 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* @BRCM_USB_PHY_3_0, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = call i32 @phy_set_drvdata(%struct.phy* %103, %struct.TYPE_2__* %108)
  %110 = load %struct.device_node*, %struct.device_node** %7, align 8
  %111 = call i8* @of_clk_get_by_name(%struct.device_node* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %112 = bitcast i8* %111 to %struct.phy*
  %113 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %114 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %113, i32 0, i32 0
  store %struct.phy* %112, %struct.phy** %114, align 8
  %115 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %116 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %115, i32 0, i32 0
  %117 = load %struct.phy*, %struct.phy** %116, align 8
  %118 = call i64 @IS_ERR(%struct.phy* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %88
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i32 @dev_info(%struct.device* %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %124 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %123, i32 0, i32 0
  store %struct.phy* null, %struct.phy** %124, align 8
  br label %125

125:                                              ; preds = %120, %88
  %126 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %127 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %126, i32 0, i32 0
  %128 = load %struct.phy*, %struct.phy** %127, align 8
  %129 = call i32 @clk_prepare_enable(%struct.phy* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %136

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %72
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %132, %83, %45, %32
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i8* @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.phy*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
