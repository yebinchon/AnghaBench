; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_msm.c_ci_hdrc_msm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_msm.c_ci_hdrc_msm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.ci_hdrc_msm = type { %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.TYPE_14__, i32, %struct.reset_control*, %struct.TYPE_16__, %struct.reset_control* }
%struct.TYPE_14__ = type { i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32 }
%struct.reset_control = type { %struct.TYPE_15__, i32, i32 }
%struct.clk = type { %struct.TYPE_15__, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ci_hdrc_msm_probe\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ci_hdrc_msm\00", align 1
@DEF_CAPOFFSET = common dso_local global i32 0, align 4
@CI_HDRC_REGS_SHARED = common dso_local global i32 0, align 4
@CI_HDRC_DISABLE_STREAMING = common dso_local global i32 0, align 4
@CI_HDRC_OVERRIDE_AHB_BURST = common dso_local global i32 0, align 4
@CI_HDRC_OVERRIDE_PHY_CONTROL = common dso_local global i32 0, align 4
@ci_hdrc_msm_notify_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ci_hdrc_msm_reset_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"qcom,usb-hsic-phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"ci_hdrc_add_device failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ci_hdrc_msm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_msm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ci_hdrc_msm*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.reset_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(%struct.TYPE_15__* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ci_hdrc_msm* @devm_kzalloc(%struct.TYPE_15__* %15, i32 96, i32 %16)
  store %struct.ci_hdrc_msm* %17, %struct.ci_hdrc_msm** %4, align 8
  %18 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %19 = icmp ne %struct.ci_hdrc_msm* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %266

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = bitcast %struct.platform_device* %24 to %struct.reset_control*
  %26 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %27 = call i32 @platform_set_drvdata(%struct.reset_control* %25, %struct.ci_hdrc_msm* %26)
  %28 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %29 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @DEF_CAPOFFSET, align 4
  %32 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %33 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @CI_HDRC_REGS_SHARED, align 4
  %36 = load i32, i32* @CI_HDRC_DISABLE_STREAMING, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CI_HDRC_OVERRIDE_AHB_BURST, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CI_HDRC_OVERRIDE_PHY_CONTROL, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %43 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @ci_hdrc_msm_notify_event, align 4
  %46 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %47 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call %struct.reset_control* @devm_reset_control_get(%struct.TYPE_15__* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.reset_control* %51, %struct.reset_control** %7, align 8
  %52 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %53 = call i64 @IS_ERR(%struct.reset_control* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %23
  %56 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %57 = call i32 @PTR_ERR(%struct.reset_control* %56)
  store i32 %57, i32* %2, align 4
  br label %266

58:                                               ; preds = %23
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_15__* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %62 = bitcast %struct.reset_control* %61 to %struct.clk*
  store %struct.clk* %62, %struct.clk** %6, align 8
  %63 = bitcast %struct.clk* %62 to %struct.reset_control*
  %64 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %65 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %64, i32 0, i32 0
  store %struct.reset_control* %63, %struct.reset_control** %65, align 8
  %66 = load %struct.clk*, %struct.clk** %6, align 8
  %67 = bitcast %struct.clk* %66 to %struct.reset_control*
  %68 = call i64 @IS_ERR(%struct.reset_control* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load %struct.clk*, %struct.clk** %6, align 8
  %72 = bitcast %struct.clk* %71 to %struct.reset_control*
  %73 = call i32 @PTR_ERR(%struct.reset_control* %72)
  store i32 %73, i32* %2, align 4
  br label %266

74:                                               ; preds = %58
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_15__* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %78 = bitcast %struct.reset_control* %77 to %struct.clk*
  store %struct.clk* %78, %struct.clk** %6, align 8
  %79 = bitcast %struct.clk* %78 to %struct.reset_control*
  %80 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %81 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %80, i32 0, i32 1
  store %struct.reset_control* %79, %struct.reset_control** %81, align 8
  %82 = load %struct.clk*, %struct.clk** %6, align 8
  %83 = bitcast %struct.clk* %82 to %struct.reset_control*
  %84 = call i64 @IS_ERR(%struct.reset_control* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load %struct.clk*, %struct.clk** %6, align 8
  %88 = bitcast %struct.clk* %87 to %struct.reset_control*
  %89 = call i32 @PTR_ERR(%struct.reset_control* %88)
  store i32 %89, i32* %2, align 4
  br label %266

90:                                               ; preds = %74
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call %struct.reset_control* @devm_clk_get_optional(%struct.TYPE_15__* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %94 = bitcast %struct.reset_control* %93 to %struct.clk*
  store %struct.clk* %94, %struct.clk** %6, align 8
  %95 = bitcast %struct.clk* %94 to %struct.reset_control*
  %96 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %97 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %96, i32 0, i32 5
  store %struct.reset_control* %95, %struct.reset_control** %97, align 8
  %98 = load %struct.clk*, %struct.clk** %6, align 8
  %99 = bitcast %struct.clk* %98 to %struct.reset_control*
  %100 = call i64 @IS_ERR(%struct.reset_control* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = load %struct.clk*, %struct.clk** %6, align 8
  %104 = bitcast %struct.clk* %103 to %struct.reset_control*
  %105 = call i32 @PTR_ERR(%struct.reset_control* %104)
  store i32 %105, i32* %2, align 4
  br label %266

106:                                              ; preds = %90
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = bitcast %struct.platform_device* %107 to %struct.reset_control*
  %109 = call %struct.reset_control* @devm_platform_ioremap_resource(%struct.reset_control* %108, i32 1)
  %110 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %111 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %110, i32 0, i32 7
  store %struct.reset_control* %109, %struct.reset_control** %111, align 8
  %112 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %113 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %112, i32 0, i32 7
  %114 = load %struct.reset_control*, %struct.reset_control** %113, align 8
  %115 = call i64 @IS_ERR(%struct.reset_control* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %119 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %118, i32 0, i32 7
  %120 = load %struct.reset_control*, %struct.reset_control** %119, align 8
  %121 = call i32 @PTR_ERR(%struct.reset_control* %120)
  store i32 %121, i32* %2, align 4
  br label %266

122:                                              ; preds = %106
  %123 = load i32, i32* @THIS_MODULE, align 4
  %124 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %125 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 8
  %127 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %128 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  store i32* @ci_hdrc_msm_reset_ops, i32** %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %135 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %138 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 2, i32* %139, align 8
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %143 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %142, i32 0, i32 6
  %144 = call i32 @devm_reset_controller_register(%struct.TYPE_15__* %141, %struct.TYPE_16__* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %122
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %266

149:                                              ; preds = %122
  %150 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %151 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %150, i32 0, i32 5
  %152 = load %struct.reset_control*, %struct.reset_control** %151, align 8
  %153 = call i32 @clk_prepare_enable(%struct.reset_control* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %2, align 4
  br label %266

158:                                              ; preds = %149
  %159 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %160 = call i32 @reset_control_assert(%struct.reset_control* %159)
  %161 = call i32 @usleep_range(i32 10000, i32 12000)
  %162 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %163 = call i32 @reset_control_deassert(%struct.reset_control* %162)
  %164 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %165 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %164, i32 0, i32 5
  %166 = load %struct.reset_control*, %struct.reset_control** %165, align 8
  %167 = call i32 @clk_disable_unprepare(%struct.reset_control* %166)
  %168 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %169 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %168, i32 0, i32 0
  %170 = load %struct.reset_control*, %struct.reset_control** %169, align 8
  %171 = call i32 @clk_prepare_enable(%struct.reset_control* %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %158
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %2, align 4
  br label %266

176:                                              ; preds = %158
  %177 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %178 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %177, i32 0, i32 1
  %179 = load %struct.reset_control*, %struct.reset_control** %178, align 8
  %180 = call i32 @clk_prepare_enable(%struct.reset_control* %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %260

184:                                              ; preds = %176
  %185 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = bitcast %struct.platform_device* %186 to %struct.reset_control*
  %188 = call i32 @ci_hdrc_msm_mux_phy(%struct.ci_hdrc_msm* %185, %struct.reset_control* %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %255

192:                                              ; preds = %184
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.device_node* @of_get_child_by_name(i32 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store %struct.device_node* %197, %struct.device_node** %9, align 8
  %198 = load %struct.device_node*, %struct.device_node** %9, align 8
  %199 = icmp ne %struct.device_node* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %192
  %201 = load %struct.device_node*, %struct.device_node** %9, align 8
  %202 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %201, i32* null)
  store %struct.device_node* %202, %struct.device_node** %10, align 8
  %203 = load %struct.device_node*, %struct.device_node** %10, align 8
  %204 = call i32 @of_device_is_compatible(%struct.device_node* %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %205 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %206 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 8
  %207 = load %struct.device_node*, %struct.device_node** %10, align 8
  %208 = call i32 @of_node_put(%struct.device_node* %207)
  br label %209

209:                                              ; preds = %200, %192
  %210 = load %struct.device_node*, %struct.device_node** %9, align 8
  %211 = call i32 @of_node_put(%struct.device_node* %210)
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %221 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %220, i32 0, i32 3
  %222 = call %struct.reset_control* @ci_hdrc_add_device(%struct.TYPE_15__* %213, i32 %216, i32 %219, %struct.TYPE_14__* %221)
  %223 = bitcast %struct.reset_control* %222 to %struct.platform_device*
  store %struct.platform_device* %223, %struct.platform_device** %5, align 8
  %224 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %225 = bitcast %struct.platform_device* %224 to %struct.reset_control*
  %226 = call i64 @IS_ERR(%struct.reset_control* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %209
  %229 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %230 = bitcast %struct.platform_device* %229 to %struct.reset_control*
  %231 = call i32 @PTR_ERR(%struct.reset_control* %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @EPROBE_DEFER, align 4
  %234 = sub nsw i32 0, %233
  %235 = icmp ne i32 %232, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %228
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 @dev_err(%struct.TYPE_15__* %238, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %240

240:                                              ; preds = %236, %228
  br label %255

241:                                              ; preds = %209
  %242 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %243 = bitcast %struct.platform_device* %242 to %struct.reset_control*
  %244 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %245 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %244, i32 0, i32 2
  store %struct.reset_control* %243, %struct.reset_control** %245, align 8
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %246, i32 0, i32 0
  %248 = call i32 @pm_runtime_set_active(%struct.TYPE_15__* %247)
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = call i32 @pm_runtime_no_callbacks(%struct.TYPE_15__* %250)
  %252 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %253 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %252, i32 0, i32 0
  %254 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %253)
  store i32 0, i32* %2, align 4
  br label %266

255:                                              ; preds = %240, %191
  %256 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %257 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %256, i32 0, i32 1
  %258 = load %struct.reset_control*, %struct.reset_control** %257, align 8
  %259 = call i32 @clk_disable_unprepare(%struct.reset_control* %258)
  br label %260

260:                                              ; preds = %255, %183
  %261 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %262 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %261, i32 0, i32 0
  %263 = load %struct.reset_control*, %struct.reset_control** %262, align 8
  %264 = call i32 @clk_disable_unprepare(%struct.reset_control* %263)
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %260, %241, %174, %156, %147, %117, %102, %86, %70, %55, %20
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.ci_hdrc_msm* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.reset_control*, %struct.ci_hdrc_msm*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.reset_control* @devm_clk_get_optional(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.reset_control* @devm_platform_ioremap_resource(%struct.reset_control*, i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

declare dso_local i32 @ci_hdrc_msm_mux_phy(%struct.ci_hdrc_msm*, %struct.reset_control*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, i32*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.reset_control* @ci_hdrc_add_device(%struct.TYPE_15__*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
