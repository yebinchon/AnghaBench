; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_padctl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_padctl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tegra_xusb_padctl_soc = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.tegra_xusb_padctl*)*, %struct.tegra_xusb_padctl* (%struct.TYPE_16__*, %struct.tegra_xusb_padctl_soc*)* }
%struct.tegra_xusb_padctl = type { %struct.tegra_xusb_padctl*, %struct.TYPE_17__*, %struct.TYPE_14__*, %struct.tegra_xusb_padctl*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.of_device_id = type { %struct.tegra_xusb_padctl_soc* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pads\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"deprecated DT, using legacy driver\0A\00", align 1
@tegra_xusb_padctl_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to setup pads: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to setup XUSB ports: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_xusb_padctl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_padctl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_xusb_padctl_soc*, align 8
  %6 = alloca %struct.tegra_xusb_padctl*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @tegra_xusb_padctl_legacy_probe(%struct.platform_device* %23)
  store i32 %24, i32* %2, align 4
  br label %243

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load i32, i32* @tegra_xusb_padctl_of_match, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  %33 = call %struct.of_device_id* @of_match_node(i32 %28, %struct.device_node* %32)
  store %struct.of_device_id* %33, %struct.of_device_id** %7, align 8
  %34 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %35 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %34, i32 0, i32 0
  %36 = load %struct.tegra_xusb_padctl_soc*, %struct.tegra_xusb_padctl_soc** %35, align 8
  store %struct.tegra_xusb_padctl_soc* %36, %struct.tegra_xusb_padctl_soc** %5, align 8
  %37 = load %struct.tegra_xusb_padctl_soc*, %struct.tegra_xusb_padctl_soc** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, %struct.tegra_xusb_padctl_soc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load %struct.tegra_xusb_padctl* (%struct.TYPE_16__*, %struct.tegra_xusb_padctl_soc*)*, %struct.tegra_xusb_padctl* (%struct.TYPE_16__*, %struct.tegra_xusb_padctl_soc*)** %40, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.tegra_xusb_padctl_soc*, %struct.tegra_xusb_padctl_soc** %5, align 8
  %45 = call %struct.tegra_xusb_padctl* %41(%struct.TYPE_16__* %43, %struct.tegra_xusb_padctl_soc* %44)
  store %struct.tegra_xusb_padctl* %45, %struct.tegra_xusb_padctl** %6, align 8
  %46 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %47 = call i64 @IS_ERR(%struct.tegra_xusb_padctl* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %51 = call i32 @PTR_ERR(%struct.tegra_xusb_padctl* %50)
  store i32 %51, i32* %2, align 4
  br label %243

52:                                               ; preds = %25
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %53, %struct.tegra_xusb_padctl* %54)
  %56 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %57 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %56, i32 0, i32 7
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %60 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %59, i32 0, i32 6
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %62, i32 0, i32 5
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %66 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %65, i32 0, i32 4
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load i32, i32* @IORESOURCE_MEM, align 4
  %70 = call %struct.resource* @platform_get_resource(%struct.platform_device* %68, i32 %69, i32 0)
  store %struct.resource* %70, %struct.resource** %8, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.resource*, %struct.resource** %8, align 8
  %74 = call %struct.tegra_xusb_padctl* @devm_ioremap_resource(%struct.TYPE_16__* %72, %struct.resource* %73)
  %75 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %76 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %75, i32 0, i32 3
  store %struct.tegra_xusb_padctl* %74, %struct.tegra_xusb_padctl** %76, align 8
  %77 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %78 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %77, i32 0, i32 3
  %79 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %78, align 8
  %80 = call i64 @IS_ERR(%struct.tegra_xusb_padctl* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %52
  %83 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %84 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %83, i32 0, i32 3
  %85 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %84, align 8
  %86 = call i32 @PTR_ERR(%struct.tegra_xusb_padctl* %85)
  store i32 %86, i32* %10, align 4
  br label %234

87:                                               ; preds = %52
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call %struct.tegra_xusb_padctl* @devm_reset_control_get(%struct.TYPE_16__* %89, i32* null)
  %91 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %92 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %91, i32 0, i32 0
  store %struct.tegra_xusb_padctl* %90, %struct.tegra_xusb_padctl** %92, align 8
  %93 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %94 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %93, i32 0, i32 0
  %95 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %94, align 8
  %96 = call i64 @IS_ERR(%struct.tegra_xusb_padctl* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %100 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %99, i32 0, i32 0
  %101 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.tegra_xusb_padctl* %101)
  store i32 %102, i32* %10, align 4
  br label %234

103:                                              ; preds = %87
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %107 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %106, i32 0, i32 2
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.TYPE_17__* @devm_kcalloc(%struct.TYPE_16__* %105, i32 %110, i32 4, i32 %111)
  %113 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %114 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %113, i32 0, i32 1
  store %struct.TYPE_17__* %112, %struct.TYPE_17__** %114, align 8
  %115 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %116 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %115, i32 0, i32 1
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = icmp ne %struct.TYPE_17__* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %103
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %234

122:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %148, %122
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %126 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %125, i32 0, i32 2
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %124, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %123
  %132 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %133 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %142 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %131
  %149 = load i32, i32* %9, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %123

151:                                              ; preds = %123
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %155 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %160 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %159, i32 0, i32 1
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = call i32 @devm_regulator_bulk_get(%struct.TYPE_16__* %153, i32 %158, %struct.TYPE_17__* %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %151
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @dev_err(%struct.TYPE_16__* %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %234

170:                                              ; preds = %151
  %171 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %172 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %171, i32 0, i32 0
  %173 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %172, align 8
  %174 = call i32 @reset_control_deassert(%struct.tegra_xusb_padctl* %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %234

178:                                              ; preds = %170
  %179 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %180 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %179, i32 0, i32 2
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %185 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %184, i32 0, i32 1
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = call i32 @regulator_bulk_enable(i32 %183, %struct.TYPE_17__* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %178
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @dev_err(%struct.TYPE_16__* %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  br label %229

195:                                              ; preds = %178
  %196 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %197 = call i32 @tegra_xusb_setup_pads(%struct.tegra_xusb_padctl* %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @dev_err(%struct.TYPE_16__* %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  br label %219

205:                                              ; preds = %195
  %206 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %207 = call i32 @tegra_xusb_setup_ports(%struct.tegra_xusb_padctl* %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @dev_err(%struct.TYPE_16__* %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %213)
  br label %216

215:                                              ; preds = %205
  store i32 0, i32* %2, align 4
  br label %243

216:                                              ; preds = %210
  %217 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %218 = call i32 @tegra_xusb_remove_pads(%struct.tegra_xusb_padctl* %217)
  br label %219

219:                                              ; preds = %216, %200
  %220 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %221 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %220, i32 0, i32 2
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %226 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %225, i32 0, i32 1
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = call i32 @regulator_bulk_disable(i32 %224, %struct.TYPE_17__* %227)
  br label %229

229:                                              ; preds = %219, %190
  %230 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %231 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %230, i32 0, i32 0
  %232 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %231, align 8
  %233 = call i32 @reset_control_assert(%struct.tegra_xusb_padctl* %232)
  br label %234

234:                                              ; preds = %229, %177, %165, %119, %98, %82
  %235 = load %struct.tegra_xusb_padctl_soc*, %struct.tegra_xusb_padctl_soc** %5, align 8
  %236 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, %struct.tegra_xusb_padctl_soc* %235, i32 0, i32 0
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32 (%struct.tegra_xusb_padctl*)*, i32 (%struct.tegra_xusb_padctl*)** %238, align 8
  %240 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %241 = call i32 %239(%struct.tegra_xusb_padctl* %240)
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %234, %215, %49, %19
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @tegra_xusb_padctl_legacy_probe(%struct.platform_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_xusb_padctl*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.tegra_xusb_padctl* @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local %struct.tegra_xusb_padctl* @devm_reset_control_get(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_17__* @devm_kcalloc(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @reset_control_deassert(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @tegra_xusb_setup_pads(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @tegra_xusb_setup_ports(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @tegra_xusb_remove_pads(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @reset_control_assert(%struct.tegra_xusb_padctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
