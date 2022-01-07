; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sun9i_usb_phy = type { i64, i8*, i8*, i8*, i8*, i8* }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBPHY_INTERFACE_MODE_HSIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"hsic_480M\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get hsic_480M clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hsic_12M\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to get hsic_12M clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to get reset control\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to get phy clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sun9i_usb_phy_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun9i_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun9i_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun9i_usb_phy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sun9i_usb_phy* @devm_kzalloc(%struct.device* %14, i32 48, i32 %15)
  store %struct.sun9i_usb_phy* %16, %struct.sun9i_usb_phy** %4, align 8
  %17 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %18 = icmp ne %struct.sun9i_usb_phy* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %166

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i64 @of_usb_get_phy_mode(%struct.device_node* %23)
  %25 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %26 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %28 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USBPHY_INTERFACE_MODE_HSIC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %22
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i8* @devm_clk_get(%struct.device* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %36 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %38 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %46 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %166

49:                                               ; preds = %32
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i8* @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %53 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %55 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %63 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %166

66:                                               ; preds = %49
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i8* @devm_reset_control_get(%struct.device* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %70 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %72 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %80 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %2, align 4
  br label %166

83:                                               ; preds = %66
  br label %119

84:                                               ; preds = %22
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = call i8* @devm_clk_get(%struct.device* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %88 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %90 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %97 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %98 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @PTR_ERR(i8* %99)
  store i32 %100, i32* %2, align 4
  br label %166

101:                                              ; preds = %84
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i8* @devm_reset_control_get(%struct.device* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %105 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %107 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %114 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %115 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %2, align 4
  br label %166

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %83
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = load i32, i32* @IORESOURCE_MEM, align 4
  %122 = call %struct.resource* @platform_get_resource(%struct.platform_device* %120, i32 %121, i32 0)
  store %struct.resource* %122, %struct.resource** %8, align 8
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = load %struct.resource*, %struct.resource** %8, align 8
  %125 = call i8* @devm_ioremap_resource(%struct.device* %123, %struct.resource* %124)
  %126 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %127 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %129 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @IS_ERR(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %119
  %134 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %135 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @PTR_ERR(i8* %136)
  store i32 %137, i32* %2, align 4
  br label %166

138:                                              ; preds = %119
  %139 = load %struct.device*, %struct.device** %5, align 8
  %140 = call i8* @devm_phy_create(%struct.device* %139, i32* null, i32* @sun9i_usb_phy_ops)
  %141 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %142 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %144 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %138
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %151 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %152 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @PTR_ERR(i8* %153)
  store i32 %154, i32* %2, align 4
  br label %166

155:                                              ; preds = %138
  %156 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %157 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %4, align 8
  %160 = call i32 @phy_set_drvdata(i8* %158, %struct.sun9i_usb_phy* %159)
  %161 = load %struct.device*, %struct.device** %5, align 8
  %162 = load i32, i32* @of_phy_simple_xlate, align 4
  %163 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %161, i32 %162)
  store %struct.phy_provider* %163, %struct.phy_provider** %7, align 8
  %164 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %165 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %164)
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %155, %148, %133, %111, %94, %76, %59, %42, %19
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.sun9i_usb_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_usb_get_phy_mode(%struct.device_node*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(i8*, %struct.sun9i_usb_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
