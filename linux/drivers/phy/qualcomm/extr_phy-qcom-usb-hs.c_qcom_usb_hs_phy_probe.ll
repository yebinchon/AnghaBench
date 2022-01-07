; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hs.c_qcom_usb_hs_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hs.c_qcom_usb_hs_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulpi = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.qcom_usb_hs_phy = type { %struct.reset_control*, %struct.TYPE_11__, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.TYPE_13__*, %struct.ulpi* }
%struct.TYPE_11__ = type { i32 }
%struct.reset_control = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.phy_provider = type { i32 }
%struct.clk = type opaque
%struct.regulator = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"qcom,init-seq\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"v1p8\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"v3p3\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"por\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@qcom_usb_hs_phy_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@qcom_usb_hs_phy_vbus_notifier = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ulpi*)* @qcom_usb_hs_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_usb_hs_phy_probe(%struct.ulpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ulpi*, align 8
  %4 = alloca %struct.qcom_usb_hs_phy*, align 8
  %5 = alloca %struct.phy_provider*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca %struct.reset_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ulpi* %0, %struct.ulpi** %3, align 8
  %11 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %12 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.qcom_usb_hs_phy* @devm_kzalloc(%struct.TYPE_12__* %12, i32 80, i32 %13)
  store %struct.qcom_usb_hs_phy* %14, %struct.qcom_usb_hs_phy** %4, align 8
  %15 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %16 = icmp ne %struct.qcom_usb_hs_phy* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %234

20:                                               ; preds = %1
  %21 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %22 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %23 = call i32 @ulpi_set_drvdata(%struct.ulpi* %21, %struct.qcom_usb_hs_phy* %22)
  %24 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %25 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %25, i32 0, i32 9
  store %struct.ulpi* %24, %struct.ulpi** %26, align 8
  %27 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %28 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @of_property_count_u8_elems(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %37 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = sdiv i32 %38, 2
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_13__* @devm_kmalloc_array(%struct.TYPE_12__* %37, i32 %40, i32 16, i32 %41)
  %43 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %44 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %43, i32 0, i32 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %44, align 8
  %45 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %46 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %45, i32 0, i32 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = icmp ne %struct.TYPE_13__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %234

52:                                               ; preds = %35
  %53 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %54 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %58 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %57, i32 0, i32 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = bitcast %struct.TYPE_13__* %59 to i32*
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @of_property_read_u8_array(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %2, align 4
  br label %234

70:                                               ; preds = %65, %52
  %71 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %71, i32 0, i32 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %80 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %79, i32 0, i32 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sdiv i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %88 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %87, i32 0, i32 0
  %89 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_12__* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %90 = bitcast %struct.reset_control* %89 to %struct.clk*
  store %struct.clk* %90, %struct.clk** %6, align 8
  %91 = bitcast %struct.clk* %90 to %struct.reset_control*
  %92 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %93 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %92, i32 0, i32 7
  store %struct.reset_control* %91, %struct.reset_control** %93, align 8
  %94 = load %struct.clk*, %struct.clk** %6, align 8
  %95 = bitcast %struct.clk* %94 to %struct.reset_control*
  %96 = call i64 @IS_ERR(%struct.reset_control* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %70
  %99 = load %struct.clk*, %struct.clk** %6, align 8
  %100 = bitcast %struct.clk* %99 to %struct.reset_control*
  %101 = call i32 @PTR_ERR(%struct.reset_control* %100)
  store i32 %101, i32* %2, align 4
  br label %234

102:                                              ; preds = %70
  %103 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %104 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %103, i32 0, i32 0
  %105 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_12__* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %106 = bitcast %struct.reset_control* %105 to %struct.clk*
  store %struct.clk* %106, %struct.clk** %6, align 8
  %107 = bitcast %struct.clk* %106 to %struct.reset_control*
  %108 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %109 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %108, i32 0, i32 6
  store %struct.reset_control* %107, %struct.reset_control** %109, align 8
  %110 = load %struct.clk*, %struct.clk** %6, align 8
  %111 = bitcast %struct.clk* %110 to %struct.reset_control*
  %112 = call i64 @IS_ERR(%struct.reset_control* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %102
  %115 = load %struct.clk*, %struct.clk** %6, align 8
  %116 = bitcast %struct.clk* %115 to %struct.reset_control*
  %117 = call i32 @PTR_ERR(%struct.reset_control* %116)
  store i32 %117, i32* %2, align 4
  br label %234

118:                                              ; preds = %102
  %119 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %120 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %119, i32 0, i32 0
  %121 = call %struct.reset_control* @devm_regulator_get(%struct.TYPE_12__* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %122 = bitcast %struct.reset_control* %121 to %struct.regulator*
  store %struct.regulator* %122, %struct.regulator** %7, align 8
  %123 = bitcast %struct.regulator* %122 to %struct.reset_control*
  %124 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %125 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %124, i32 0, i32 5
  store %struct.reset_control* %123, %struct.reset_control** %125, align 8
  %126 = load %struct.regulator*, %struct.regulator** %7, align 8
  %127 = bitcast %struct.regulator* %126 to %struct.reset_control*
  %128 = call i64 @IS_ERR(%struct.reset_control* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load %struct.regulator*, %struct.regulator** %7, align 8
  %132 = bitcast %struct.regulator* %131 to %struct.reset_control*
  %133 = call i32 @PTR_ERR(%struct.reset_control* %132)
  store i32 %133, i32* %2, align 4
  br label %234

134:                                              ; preds = %118
  %135 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %136 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %135, i32 0, i32 0
  %137 = call %struct.reset_control* @devm_regulator_get(%struct.TYPE_12__* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %138 = bitcast %struct.reset_control* %137 to %struct.regulator*
  store %struct.regulator* %138, %struct.regulator** %7, align 8
  %139 = bitcast %struct.regulator* %138 to %struct.reset_control*
  %140 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %141 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %140, i32 0, i32 4
  store %struct.reset_control* %139, %struct.reset_control** %141, align 8
  %142 = load %struct.regulator*, %struct.regulator** %7, align 8
  %143 = bitcast %struct.regulator* %142 to %struct.reset_control*
  %144 = call i64 @IS_ERR(%struct.reset_control* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load %struct.regulator*, %struct.regulator** %7, align 8
  %148 = bitcast %struct.regulator* %147 to %struct.reset_control*
  %149 = call i32 @PTR_ERR(%struct.reset_control* %148)
  store i32 %149, i32* %2, align 4
  br label %234

150:                                              ; preds = %134
  %151 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %152 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %151, i32 0, i32 0
  %153 = call %struct.reset_control* @devm_reset_control_get(%struct.TYPE_12__* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.reset_control* %153, %struct.reset_control** %8, align 8
  %154 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %155 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %154, i32 0, i32 3
  store %struct.reset_control* %153, %struct.reset_control** %155, align 8
  %156 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %157 = call i64 @IS_ERR(%struct.reset_control* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %150
  %160 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %161 = call i32 @PTR_ERR(%struct.reset_control* %160)
  %162 = load i32, i32* @EPROBE_DEFER, align 4
  %163 = sub nsw i32 0, %162
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %167 = call i32 @PTR_ERR(%struct.reset_control* %166)
  store i32 %167, i32* %2, align 4
  br label %234

168:                                              ; preds = %159
  %169 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %170 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %169, i32 0, i32 3
  store %struct.reset_control* null, %struct.reset_control** %170, align 8
  br label %171

171:                                              ; preds = %168, %150
  %172 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %173 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %172, i32 0, i32 0
  %174 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %175 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call %struct.reset_control* @devm_phy_create(%struct.TYPE_12__* %173, i32 %177, i32* @qcom_usb_hs_phy_ops)
  %179 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %180 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %179, i32 0, i32 0
  store %struct.reset_control* %178, %struct.reset_control** %180, align 8
  %181 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %182 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %181, i32 0, i32 0
  %183 = load %struct.reset_control*, %struct.reset_control** %182, align 8
  %184 = call i64 @IS_ERR(%struct.reset_control* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %171
  %187 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %188 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %187, i32 0, i32 0
  %189 = load %struct.reset_control*, %struct.reset_control** %188, align 8
  %190 = call i32 @PTR_ERR(%struct.reset_control* %189)
  store i32 %190, i32* %2, align 4
  br label %234

191:                                              ; preds = %171
  %192 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %193 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %192, i32 0, i32 0
  %194 = call %struct.reset_control* @extcon_get_edev_by_phandle(%struct.TYPE_12__* %193, i32 0)
  %195 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %196 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %195, i32 0, i32 2
  store %struct.reset_control* %194, %struct.reset_control** %196, align 8
  %197 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %198 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %197, i32 0, i32 2
  %199 = load %struct.reset_control*, %struct.reset_control** %198, align 8
  %200 = call i64 @IS_ERR(%struct.reset_control* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %191
  %203 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %204 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %203, i32 0, i32 2
  %205 = load %struct.reset_control*, %struct.reset_control** %204, align 8
  %206 = call i32 @PTR_ERR(%struct.reset_control* %205)
  %207 = load i32, i32* @ENODEV, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp ne i32 %206, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %202
  %211 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %212 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %211, i32 0, i32 2
  %213 = load %struct.reset_control*, %struct.reset_control** %212, align 8
  %214 = call i32 @PTR_ERR(%struct.reset_control* %213)
  store i32 %214, i32* %2, align 4
  br label %234

215:                                              ; preds = %202
  %216 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %217 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %216, i32 0, i32 2
  store %struct.reset_control* null, %struct.reset_control** %217, align 8
  br label %218

218:                                              ; preds = %215, %191
  %219 = load i32, i32* @qcom_usb_hs_phy_vbus_notifier, align 4
  %220 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %221 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %224 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %223, i32 0, i32 0
  %225 = load %struct.reset_control*, %struct.reset_control** %224, align 8
  %226 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %227 = call i32 @phy_set_drvdata(%struct.reset_control* %225, %struct.qcom_usb_hs_phy* %226)
  %228 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %229 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %228, i32 0, i32 0
  %230 = load i32, i32* @of_phy_simple_xlate, align 4
  %231 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_12__* %229, i32 %230)
  store %struct.phy_provider* %231, %struct.phy_provider** %5, align 8
  %232 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %233 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %232)
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %218, %210, %186, %165, %146, %130, %114, %98, %68, %49, %17
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local %struct.qcom_usb_hs_phy* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ulpi_set_drvdata(%struct.ulpi*, %struct.qcom_usb_hs_phy*) #1

declare dso_local i32 @of_property_count_u8_elems(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @devm_kmalloc_array(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u8_array(i32, i8*, i32*, i32) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_regulator_get(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.reset_control* @devm_phy_create(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local %struct.reset_control* @extcon_get_edev_by_phandle(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @phy_set_drvdata(%struct.reset_control*, %struct.qcom_usb_hs_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
