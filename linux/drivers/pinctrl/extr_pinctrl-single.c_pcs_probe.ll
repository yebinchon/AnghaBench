; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pcs_pdata = type { i64, i64 }
%struct.resource = type { i32 }
%struct.pcs_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_13__*, i32, %struct.TYPE_14__, i32, i32, i32, %struct.resource*, i64, i32, i32, i32, %struct.device_node* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.pcs_soc_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pinctrl-single,register-width\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"register width not specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"pinctrl-single,function-mask\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pinctrl-single,function-off\00", align 1
@PCS_OFF_DISABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"pinctrl-single,bit-per-mux\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to patch #pinctrl-cells\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"could not get resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"could not get mem_region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"could not ioremap\0A\00", align 1
@pcs_readb = common dso_local global i32 0, align 4
@pcs_writeb = common dso_local global i32 0, align 4
@pcs_readw = common dso_local global i32 0, align 4
@pcs_writew = common dso_local global i32 0, align 4
@pcs_readl = common dso_local global i32 0, align 4
@pcs_writel = common dso_local global i32 0, align 4
@pcs_pinctrl_ops = common dso_local global i32 0, align 4
@pcs_pinmux_ops = common dso_local global i32 0, align 4
@PCS_HAS_PINCONF = common dso_local global i64 0, align 8
@pcs_pinconf_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"could not register single pinctrl driver\0A\00", align 1
@PCS_FEAT_IRQ = common dso_local global i32 0, align 4
@PCS_HAS_IRQ = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"initialized with no interrupts\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%i pins, size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pcs_pdata*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.pcs_device*, align 8
  %8 = alloca %struct.pcs_soc_data*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.pcs_soc_data* @of_device_get_match_data(%struct.TYPE_13__* %15)
  store %struct.pcs_soc_data* %16, %struct.pcs_soc_data** %8, align 8
  %17 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %8, align 8
  %18 = icmp ne %struct.pcs_soc_data* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %373

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.pcs_device* @devm_kzalloc(%struct.TYPE_13__* %28, i32 160, i32 %29)
  store %struct.pcs_device* %30, %struct.pcs_device** %7, align 8
  %31 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %32 = icmp ne %struct.pcs_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %373

