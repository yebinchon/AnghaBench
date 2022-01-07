; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.cdns_dp_phy = type { i32, i32, %struct.phy*, %struct.phy*, %struct.device* }
%struct.phy = type { i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cdns_dp_phy_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to create DisplayPort PHY\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"num_lanes\00", align 1
@DEFAULT_NUM_LANES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"unsupported number of lanes: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"max_bit_rate\00", align 1
@DEFAULT_MAX_BIT_RATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"unsupported max bit rate: %dMbps\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"%d lanes, max bit rate %d.%03d Gbps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_dp_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dp_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.cdns_dp_phy*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.phy*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cdns_dp_phy* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.cdns_dp_phy* %14, %struct.cdns_dp_phy** %5, align 8
  %15 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %16 = icmp ne %struct.cdns_dp_phy* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %147

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %24 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %23, i32 0, i32 4
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.phy* @devm_phy_create(%struct.device* %25, i32* null, i32* @cdns_dp_phy_ops)
  store %struct.phy* %26, %struct.phy** %8, align 8
  %27 = load %struct.phy*, %struct.phy** %8, align 8
  %28 = call i64 @IS_ERR(%struct.phy* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.phy*, %struct.phy** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.phy* %33)
  store i32 %34, i32* %2, align 4
  br label %147

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %4, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = call i8* @devm_ioremap_resource(%struct.device* %40, %struct.resource* %41)
  %43 = bitcast i8* %42 to %struct.phy*
  %44 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %45 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %44, i32 0, i32 3
  store %struct.phy* %43, %struct.phy** %45, align 8
  %46 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %47 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %46, i32 0, i32 3
  %48 = load %struct.phy*, %struct.phy** %47, align 8
  %49 = call i64 @IS_ERR(%struct.phy* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %35
  %52 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %53 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %52, i32 0, i32 3
  %54 = load %struct.phy*, %struct.phy** %53, align 8
  %55 = call i32 @PTR_ERR(%struct.phy* %54)
  store i32 %55, i32* %2, align 4
  br label %147

56:                                               ; preds = %35
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource(%struct.platform_device* %57, i32 %58, i32 1)
  store %struct.resource* %59, %struct.resource** %4, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.resource*, %struct.resource** %4, align 8
  %63 = call i8* @devm_ioremap_resource(%struct.device* %61, %struct.resource* %62)
  %64 = bitcast i8* %63 to %struct.phy*
  %65 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %66 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %65, i32 0, i32 2
  store %struct.phy* %64, %struct.phy** %66, align 8
  %67 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %68 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %67, i32 0, i32 2
  %69 = load %struct.phy*, %struct.phy** %68, align 8
  %70 = call i64 @IS_ERR(%struct.phy* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %74 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %73, i32 0, i32 2
  %75 = load %struct.phy*, %struct.phy** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.phy* %75)
  store i32 %76, i32* %2, align 4
  br label %147

77:                                               ; preds = %56
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %80 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %79, i32 0, i32 0
  %81 = call i32 @device_property_read_u32(%struct.device* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @DEFAULT_NUM_LANES, align 4
  %86 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %87 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %90 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %93 [
    i32 1, label %92
    i32 2, label %92
    i32 4, label %92
  ]

92:                                               ; preds = %88, %88, %88
  br label %101

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %96 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %147

101:                                              ; preds = %92
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %104 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %103, i32 0, i32 1
  %105 = call i32 @device_property_read_u32(%struct.device* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @DEFAULT_MAX_BIT_RATE, align 4
  %110 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %111 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %114 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %117 [
    i32 2160, label %116
    i32 2430, label %116
    i32 2700, label %116
    i32 3240, label %116
    i32 4320, label %116
    i32 5400, label %116
    i32 8100, label %116
  ]

116:                                              ; preds = %112, %112, %112, %112, %112, %112, %112
  br label %125

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %120 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %147

125:                                              ; preds = %116
  %126 = load %struct.phy*, %struct.phy** %8, align 8
  %127 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %128 = call i32 @phy_set_drvdata(%struct.phy* %126, %struct.cdns_dp_phy* %127)
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load i32, i32* @of_phy_simple_xlate, align 4
  %131 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %129, i32 %130)
  store %struct.phy_provider* %131, %struct.phy_provider** %7, align 8
  %132 = load %struct.device*, %struct.device** %6, align 8
  %133 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %134 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %137 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 1000
  %140 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %5, align 8
  %141 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = srem i32 %142, 1000
  %144 = call i32 @dev_info(%struct.device* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %135, i32 %139, i32 %143)
  %145 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %146 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %145)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %125, %117, %93, %72, %51, %30, %17
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.cdns_dp_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.cdns_dp_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
