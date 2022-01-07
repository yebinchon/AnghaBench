; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-pxa-usb.c_pxa_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-pxa-usb.c_pxa_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.pxa_usb_phy = type { i32, %struct.phy_provider*, %struct.phy_provider* }
%struct.phy_provider = type { i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pxa_usb_phy_of_match = common dso_local global i32 0, align 4
@PXA_USB_PHY_MMP2 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to remap PHY regs\0A\00", align 1
@pxa_usb_phy_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register PHY provider\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mv-udc\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pxa-u2oehci\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mv-otg\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Marvell PXA USB PHY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pxa_usb_phy*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pxa_usb_phy* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.pxa_usb_phy* %13, %struct.pxa_usb_phy** %6, align 8
  %14 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %15 = icmp ne %struct.pxa_usb_phy* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load i32, i32* @pxa_usb_phy_of_match, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.of_device_id* @of_match_node(i32 %20, i32 %23)
  store %struct.of_device_id* %24, %struct.of_device_id** %8, align 8
  %25 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %26 = icmp ne %struct.of_device_id* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %29 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %33 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %19
  %35 = load i32, i32* @PXA_USB_PHY_MMP2, align 4
  %36 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %37 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %5, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %42, %struct.resource* %43)
  %45 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %46 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %45, i32 0, i32 2
  store %struct.phy_provider* %44, %struct.phy_provider** %46, align 8
  %47 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %48 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %47, i32 0, i32 2
  %49 = load %struct.phy_provider*, %struct.phy_provider** %48, align 8
  %50 = call i64 @IS_ERR(%struct.phy_provider* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %56 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %55, i32 0, i32 2
  %57 = load %struct.phy_provider*, %struct.phy_provider** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.phy_provider* %57)
  store i32 %58, i32* %2, align 4
  br label %114

59:                                               ; preds = %38
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call %struct.phy_provider* @devm_phy_create(%struct.device* %60, i32* null, i32* @pxa_usb_phy_ops)
  %62 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %63 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %62, i32 0, i32 1
  store %struct.phy_provider* %61, %struct.phy_provider** %63, align 8
  %64 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %65 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %64, i32 0, i32 1
  %66 = load %struct.phy_provider*, %struct.phy_provider** %65, align 8
  %67 = call i64 @IS_ERR(%struct.phy_provider* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %73 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %72, i32 0, i32 1
  %74 = load %struct.phy_provider*, %struct.phy_provider** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.phy_provider* %74)
  store i32 %75, i32* %2, align 4
  br label %114

76:                                               ; preds = %59
  %77 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %78 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %77, i32 0, i32 1
  %79 = load %struct.phy_provider*, %struct.phy_provider** %78, align 8
  %80 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %81 = call i32 @phy_set_drvdata(%struct.phy_provider* %79, %struct.pxa_usb_phy* %80)
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* @of_phy_simple_xlate, align 4
  %84 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %82, i32 %83)
  store %struct.phy_provider* %84, %struct.phy_provider** %7, align 8
  %85 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %86 = call i64 @IS_ERR(%struct.phy_provider* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %92 = call i32 @PTR_ERR(%struct.phy_provider* %91)
  store i32 %92, i32* %2, align 4
  br label %114

93:                                               ; preds = %76
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %93
  %99 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %100 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %99, i32 0, i32 1
  %101 = load %struct.phy_provider*, %struct.phy_provider** %100, align 8
  %102 = call i32 @phy_create_lookup(%struct.phy_provider* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %104 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %103, i32 0, i32 1
  %105 = load %struct.phy_provider*, %struct.phy_provider** %104, align 8
  %106 = call i32 @phy_create_lookup(%struct.phy_provider* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.pxa_usb_phy*, %struct.pxa_usb_phy** %6, align 8
  %108 = getelementptr inbounds %struct.pxa_usb_phy, %struct.pxa_usb_phy* %107, i32 0, i32 1
  %109 = load %struct.phy_provider*, %struct.phy_provider** %108, align 8
  %110 = call i32 @phy_create_lookup(%struct.phy_provider* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %98, %93
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 @dev_info(%struct.device* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %88, %69, %52, %16
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.pxa_usb_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.pxa_usb_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @phy_create_lookup(%struct.phy_provider*, i8*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
