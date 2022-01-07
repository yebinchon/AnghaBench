; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson8b-usb2.c_phy_meson8b_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson8b-usb2.c_phy_meson8b_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.phy_meson8b_usb2_priv = type { i64, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy* }
%struct.phy = type { i32 }
%struct.resource = type { i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"usb_general\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"missing dual role configuration of the controller\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@phy_meson8b_usb2_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @phy_meson8b_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_meson8b_usb2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_meson8b_usb2_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.phy_meson8b_usb2_priv* @devm_kzalloc(%struct.TYPE_8__* %9, i32 40, i32 %10)
  store %struct.phy_meson8b_usb2_priv* %11, %struct.phy_meson8b_usb2_priv** %4, align 8
  %12 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %13 = icmp ne %struct.phy_meson8b_usb2_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %131

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call %struct.phy* @devm_ioremap_resource(%struct.TYPE_8__* %22, %struct.resource* %23)
  %25 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %26 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %25, i32 0, i32 4
  store %struct.phy* %24, %struct.phy** %26, align 8
  %27 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %28 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %27, i32 0, i32 4
  %29 = load %struct.phy*, %struct.phy** %28, align 8
  %30 = call i64 @IS_ERR(%struct.phy* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %34 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %33, i32 0, i32 4
  %35 = load %struct.phy*, %struct.phy** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.phy* %35)
  store i32 %36, i32* %2, align 4
  br label %131

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i8* @devm_clk_get(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %41 = bitcast i8* %40 to %struct.phy*
  %42 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %43 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %42, i32 0, i32 3
  store %struct.phy* %41, %struct.phy** %43, align 8
  %44 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %45 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %44, i32 0, i32 3
  %46 = load %struct.phy*, %struct.phy** %45, align 8
  %47 = call i64 @IS_ERR(%struct.phy* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %51 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %50, i32 0, i32 3
  %52 = load %struct.phy*, %struct.phy** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.phy* %52)
  store i32 %53, i32* %2, align 4
  br label %131

54:                                               ; preds = %37
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i8* @devm_clk_get(%struct.TYPE_8__* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = bitcast i8* %57 to %struct.phy*
  %59 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %60 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %59, i32 0, i32 2
  store %struct.phy* %58, %struct.phy** %60, align 8
  %61 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %62 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %61, i32 0, i32 2
  %63 = load %struct.phy*, %struct.phy** %62, align 8
  %64 = call i64 @IS_ERR(%struct.phy* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %68 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %67, i32 0, i32 2
  %69 = load %struct.phy*, %struct.phy** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.phy* %69)
  store i32 %70, i32* %2, align 4
  br label %131

71:                                               ; preds = %54
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call %struct.phy* @devm_reset_control_get_optional_shared(%struct.TYPE_8__* %73, i32* null)
  %75 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %76 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %75, i32 0, i32 1
  store %struct.phy* %74, %struct.phy** %76, align 8
  %77 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %78 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %77, i32 0, i32 1
  %79 = load %struct.phy*, %struct.phy** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.phy* %79)
  %81 = load i32, i32* @EPROBE_DEFER, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %86 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %85, i32 0, i32 1
  %87 = load %struct.phy*, %struct.phy** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.phy* %87)
  store i32 %88, i32* %2, align 4
  br label %131

89:                                               ; preds = %71
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @of_usb_get_dr_mode_by_phy(i32 %93, i32 -1)
  %95 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %96 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %98 = getelementptr inbounds %struct.phy_meson8b_usb2_priv, %struct.phy_meson8b_usb2_priv* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(%struct.TYPE_8__* %104, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %131

108:                                              ; preds = %89
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call %struct.phy* @devm_phy_create(%struct.TYPE_8__* %110, i32* null, i32* @phy_meson8b_usb2_ops)
  store %struct.phy* %111, %struct.phy** %6, align 8
  %112 = load %struct.phy*, %struct.phy** %6, align 8
  %113 = call i64 @IS_ERR(%struct.phy* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @dev_err(%struct.TYPE_8__* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.phy*, %struct.phy** %6, align 8
  %120 = call i32 @PTR_ERR(%struct.phy* %119)
  store i32 %120, i32* %2, align 4
  br label %131

121:                                              ; preds = %108
  %122 = load %struct.phy*, %struct.phy** %6, align 8
  %123 = load %struct.phy_meson8b_usb2_priv*, %struct.phy_meson8b_usb2_priv** %4, align 8
  %124 = call i32 @phy_set_drvdata(%struct.phy* %122, %struct.phy_meson8b_usb2_priv* %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* @of_phy_simple_xlate, align 4
  %128 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_8__* %126, i32 %127)
  store %struct.phy_provider* %128, %struct.phy_provider** %7, align 8
  %129 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %130 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %129)
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %121, %115, %102, %84, %66, %49, %32, %14
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.phy_meson8b_usb2_priv* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy* @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.phy* @devm_reset_control_get_optional_shared(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @of_usb_get_dr_mode_by_phy(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.phy_meson8b_usb2_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
