; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-da8xx-usb.c_da8xx_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-da8xx-usb.c_da8xx_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node*, %struct.da8xx_usb_phy_platform_data* }
%struct.device_node = type { i32 }
%struct.da8xx_usb_phy_platform_data = type { i8* }
%struct.da8xx_usb_phy = type { i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ti,da830-cfgchip\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to get syscon\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"usb1_clk48\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get usb1_clk48\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"usb0_clk48\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to get usb0_clk48\0A\00", align 1
@da8xx_usb11_phy_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to create usb11 phy\0A\00", align 1
@da8xx_usb20_phy_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to create usb20 phy\0A\00", align 1
@da8xx_usb_phy_of_xlate = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to create phy provider\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ohci-da8xx\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Failed to create usb11 phy lookup\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"musb-da8xx\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Failed to create usb20 phy lookup\0A\00", align 1
@PHY_INIT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da8xx_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da8xx_usb_phy_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.da8xx_usb_phy*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load %struct.da8xx_usb_phy_platform_data*, %struct.da8xx_usb_phy_platform_data** %12, align 8
  store %struct.da8xx_usb_phy_platform_data* %13, %struct.da8xx_usb_phy_platform_data** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.da8xx_usb_phy* @devm_kzalloc(%struct.device* %17, i32 48, i32 %18)
  store %struct.da8xx_usb_phy* %19, %struct.da8xx_usb_phy** %7, align 8
  %20 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %21 = icmp ne %struct.da8xx_usb_phy* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %185

25:                                               ; preds = %1
  %26 = load %struct.da8xx_usb_phy_platform_data*, %struct.da8xx_usb_phy_platform_data** %5, align 8
  %27 = icmp ne %struct.da8xx_usb_phy_platform_data* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.da8xx_usb_phy_platform_data*, %struct.da8xx_usb_phy_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.da8xx_usb_phy_platform_data, %struct.da8xx_usb_phy_platform_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %33 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %38

34:                                               ; preds = %25
  %35 = call i8* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %37 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %40 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %48 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %185

51:                                               ; preds = %38
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i8* @devm_clk_get(%struct.device* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %55 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %57 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %56, i32 0, i32 5
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %65 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %2, align 4
  br label %185

68:                                               ; preds = %51
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i8* @devm_clk_get(%struct.device* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %72 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %74 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %82 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %185

85:                                               ; preds = %68
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.device_node*, %struct.device_node** %6, align 8
  %88 = call i8* @devm_phy_create(%struct.device* %86, %struct.device_node* %87, i32* @da8xx_usb11_phy_ops)
  %89 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %90 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %92 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %85
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %100 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %185

103:                                              ; preds = %85
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.device_node*, %struct.device_node** %6, align 8
  %106 = call i8* @devm_phy_create(%struct.device* %104, %struct.device_node* %105, i32* @da8xx_usb20_phy_ops)
  %107 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %108 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %110 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %117 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %118 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PTR_ERR(i8* %119)
  store i32 %120, i32* %2, align 4
  br label %185

121:                                              ; preds = %103
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %124 = call i32 @platform_set_drvdata(%struct.platform_device* %122, %struct.da8xx_usb_phy* %123)
  %125 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %126 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %129 = call i32 @phy_set_drvdata(i8* %127, %struct.da8xx_usb_phy* %128)
  %130 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %131 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %134 = call i32 @phy_set_drvdata(i8* %132, %struct.da8xx_usb_phy* %133)
  %135 = load %struct.device_node*, %struct.device_node** %6, align 8
  %136 = icmp ne %struct.device_node* %135, null
  br i1 %136, label %137, label %156

137:                                              ; preds = %121
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load i32, i32* @da8xx_usb_phy_of_xlate, align 4
  %140 = call i8* @devm_of_phy_provider_register(%struct.device* %138, i32 %139)
  %141 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %142 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %144 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %137
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %151 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %152 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @PTR_ERR(i8* %153)
  store i32 %154, i32* %2, align 4
  br label %185

155:                                              ; preds = %137
  br label %177

156:                                              ; preds = %121
  %157 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %158 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @phy_create_lookup(i8* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 @dev_warn(%struct.device* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %156
  %167 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %168 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @phy_create_lookup(i8* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = call i32 @dev_warn(%struct.device* %174, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %166
  br label %177

177:                                              ; preds = %176, %155
  %178 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %7, align 8
  %179 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @CFGCHIP(i32 2)
  %182 = load i32, i32* @PHY_INIT_BITS, align 4
  %183 = load i32, i32* @PHY_INIT_BITS, align 4
  %184 = call i32 @regmap_write_bits(i8* %180, i32 %181, i32 %182, i32 %183)
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %177, %148, %114, %96, %78, %61, %44, %22
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.da8xx_usb_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_phy_create(%struct.device*, %struct.device_node*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da8xx_usb_phy*) #1

declare dso_local i32 @phy_set_drvdata(i8*, %struct.da8xx_usb_phy*) #1

declare dso_local i8* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @phy_create_lookup(i8*, i8*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @CFGCHIP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
