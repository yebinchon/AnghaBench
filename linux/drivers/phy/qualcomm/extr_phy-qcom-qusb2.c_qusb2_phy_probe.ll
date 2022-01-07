; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qusb2.c_qusb2_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-qusb2.c_qusb2_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.qusb2_phy = type { i32, i32, i32, i32, %struct.phy_provider*, i8*, i8*, i8*, i8*, %struct.phy_provider*, %struct.phy_provider*, i32, %struct.TYPE_3__*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider* }
%struct.TYPE_3__ = type { i32 }
%struct.phy_provider = type { i32 }
%struct.phy = type opaque
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cfg_ahb\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get cfg ahb clk, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get ref clk, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get phy core reset\0A\00", align 1
@qusb2_phy_vreg_names = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to get regulator supplies: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"qcom,tcsr-syscon\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to lookup TCSR regmap\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"failed to lookup tune2 hstx trim value\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"qcom,imp-res-offset-value\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"qcom,hstx-trim-value\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"qcom,preemphasis-level\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"qcom,preemphasis-width\00", align 1
@qusb2_phy_gen_ops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"failed to create phy, %d\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"Registered Qcom-QUSB2 phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qusb2_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qusb2_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qusb2_phy*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qusb2_phy* @devm_kzalloc(%struct.device* %15, i32 128, i32 %16)
  store %struct.qusb2_phy* %17, %struct.qusb2_phy** %5, align 8
  %18 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %19 = icmp ne %struct.qusb2_phy* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %322

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %8, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.resource*, %struct.resource** %8, align 8
  %29 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %27, %struct.resource* %28)
  %30 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %31 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %30, i32 0, i32 17
  store %struct.phy_provider* %29, %struct.phy_provider** %31, align 8
  %32 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %33 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %32, i32 0, i32 17
  %34 = load %struct.phy_provider*, %struct.phy_provider** %33, align 8
  %35 = call i64 @IS_ERR(%struct.phy_provider* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %39 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %38, i32 0, i32 17
  %40 = load %struct.phy_provider*, %struct.phy_provider** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.phy_provider* %40)
  store i32 %41, i32* %2, align 4
  br label %322