36:                                               ; preds = %26
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %40 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %39, i32 0, i32 8
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %40, align 8
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %43 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %42, i32 0, i32 19
  store %struct.device_node* %41, %struct.device_node** %43, align 8
  %44 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %45 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %44, i32 0, i32 18
  %46 = call i32 @raw_spin_lock_init(i32* %45)
  %47 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %48 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %47, i32 0, i32 17
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %51 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %50, i32 0, i32 16
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %8, align 8
  %54 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %57 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %59 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %58, i32 0, i32 10
  %60 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %8, align 8
  %61 = call i32 @memcpy(%struct.TYPE_14__* %59, %struct.pcs_soc_data* %60, i32 4)
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %64 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %63, i32 0, i32 0
  %65 = call i32 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %36
  %69 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %70 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %69, i32 0, i32 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = call i32 @dev_err(%struct.TYPE_13__* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %373

74:                                               ; preds = %36
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %77 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %76, i32 0, i32 1
  %78 = call i32 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %74
  %82 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %83 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @__ffs(i32 %84)
  %86 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %87 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %89 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %92 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %90, %93
  %95 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %96 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %104

97:                                               ; preds = %74
  %98 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %99 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %101 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  %102 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %103 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %81
  %105 = load %struct.device_node*, %struct.device_node** %4, align 8
  %106 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %107 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %106, i32 0, i32 4
  %108 = call i32 @of_property_read_u32(%struct.device_node* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* @PCS_OFF_DISABLED, align 4
  %113 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %114 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %104
  %116 = load %struct.device_node*, %struct.device_node** %4, align 8
  %117 = call i64 @of_property_read_bool(%struct.device_node* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %119 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %118, i32 0, i32 15
  store i64 %117, i64* %119, align 8
  %120 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %121 = load %struct.device_node*, %struct.device_node** %4, align 8
  %122 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %123 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %122, i32 0, i32 15
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 2, i32 1
  %128 = call i32 @pcs_quirk_missing_pinctrl_cells(%struct.pcs_device* %120, %struct.device_node* %121, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %115
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(%struct.TYPE_13__* %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %2, align 4
  br label %373

136:                                              ; preds = %115
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = load i32, i32* @IORESOURCE_MEM, align 4
  %139 = call %struct.resource* @platform_get_resource(%struct.platform_device* %137, i32 %138, i32 0)
  store %struct.resource* %139, %struct.resource** %6, align 8
  %140 = load %struct.resource*, %struct.resource** %6, align 8
  %141 = icmp ne %struct.resource* %140, null
  br i1 %141, label %149, label %142

142:                                              ; preds = %136
  %143 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %144 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %143, i32 0, i32 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = call i32 @dev_err(%struct.TYPE_13__* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %373

149:                                              ; preds = %136
  %150 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %151 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %150, i32 0, i32 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = load %struct.resource*, %struct.resource** %6, align 8
  %154 = getelementptr inbounds %struct.resource, %struct.resource* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.resource*, %struct.resource** %6, align 8
  %157 = call i32 @resource_size(%struct.resource* %156)
  %158 = load i32, i32* @DRIVER_NAME, align 4
  %159 = call %struct.resource* @devm_request_mem_region(%struct.TYPE_13__* %152, i32 %155, i32 %157, i32 %158)
  %160 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %161 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %160, i32 0, i32 14
  store %struct.resource* %159, %struct.resource** %161, align 8
  %162 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %163 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %162, i32 0, i32 14
  %164 = load %struct.resource*, %struct.resource** %163, align 8
  %165 = icmp ne %struct.resource* %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %149
  %167 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %168 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %167, i32 0, i32 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = call i32 @dev_err(%struct.TYPE_13__* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i32, i32* @EBUSY, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %373

173:                                              ; preds = %149
  %174 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %175 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %174, i32 0, i32 14
  %176 = load %struct.resource*, %struct.resource** %175, align 8
  %177 = call i32 @resource_size(%struct.resource* %176)
  %178 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %179 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  %180 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %181 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %180, i32 0, i32 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %184 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %183, i32 0, i32 14
  %185 = load %struct.resource*, %struct.resource** %184, align 8
  %186 = getelementptr inbounds %struct.resource, %struct.resource* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %189 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @devm_ioremap(%struct.TYPE_13__* %182, i32 %187, i32 %190)
  %192 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %193 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %192, i32 0, i32 13
  store i32 %191, i32* %193, align 8
  %194 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %195 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %194, i32 0, i32 13
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %173
  %199 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %200 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %199, i32 0, i32 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = call i32 @dev_err(%struct.TYPE_13__* %201, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %203 = load i32, i32* @ENODEV, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %2, align 4
  br label %373

205:                                              ; preds = %173
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %208 = call i32 @platform_set_drvdata(%struct.platform_device* %206, %struct.pcs_device* %207)
  %209 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %210 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %233 [
    i32 8, label %212
    i32 16, label %219
    i32 32, label %226
  ]

212:                                              ; preds = %205
  %213 = load i32, i32* @pcs_readb, align 4
  %214 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %215 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %214, i32 0, i32 12
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @pcs_writeb, align 4
  %217 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %218 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %217, i32 0, i32 11
  store i32 %216, i32* %218, align 8
  br label %234

219:                                              ; preds = %205
  %220 = load i32, i32* @pcs_readw, align 4
  %221 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %222 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %221, i32 0, i32 12
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* @pcs_writew, align 4
  %224 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %225 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %224, i32 0, i32 11
  store i32 %223, i32* %225, align 8
  br label %234

226:                                              ; preds = %205
  %227 = load i32, i32* @pcs_readl, align 4
  %228 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %229 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %228, i32 0, i32 12
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @pcs_writel, align 4
  %231 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %232 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %231, i32 0, i32 11
  store i32 %230, i32* %232, align 8
  br label %234

233:                                              ; preds = %205
  br label %234

234:                                              ; preds = %233, %226, %219, %212
  %235 = load i32, i32* @DRIVER_NAME, align 4
  %236 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %237 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %236, i32 0, i32 7
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 5
  store i32 %235, i32* %238, align 8
  %239 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %240 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %239, i32 0, i32 7
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 4
  store i32* @pcs_pinctrl_ops, i32** %241, align 8
  %242 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %243 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %242, i32 0, i32 7
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 3
  store i32* @pcs_pinmux_ops, i32** %244, align 8
  %245 = load i64, i64* @PCS_HAS_PINCONF, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %234
  %248 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %249 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  store i32* @pcs_pinconf_ops, i32** %250, align 8
  br label %251

251:                                              ; preds = %247, %234
  %252 = load i32, i32* @THIS_MODULE, align 4
  %253 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %254 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  store i32 %252, i32* %255, align 4
  %256 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %257 = call i32 @pcs_allocate_pin_table(%struct.pcs_device* %256)
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %251
  br label %369

261:                                              ; preds = %251
  %262 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %263 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %262, i32 0, i32 7
  %264 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %265 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %264, i32 0, i32 8
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %265, align 8
  %267 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %268 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %269 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %268, i32 0, i32 5
  %270 = call i32 @pinctrl_register_and_init(%struct.TYPE_12__* %263, %struct.TYPE_13__* %266, %struct.pcs_device* %267, i32* %269)
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %261
  %274 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %275 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %274, i32 0, i32 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = call i32 @dev_err(%struct.TYPE_13__* %276, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %369

278:                                              ; preds = %261
  %279 = load %struct.device_node*, %struct.device_node** %4, align 8
  %280 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %281 = call i32 @pcs_add_gpio_func(%struct.device_node* %279, %struct.pcs_device* %280)
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %369

285:                                              ; preds = %278
  %286 = load %struct.device_node*, %struct.device_node** %4, align 8
  %287 = call i64 @irq_of_parse_and_map(%struct.device_node* %286, i32 0)
  %288 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %289 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %288, i32 0, i32 10
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  %291 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %292 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %291, i32 0, i32 10
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %285
  %297 = load i32, i32* @PCS_FEAT_IRQ, align 4
  %298 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %299 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %296, %285
  %303 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %304 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %303, i32 0, i32 0
  %305 = call %struct.pcs_pdata* @dev_get_platdata(%struct.TYPE_13__* %304)
  store %struct.pcs_pdata* %305, %struct.pcs_pdata** %5, align 8
  %306 = load %struct.pcs_pdata*, %struct.pcs_pdata** %5, align 8
  %307 = icmp ne %struct.pcs_pdata* %306, null
  br i1 %307, label %308, label %338

308:                                              ; preds = %302
  %309 = load %struct.pcs_pdata*, %struct.pcs_pdata** %5, align 8
  %310 = getelementptr inbounds %struct.pcs_pdata, %struct.pcs_pdata* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %308
  %314 = load %struct.pcs_pdata*, %struct.pcs_pdata** %5, align 8
  %315 = getelementptr inbounds %struct.pcs_pdata, %struct.pcs_pdata* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %318 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %317, i32 0, i32 10
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  store i64 %316, i64* %319, align 8
  br label %320

320:                                              ; preds = %313, %308
  %321 = load %struct.pcs_pdata*, %struct.pcs_pdata** %5, align 8
  %322 = getelementptr inbounds %struct.pcs_pdata, %struct.pcs_pdata* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %320
  %326 = load %struct.pcs_pdata*, %struct.pcs_pdata** %5, align 8
  %327 = getelementptr inbounds %struct.pcs_pdata, %struct.pcs_pdata* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %330 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %329, i32 0, i32 10
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 0
  store i64 %328, i64* %331, align 8
  %332 = load i32, i32* @PCS_FEAT_IRQ, align 4
  %333 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %334 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %325, %320
  br label %338

338:                                              ; preds = %337, %302
  %339 = load i64, i64* @PCS_HAS_IRQ, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %353

341:                                              ; preds = %338
  %342 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %343 = load %struct.device_node*, %struct.device_node** %4, align 8
  %344 = call i32 @pcs_irq_init_chained_handler(%struct.pcs_device* %342, %struct.device_node* %343)
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %9, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %341
  %348 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %349 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %348, i32 0, i32 8
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %349, align 8
  %351 = call i32 @dev_warn(%struct.TYPE_13__* %350, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %352

352:                                              ; preds = %347, %341
  br label %353

353:                                              ; preds = %352, %338
  %354 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %355 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %354, i32 0, i32 8
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %355, align 8
  %357 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %358 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %357, i32 0, i32 7
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %362 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @dev_info(%struct.TYPE_13__* %356, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %360, i32 %363)
  %365 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %366 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @pinctrl_enable(i32 %367)
  store i32 %368, i32* %2, align 4
  br label %373

369:                                              ; preds = %284, %273, %260
  %370 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %371 = call i32 @pcs_free_resources(%struct.pcs_device* %370)
  %372 = load i32, i32* %9, align 4
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %369, %353, %198, %166, %142, %131, %68, %33, %23
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local %struct.pcs_soc_data* @of_device_get_match_data(%struct.TYPE_13__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.pcs_device* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.pcs_soc_data*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @pcs_quirk_missing_pinctrl_cells(%struct.pcs_device*, %struct.device_node*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.resource* @devm_request_mem_region(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pcs_device*) #1

declare dso_local i32 @pcs_allocate_pin_table(%struct.pcs_device*) #1

declare dso_local i32 @pinctrl_register_and_init(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.pcs_device*, i32*) #1

declare dso_local i32 @pcs_add_gpio_func(%struct.device_node*, %struct.pcs_device*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local %struct.pcs_pdata* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local i32 @pcs_irq_init_chained_handler(%struct.pcs_device*, %struct.device_node*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @pcs_free_resources(%struct.pcs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
