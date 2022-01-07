; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_moore_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_moore_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mtk_pin_soc = type { i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.resource = type { i32 }
%struct.mtk_pinctrl = type { i32, i32, %struct.mtk_pin_soc*, i32*, %struct.TYPE_12__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"SoC should be assigned at least one register base\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"missing IO resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@mtk_desc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@mtk_custom_bindings = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to build groups\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to build functions\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to add EINT, but pinctrl still can work\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to add gpio_chip\0A\00", align 1
@mtk_conf_items = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_moore_pinctrl_probe(%struct.platform_device* %0, %struct.mtk_pin_soc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mtk_pin_soc*, align 8
  %6 = alloca %struct.pinctrl_pin_desc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.mtk_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mtk_pin_soc* %1, %struct.mtk_pin_soc** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mtk_pinctrl* @devm_kzalloc(%struct.TYPE_12__* %12, i32 32, i32 %13)
  store %struct.mtk_pinctrl* %14, %struct.mtk_pinctrl** %8, align 8
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %16 = icmp ne %struct.mtk_pinctrl* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %266

20:                                               ; preds = %2
  %21 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %5, align 8
  %22 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %22, i32 0, i32 2
  store %struct.mtk_pin_soc* %21, %struct.mtk_pin_soc** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %27 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %26, i32 0, i32 4
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %27, align 8
  %28 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %29 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %28, i32 0, i32 2
  %30 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %29, align 8
  %31 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %20
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_12__* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %266

40:                                               ; preds = %20
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %44 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %43, i32 0, i32 2
  %45 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %44, align 8
  %46 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @devm_kmalloc_array(%struct.TYPE_12__* %42, i32 %47, i32 4, i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %52 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %54 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %266

60:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %120, %60
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %64 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %63, i32 0, i32 2
  %65 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %64, align 8
  %66 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %123

69:                                               ; preds = %61
  %70 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %71 = load i32, i32* @IORESOURCE_MEM, align 4
  %72 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %73 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %72, i32 0, i32 2
  %74 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %73, align 8
  %75 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %70, i32 %71, i32 %80)
  store %struct.resource* %81, %struct.resource** %7, align 8
  %82 = load %struct.resource*, %struct.resource** %7, align 8
  %83 = icmp ne %struct.resource* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %69
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_12__* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ENXIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %266

90:                                               ; preds = %69
  %91 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.resource*, %struct.resource** %7, align 8
  %94 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %92, %struct.resource* %93)
  %95 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %96 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %102 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @IS_ERR(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %90
  %111 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %112 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %3, align 4
  br label %266

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %61

123:                                              ; preds = %61
  %124 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %125 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %124, i32 0, i32 2
  %126 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %125, align 8
  %127 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %130 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %134 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %133, i32 0, i32 2
  %135 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %134, align 8
  %136 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @devm_kmalloc_array(%struct.TYPE_12__* %132, i32 %137, i32 8, i32 %138)
  %140 = bitcast i8* %139 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %140, %struct.pinctrl_pin_desc** %6, align 8
  %141 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %142 = icmp ne %struct.pinctrl_pin_desc* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %123
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %266

146:                                              ; preds = %123
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %186, %146
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %150 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %149, i32 0, i32 2
  %151 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %150, align 8
  %152 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %148, %153
  br i1 %154, label %155, label %189

155:                                              ; preds = %147
  %156 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %157 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %156, i32 0, i32 2
  %158 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %157, align 8
  %159 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %166, i64 %168
  %170 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %169, i32 0, i32 1
  store i32 %165, i32* %170, align 4
  %171 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %172 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %171, i32 0, i32 2
  %173 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %172, align 8
  %174 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %173, i32 0, i32 2
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %181, i64 %183
  %185 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %184, i32 0, i32 0
  store i32 %180, i32* %185, align 4
  br label %186

186:                                              ; preds = %155
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %147

189:                                              ; preds = %147
  %190 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  store %struct.pinctrl_pin_desc* %190, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 4), align 8
  %191 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %192 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %191, i32 0, i32 2
  %193 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %192, align 8
  %194 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 0), align 8
  %196 = load i32, i32* @mtk_custom_bindings, align 4
  %197 = call i32 @ARRAY_SIZE(i32 %196)
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 3), align 4
  %198 = load i32, i32* @mtk_custom_bindings, align 4
  store i32 %198, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 2), align 8
  %199 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %202 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %203 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %202, i32 0, i32 1
  %204 = call i32 @devm_pinctrl_register_and_init(%struct.TYPE_12__* %200, %struct.TYPE_11__* @mtk_desc, %struct.mtk_pinctrl* %201, i32* %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %189
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %3, align 4
  br label %266

209:                                              ; preds = %189
  %210 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %211 = call i32 @mtk_build_groups(%struct.mtk_pinctrl* %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @dev_err(%struct.TYPE_12__* %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %3, align 4
  br label %266

219:                                              ; preds = %209
  %220 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %221 = call i32 @mtk_build_functions(%struct.mtk_pinctrl* %220)
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @dev_err(%struct.TYPE_12__* %226, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %3, align 4
  br label %266

229:                                              ; preds = %219
  %230 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %231 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @pinctrl_enable(i32 %232)
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %3, align 4
  br label %266

238:                                              ; preds = %229
  %239 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %240 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %241 = call i32 @mtk_build_eint(%struct.mtk_pinctrl* %239, %struct.platform_device* %240)
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %246 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %245, i32 0, i32 0
  %247 = call i32 @dev_warn(%struct.TYPE_12__* %246, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %248

248:                                              ; preds = %244, %238
  %249 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %250 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @mtk_build_gpiochip(%struct.mtk_pinctrl* %249, i32 %253)
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %248
  %258 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %259 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %258, i32 0, i32 0
  %260 = call i32 @dev_err(%struct.TYPE_12__* %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %261 = load i32, i32* %9, align 4
  store i32 %261, i32* %3, align 4
  br label %266

262:                                              ; preds = %248
  %263 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %264 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %265 = call i32 @platform_set_drvdata(%struct.platform_device* %263, %struct.mtk_pinctrl* %264)
  store i32 0, i32* %3, align 4
  br label %266

266:                                              ; preds = %262, %257, %236, %224, %214, %207, %143, %110, %84, %57, %34, %17
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.mtk_pinctrl* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @devm_kmalloc_array(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_pinctrl_register_and_init(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.mtk_pinctrl*, i32*) #1

declare dso_local i32 @mtk_build_groups(%struct.mtk_pinctrl*) #1

declare dso_local i32 @mtk_build_functions(%struct.mtk_pinctrl*) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @mtk_build_eint(%struct.mtk_pinctrl*, %struct.platform_device*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @mtk_build_gpiochip(%struct.mtk_pinctrl*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