42:                                               ; preds = %23
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i8* @devm_clk_get(%struct.device* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %45 = bitcast i8* %44 to %struct.phy_provider*
  %46 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %47 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %46, i32 0, i32 16
  store %struct.phy_provider* %45, %struct.phy_provider** %47, align 8
  %48 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %49 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %48, i32 0, i32 16
  %50 = load %struct.phy_provider*, %struct.phy_provider** %49, align 8
  %51 = call i64 @IS_ERR(%struct.phy_provider* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %42
  %54 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %55 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %54, i32 0, i32 16
  %56 = load %struct.phy_provider*, %struct.phy_provider** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.phy_provider* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EPROBE_DEFER, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %322

68:                                               ; preds = %42
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i8* @devm_clk_get(%struct.device* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %71 = bitcast i8* %70 to %struct.phy_provider*
  %72 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %73 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %72, i32 0, i32 15
  store %struct.phy_provider* %71, %struct.phy_provider** %73, align 8
  %74 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %75 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %74, i32 0, i32 15
  %76 = load %struct.phy_provider*, %struct.phy_provider** %75, align 8
  %77 = call i64 @IS_ERR(%struct.phy_provider* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %68
  %80 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %81 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %80, i32 0, i32 15
  %82 = load %struct.phy_provider*, %struct.phy_provider** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.phy_provider* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @EPROBE_DEFER, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %2, align 4
  br label %322

94:                                               ; preds = %68
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call %struct.phy_provider* @devm_clk_get_optional(%struct.device* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %98 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %97, i32 0, i32 14
  store %struct.phy_provider* %96, %struct.phy_provider** %98, align 8
  %99 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %100 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %99, i32 0, i32 14
  %101 = load %struct.phy_provider*, %struct.phy_provider** %100, align 8
  %102 = call i64 @IS_ERR(%struct.phy_provider* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %106 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %105, i32 0, i32 14
  %107 = load %struct.phy_provider*, %struct.phy_provider** %106, align 8
  %108 = call i32 @PTR_ERR(%struct.phy_provider* %107)
  store i32 %108, i32* %2, align 4
  br label %322

109:                                              ; preds = %94
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call %struct.phy_provider* @devm_reset_control_get_by_index(%struct.device* %111, i32 0)
  %113 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %114 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %113, i32 0, i32 13
  store %struct.phy_provider* %112, %struct.phy_provider** %114, align 8
  %115 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %116 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %115, i32 0, i32 13
  %117 = load %struct.phy_provider*, %struct.phy_provider** %116, align 8
  %118 = call i64 @IS_ERR(%struct.phy_provider* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %124 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %123, i32 0, i32 13
  %125 = load %struct.phy_provider*, %struct.phy_provider** %124, align 8
  %126 = call i32 @PTR_ERR(%struct.phy_provider* %125)
  store i32 %126, i32* %2, align 4
  br label %322

127:                                              ; preds = %109
  %128 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %129 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %128, i32 0, i32 12
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %130)
  store i32 %131, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %149, %127
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i32*, i32** @qusb2_phy_vreg_names, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %143 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %142, i32 0, i32 12
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i32 %141, i32* %148, align 4
  br label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %132

152:                                              ; preds = %132
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %156 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %155, i32 0, i32 12
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = call i32 @devm_regulator_bulk_get(%struct.device* %153, i32 %154, %struct.TYPE_3__* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %152
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @EPROBE_DEFER, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp ne i32 %162, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %166, %161
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %322

172:                                              ; preds = %152
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = call i32 @of_device_get_match_data(%struct.device* %173)
  %175 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %176 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %175, i32 0, i32 11
  store i32 %174, i32* %176, align 8
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = getelementptr inbounds %struct.device, %struct.device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32 %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %181 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %182 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %181, i32 0, i32 10
  store %struct.phy_provider* %180, %struct.phy_provider** %182, align 8
  %183 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %184 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %183, i32 0, i32 10
  %185 = load %struct.phy_provider*, %struct.phy_provider** %184, align 8
  %186 = call i64 @IS_ERR(%struct.phy_provider* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %172
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = call i32 @dev_dbg(%struct.device* %189, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %191 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %192 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %191, i32 0, i32 10
  store %struct.phy_provider* null, %struct.phy_provider** %192, align 8
  br label %193

193:                                              ; preds = %188, %172
  %194 = load %struct.device*, %struct.device** %4, align 8
  %195 = call %struct.phy_provider* @devm_nvmem_cell_get(%struct.device* %194, i32* null)
  %196 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %197 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %196, i32 0, i32 9
  store %struct.phy_provider* %195, %struct.phy_provider** %197, align 8
  %198 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %199 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %198, i32 0, i32 9
  %200 = load %struct.phy_provider*, %struct.phy_provider** %199, align 8
  %201 = call i64 @IS_ERR(%struct.phy_provider* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %193
  %204 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %205 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %204, i32 0, i32 9
  %206 = load %struct.phy_provider*, %struct.phy_provider** %205, align 8
  %207 = call i32 @PTR_ERR(%struct.phy_provider* %206)
  %208 = load i32, i32* @EPROBE_DEFER, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %203
  %212 = load i32, i32* @EPROBE_DEFER, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %2, align 4
  br label %322

214:                                              ; preds = %203
  %215 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %216 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %215, i32 0, i32 9
  store %struct.phy_provider* null, %struct.phy_provider** %216, align 8
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = call i32 @dev_dbg(%struct.device* %217, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %219

219:                                              ; preds = %214, %193
  %220 = load %struct.device*, %struct.device** %4, align 8
  %221 = getelementptr inbounds %struct.device, %struct.device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @of_property_read_u32(i32 %222, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64* %12)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %219
  %226 = load i64, i64* %12, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %229 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %228, i32 0, i32 8
  store i8* %227, i8** %229, align 8
  %230 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %231 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  br label %232

232:                                              ; preds = %225, %219
  %233 = load %struct.device*, %struct.device** %4, align 8
  %234 = getelementptr inbounds %struct.device, %struct.device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @of_property_read_u32(i32 %235, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64* %12)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %232
  %239 = load i64, i64* %12, align 8
  %240 = inttoptr i64 %239 to i8*
  %241 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %242 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %241, i32 0, i32 7
  store i8* %240, i8** %242, align 8
  %243 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %244 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %243, i32 0, i32 1
  store i32 1, i32* %244, align 4
  br label %245

245:                                              ; preds = %238, %232
  %246 = load %struct.device*, %struct.device** %4, align 8
  %247 = getelementptr inbounds %struct.device, %struct.device* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @of_property_read_u32(i32 %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64* %12)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %245
  %252 = load i64, i64* %12, align 8
  %253 = inttoptr i64 %252 to i8*
  %254 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %255 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %254, i32 0, i32 6
  store i8* %253, i8** %255, align 8
  %256 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %257 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %256, i32 0, i32 2
  store i32 1, i32* %257, align 8
  br label %258

258:                                              ; preds = %251, %245
  %259 = load %struct.device*, %struct.device** %4, align 8
  %260 = getelementptr inbounds %struct.device, %struct.device* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @of_property_read_u32(i32 %261, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64* %12)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %258
  %265 = load i64, i64* %12, align 8
  %266 = inttoptr i64 %265 to i8*
  %267 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %268 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %267, i32 0, i32 5
  store i8* %266, i8** %268, align 8
  %269 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %270 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %269, i32 0, i32 3
  store i32 1, i32* %270, align 4
  br label %271

271:                                              ; preds = %264, %258
  %272 = load %struct.device*, %struct.device** %4, align 8
  %273 = call i32 @pm_runtime_set_active(%struct.device* %272)
  %274 = load %struct.device*, %struct.device** %4, align 8
  %275 = call i32 @pm_runtime_enable(%struct.device* %274)
  %276 = load %struct.device*, %struct.device** %4, align 8
  %277 = call i32 @pm_runtime_forbid(%struct.device* %276)
  %278 = load %struct.device*, %struct.device** %4, align 8
  %279 = call %struct.phy_provider* @devm_phy_create(%struct.device* %278, i32* null, i32* @qusb2_phy_gen_ops)
  %280 = bitcast %struct.phy_provider* %279 to %struct.phy*
  store %struct.phy* %280, %struct.phy** %7, align 8
  %281 = load %struct.phy*, %struct.phy** %7, align 8
  %282 = bitcast %struct.phy* %281 to %struct.phy_provider*
  %283 = call i64 @IS_ERR(%struct.phy_provider* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %271
  %286 = load %struct.phy*, %struct.phy** %7, align 8
  %287 = bitcast %struct.phy* %286 to %struct.phy_provider*
  %288 = call i32 @PTR_ERR(%struct.phy_provider* %287)
  store i32 %288, i32* %9, align 4
  %289 = load %struct.device*, %struct.device** %4, align 8
  %290 = load i32, i32* %9, align 4
  %291 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %289, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %290)
  %292 = load %struct.device*, %struct.device** %4, align 8
  %293 = call i32 @pm_runtime_disable(%struct.device* %292)
  %294 = load i32, i32* %9, align 4
  store i32 %294, i32* %2, align 4
  br label %322

295:                                              ; preds = %271
  %296 = load %struct.phy*, %struct.phy** %7, align 8
  %297 = bitcast %struct.phy* %296 to %struct.phy_provider*
  %298 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %299 = getelementptr inbounds %struct.qusb2_phy, %struct.qusb2_phy* %298, i32 0, i32 4
  store %struct.phy_provider* %297, %struct.phy_provider** %299, align 8
  %300 = load %struct.device*, %struct.device** %4, align 8
  %301 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %302 = call i32 @dev_set_drvdata(%struct.device* %300, %struct.qusb2_phy* %301)
  %303 = load %struct.phy*, %struct.phy** %7, align 8
  %304 = bitcast %struct.phy* %303 to %struct.phy_provider*
  %305 = load %struct.qusb2_phy*, %struct.qusb2_phy** %5, align 8
  %306 = call i32 @phy_set_drvdata(%struct.phy_provider* %304, %struct.qusb2_phy* %305)
  %307 = load %struct.device*, %struct.device** %4, align 8
  %308 = load i32, i32* @of_phy_simple_xlate, align 4
  %309 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %307, i32 %308)
  store %struct.phy_provider* %309, %struct.phy_provider** %6, align 8
  %310 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %311 = call i64 @IS_ERR(%struct.phy_provider* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %295
  %314 = load %struct.device*, %struct.device** %4, align 8
  %315 = call i32 @dev_info(%struct.device* %314, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %319

316:                                              ; preds = %295
  %317 = load %struct.device*, %struct.device** %4, align 8
  %318 = call i32 @pm_runtime_disable(%struct.device* %317)
  br label %319

319:                                              ; preds = %316, %313
  %320 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %321 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %320)
  store i32 %321, i32* %2, align 4
  br label %322

322:                                              ; preds = %319, %285, %211, %170, %120, %104, %92, %66, %37, %20
  %323 = load i32, i32* %2, align 4
  ret i32 %323
}

declare dso_local %struct.qusb2_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.phy_provider* @devm_clk_get_optional(%struct.device*, i8*) #1

declare dso_local %struct.phy_provider* @devm_reset_control_get_by_index(%struct.device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.phy_provider* @devm_nvmem_cell_get(%struct.device*, i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.qusb2_phy*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.qusb2_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
