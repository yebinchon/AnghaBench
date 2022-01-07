; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_u3ssphy_priv = type { %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.TYPE_2__*, %struct.phy*, %struct.device* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.phy = type { i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_PHY_PARAMS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"phy-ext\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gio\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@uniphier_u3ssphy_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_u3ssphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3ssphy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_u3ssphy_priv*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.uniphier_u3ssphy_priv* @devm_kzalloc(%struct.device* %11, i32 88, i32 %12)
  store %struct.uniphier_u3ssphy_priv* %13, %struct.uniphier_u3ssphy_priv** %5, align 8
  %14 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %15 = icmp ne %struct.uniphier_u3ssphy_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %233

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %22 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %21, i32 0, i32 10
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %23)
  %25 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %26 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %25, i32 0, i32 8
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %28 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %27, i32 0, i32 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %33 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %32, i32 0, i32 8
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
  br label %233

47:                                               ; preds = %39
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %7, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = call %struct.phy* @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %55 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %54, i32 0, i32 9
  store %struct.phy* %53, %struct.phy** %55, align 8
  %56 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %57 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %56, i32 0, i32 9
  %58 = load %struct.phy*, %struct.phy** %57, align 8
  %59 = call i64 @IS_ERR(%struct.phy* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %63 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %62, i32 0, i32 9
  %64 = load %struct.phy*, %struct.phy** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.phy* %64)
  store i32 %65, i32* %2, align 4
  br label %233

66:                                               ; preds = %47
  %67 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %68 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %67, i32 0, i32 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i8* @devm_clk_get(%struct.device* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %76 = bitcast i8* %75 to %struct.phy*
  %77 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %78 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %77, i32 0, i32 7
  store %struct.phy* %76, %struct.phy** %78, align 8
  %79 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %80 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %79, i32 0, i32 7
  %81 = load %struct.phy*, %struct.phy** %80, align 8
  %82 = call i64 @IS_ERR(%struct.phy* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %86 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %85, i32 0, i32 7
  %87 = load %struct.phy*, %struct.phy** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.phy* %87)
  store i32 %88, i32* %2, align 4
  br label %233

89:                                               ; preds = %73
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call %struct.phy* @devm_clk_get_optional(%struct.device* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %93 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %92, i32 0, i32 6
  store %struct.phy* %91, %struct.phy** %93, align 8
  %94 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %95 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %94, i32 0, i32 6
  %96 = load %struct.phy*, %struct.phy** %95, align 8
  %97 = call i64 @IS_ERR(%struct.phy* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %101 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %100, i32 0, i32 6
  %102 = load %struct.phy*, %struct.phy** %101, align 8
  %103 = call i32 @PTR_ERR(%struct.phy* %102)
  store i32 %103, i32* %2, align 4
  br label %233

104:                                              ; preds = %89
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i8* @devm_reset_control_get_shared(%struct.device* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %107 = bitcast i8* %106 to %struct.phy*
  %108 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %109 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %108, i32 0, i32 5
  store %struct.phy* %107, %struct.phy** %109, align 8
  %110 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %111 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %110, i32 0, i32 5
  %112 = load %struct.phy*, %struct.phy** %111, align 8
  %113 = call i64 @IS_ERR(%struct.phy* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %104
  %116 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %117 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %116, i32 0, i32 5
  %118 = load %struct.phy*, %struct.phy** %117, align 8
  %119 = call i32 @PTR_ERR(%struct.phy* %118)
  store i32 %119, i32* %2, align 4
  br label %233

120:                                              ; preds = %104
  br label %154

121:                                              ; preds = %66
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i8* @devm_clk_get(%struct.device* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %124 = bitcast i8* %123 to %struct.phy*
  %125 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %126 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %125, i32 0, i32 4
  store %struct.phy* %124, %struct.phy** %126, align 8
  %127 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %128 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %127, i32 0, i32 4
  %129 = load %struct.phy*, %struct.phy** %128, align 8
  %130 = call i64 @IS_ERR(%struct.phy* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %134 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %133, i32 0, i32 4
  %135 = load %struct.phy*, %struct.phy** %134, align 8
  %136 = call i32 @PTR_ERR(%struct.phy* %135)
  store i32 %136, i32* %2, align 4
  br label %233

137:                                              ; preds = %121
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i8* @devm_reset_control_get_shared(%struct.device* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %140 = bitcast i8* %139 to %struct.phy*
  %141 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %142 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %141, i32 0, i32 3
  store %struct.phy* %140, %struct.phy** %142, align 8
  %143 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %144 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %143, i32 0, i32 3
  %145 = load %struct.phy*, %struct.phy** %144, align 8
  %146 = call i64 @IS_ERR(%struct.phy* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %137
  %149 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %150 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %149, i32 0, i32 3
  %151 = load %struct.phy*, %struct.phy** %150, align 8
  %152 = call i32 @PTR_ERR(%struct.phy* %151)
  store i32 %152, i32* %2, align 4
  br label %233

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153, %120
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i8* @devm_clk_get(%struct.device* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %157 = bitcast i8* %156 to %struct.phy*
  %158 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %159 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %158, i32 0, i32 2
  store %struct.phy* %157, %struct.phy** %159, align 8
  %160 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %161 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %160, i32 0, i32 2
  %162 = load %struct.phy*, %struct.phy** %161, align 8
  %163 = call i64 @IS_ERR(%struct.phy* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %167 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %166, i32 0, i32 2
  %168 = load %struct.phy*, %struct.phy** %167, align 8
  %169 = call i32 @PTR_ERR(%struct.phy* %168)
  store i32 %169, i32* %2, align 4
  br label %233

170:                                              ; preds = %154
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = call i8* @devm_reset_control_get_shared(%struct.device* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %173 = bitcast i8* %172 to %struct.phy*
  %174 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %175 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %174, i32 0, i32 1
  store %struct.phy* %173, %struct.phy** %175, align 8
  %176 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %177 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %176, i32 0, i32 1
  %178 = load %struct.phy*, %struct.phy** %177, align 8
  %179 = call i64 @IS_ERR(%struct.phy* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %170
  %182 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %183 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %182, i32 0, i32 1
  %184 = load %struct.phy*, %struct.phy** %183, align 8
  %185 = call i32 @PTR_ERR(%struct.phy* %184)
  store i32 %185, i32* %2, align 4
  br label %233

186:                                              ; preds = %170
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = call %struct.phy* @devm_regulator_get_optional(%struct.device* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %189 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %190 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %189, i32 0, i32 0
  store %struct.phy* %188, %struct.phy** %190, align 8
  %191 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %192 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %191, i32 0, i32 0
  %193 = load %struct.phy*, %struct.phy** %192, align 8
  %194 = call i64 @IS_ERR(%struct.phy* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %186
  %197 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %198 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %197, i32 0, i32 0
  %199 = load %struct.phy*, %struct.phy** %198, align 8
  %200 = call i32 @PTR_ERR(%struct.phy* %199)
  %201 = load i32, i32* @EPROBE_DEFER, align 4
  %202 = sub nsw i32 0, %201
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %206 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %205, i32 0, i32 0
  %207 = load %struct.phy*, %struct.phy** %206, align 8
  %208 = call i32 @PTR_ERR(%struct.phy* %207)
  store i32 %208, i32* %2, align 4
  br label %233

209:                                              ; preds = %196
  %210 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %211 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %210, i32 0, i32 0
  store %struct.phy* null, %struct.phy** %211, align 8
  br label %212

212:                                              ; preds = %209, %186
  %213 = load %struct.device*, %struct.device** %4, align 8
  %214 = load %struct.device*, %struct.device** %4, align 8
  %215 = getelementptr inbounds %struct.device, %struct.device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call %struct.phy* @devm_phy_create(%struct.device* %213, i32 %216, i32* @uniphier_u3ssphy_ops)
  store %struct.phy* %217, %struct.phy** %8, align 8
  %218 = load %struct.phy*, %struct.phy** %8, align 8
  %219 = call i64 @IS_ERR(%struct.phy* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  %222 = load %struct.phy*, %struct.phy** %8, align 8
  %223 = call i32 @PTR_ERR(%struct.phy* %222)
  store i32 %223, i32* %2, align 4
  br label %233

224:                                              ; preds = %212
  %225 = load %struct.phy*, %struct.phy** %8, align 8
  %226 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %5, align 8
  %227 = call i32 @phy_set_drvdata(%struct.phy* %225, %struct.uniphier_u3ssphy_priv* %226)
  %228 = load %struct.device*, %struct.device** %4, align 8
  %229 = load i32, i32* @of_phy_simple_xlate, align 4
  %230 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %228, i32 %229)
  store %struct.phy_provider* %230, %struct.phy_provider** %6, align 8
  %231 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %232 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %231)
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %224, %221, %204, %181, %165, %148, %132, %115, %99, %84, %61, %44, %16
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.uniphier_u3ssphy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

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

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.uniphier_u3ssphy_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
