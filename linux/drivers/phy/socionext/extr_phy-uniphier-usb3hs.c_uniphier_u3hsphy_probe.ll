; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_u3hsphy_priv = type { %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.TYPE_2__*, %struct.device* }
%struct.phy = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_PHY_PARAMS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"phy-ext\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@uniphier_u3hsphy_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_u3hsphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3hsphy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_u3hsphy_priv*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.uniphier_u3hsphy_priv* @devm_kzalloc(%struct.device* %11, i32 72, i32 %12)
  store %struct.uniphier_u3hsphy_priv* %13, %struct.uniphier_u3hsphy_priv** %5, align 8
  %14 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %15 = icmp ne %struct.uniphier_u3hsphy_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %192

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %22 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %21, i32 0, i32 8
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %23)
  %25 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %26 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %25, i32 0, i32 7
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %28 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %27, i32 0, i32 7
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %33 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %32, i32 0, i32 7
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MAX_PHY_PARAMS, align 8
  %38 = icmp sgt i64 %36, %37
  br label %39

39:                                               ; preds = %31, %19
  %40 = phi i1 [ true, %19 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %192

47:                                               ; preds = %39
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %7, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = call %struct.phy* @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %55 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %54, i32 0, i32 6
  store %struct.phy* %53, %struct.phy** %55, align 8
  %56 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %57 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %56, i32 0, i32 6
  %58 = load %struct.phy*, %struct.phy** %57, align 8
  %59 = call i64 @IS_ERR(%struct.phy* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %63 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %62, i32 0, i32 6
  %64 = load %struct.phy*, %struct.phy** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.phy* %64)
  store i32 %65, i32* %2, align 4
  br label %192

66:                                               ; preds = %47
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i8* @devm_clk_get(%struct.device* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %69 = bitcast i8* %68 to %struct.phy*
  %70 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %71 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %70, i32 0, i32 5
  store %struct.phy* %69, %struct.phy** %71, align 8
  %72 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %73 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %72, i32 0, i32 5
  %74 = load %struct.phy*, %struct.phy** %73, align 8
  %75 = call i64 @IS_ERR(%struct.phy* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %79 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %78, i32 0, i32 5
  %80 = load %struct.phy*, %struct.phy** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.phy* %80)
  store i32 %81, i32* %2, align 4
  br label %192

82:                                               ; preds = %66
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i8* @devm_clk_get(%struct.device* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %85 = bitcast i8* %84 to %struct.phy*
  %86 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %87 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %86, i32 0, i32 4
  store %struct.phy* %85, %struct.phy** %87, align 8
  %88 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %89 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %88, i32 0, i32 4
  %90 = load %struct.phy*, %struct.phy** %89, align 8
  %91 = call i64 @IS_ERR(%struct.phy* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %95 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %94, i32 0, i32 4
  %96 = load %struct.phy*, %struct.phy** %95, align 8
  %97 = call i32 @PTR_ERR(%struct.phy* %96)
  store i32 %97, i32* %2, align 4
  br label %192

98:                                               ; preds = %82
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call %struct.phy* @devm_clk_get_optional(%struct.device* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %102 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %101, i32 0, i32 3
  store %struct.phy* %100, %struct.phy** %102, align 8
  %103 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %104 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %103, i32 0, i32 3
  %105 = load %struct.phy*, %struct.phy** %104, align 8
  %106 = call i64 @IS_ERR(%struct.phy* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %110 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %109, i32 0, i32 3
  %111 = load %struct.phy*, %struct.phy** %110, align 8
  %112 = call i32 @PTR_ERR(%struct.phy* %111)
  store i32 %112, i32* %2, align 4
  br label %192

113:                                              ; preds = %98
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i8* @devm_reset_control_get_shared(%struct.device* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %116 = bitcast i8* %115 to %struct.phy*
  %117 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %118 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %117, i32 0, i32 2
  store %struct.phy* %116, %struct.phy** %118, align 8
  %119 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %120 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %119, i32 0, i32 2
  %121 = load %struct.phy*, %struct.phy** %120, align 8
  %122 = call i64 @IS_ERR(%struct.phy* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %126 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %125, i32 0, i32 2
  %127 = load %struct.phy*, %struct.phy** %126, align 8
  %128 = call i32 @PTR_ERR(%struct.phy* %127)
  store i32 %128, i32* %2, align 4
  br label %192

129:                                              ; preds = %113
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i8* @devm_reset_control_get_shared(%struct.device* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %132 = bitcast i8* %131 to %struct.phy*
  %133 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %134 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %133, i32 0, i32 1
  store %struct.phy* %132, %struct.phy** %134, align 8
  %135 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %136 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %135, i32 0, i32 1
  %137 = load %struct.phy*, %struct.phy** %136, align 8
  %138 = call i64 @IS_ERR(%struct.phy* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %129
  %141 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %142 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %141, i32 0, i32 1
  %143 = load %struct.phy*, %struct.phy** %142, align 8
  %144 = call i32 @PTR_ERR(%struct.phy* %143)
  store i32 %144, i32* %2, align 4
  br label %192

145:                                              ; preds = %129
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call %struct.phy* @devm_regulator_get_optional(%struct.device* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %149 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %148, i32 0, i32 0
  store %struct.phy* %147, %struct.phy** %149, align 8
  %150 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %151 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %150, i32 0, i32 0
  %152 = load %struct.phy*, %struct.phy** %151, align 8
  %153 = call i64 @IS_ERR(%struct.phy* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %145
  %156 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %157 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %156, i32 0, i32 0
  %158 = load %struct.phy*, %struct.phy** %157, align 8
  %159 = call i32 @PTR_ERR(%struct.phy* %158)
  %160 = load i32, i32* @EPROBE_DEFER, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %165 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %164, i32 0, i32 0
  %166 = load %struct.phy*, %struct.phy** %165, align 8
  %167 = call i32 @PTR_ERR(%struct.phy* %166)
  store i32 %167, i32* %2, align 4
  br label %192

168:                                              ; preds = %155
  %169 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %170 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %169, i32 0, i32 0
  store %struct.phy* null, %struct.phy** %170, align 8
  br label %171

171:                                              ; preds = %168, %145
  %172 = load %struct.device*, %struct.device** %4, align 8
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = getelementptr inbounds %struct.device, %struct.device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.phy* @devm_phy_create(%struct.device* %172, i32 %175, i32* @uniphier_u3hsphy_ops)
  store %struct.phy* %176, %struct.phy** %8, align 8
  %177 = load %struct.phy*, %struct.phy** %8, align 8
  %178 = call i64 @IS_ERR(%struct.phy* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load %struct.phy*, %struct.phy** %8, align 8
  %182 = call i32 @PTR_ERR(%struct.phy* %181)
  store i32 %182, i32* %2, align 4
  br label %192

183:                                              ; preds = %171
  %184 = load %struct.phy*, %struct.phy** %8, align 8
  %185 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %186 = call i32 @phy_set_drvdata(%struct.phy* %184, %struct.uniphier_u3hsphy_priv* %185)
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = load i32, i32* @of_phy_simple_xlate, align 4
  %189 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %187, i32 %188)
  store %struct.phy_provider* %189, %struct.phy_provider** %6, align 8
  %190 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %191 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %190)
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %183, %180, %163, %140, %124, %108, %93, %77, %61, %44, %16
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.uniphier_u3hsphy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.phy* @devm_clk_get_optional(%struct.device*, i8*) #1

declare dso_local i8* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local %struct.phy* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.uniphier_u3hsphy_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
