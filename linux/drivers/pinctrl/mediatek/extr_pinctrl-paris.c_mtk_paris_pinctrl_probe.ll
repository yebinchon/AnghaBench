; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_paris_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_paris_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mtk_pin_soc = type { i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mtk_pinctrl = type { i32, i32, %struct.mtk_pin_soc*, i32*, %struct.TYPE_12__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"SoC should be assigned at least one register base\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"missing IO resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"build state failed: %d\0A\00", align 1
@mtk_desc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@mtk_custom_bindings = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed to add EINT, but pinctrl still can work\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to add gpio_chip\0A\00", align 1
@mtk_conf_items = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_paris_pinctrl_probe(%struct.platform_device* %0, %struct.mtk_pin_soc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mtk_pin_soc*, align 8
  %6 = alloca %struct.pinctrl_pin_desc*, align 8
  %7 = alloca %struct.mtk_pinctrl*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mtk_pin_soc* %1, %struct.mtk_pin_soc** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mtk_pinctrl* @devm_kzalloc(%struct.TYPE_12__* %12, i32 32, i32 %13)
  store %struct.mtk_pinctrl* %14, %struct.mtk_pinctrl** %7, align 8
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %16 = icmp ne %struct.mtk_pinctrl* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %261

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.mtk_pinctrl* %22)
  %24 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %5, align 8
  %25 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %26 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %25, i32 0, i32 2
  store %struct.mtk_pin_soc* %24, %struct.mtk_pin_soc** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %30 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %29, i32 0, i32 4
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %30, align 8
  %31 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %32 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %31, i32 0, i32 2
  %33 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %32, align 8
  %34 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %20
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %261

43:                                               ; preds = %20
  %44 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %47 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %46, i32 0, i32 2
  %48 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %47, align 8
  %49 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kmalloc_array(%struct.TYPE_12__* %45, i32 %50, i32 4, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %55 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %57 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %43
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %261

63:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %123, %63
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %66, i32 0, i32 2
  %68 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %67, align 8
  %69 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %126

72:                                               ; preds = %64
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %76 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %75, i32 0, i32 2
  %77 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %76, align 8
  %78 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %73, i32 %74, i32 %83)
  store %struct.resource* %84, %struct.resource** %8, align 8
  %85 = load %struct.resource*, %struct.resource** %8, align 8
  %86 = icmp ne %struct.resource* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %72
  %88 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %261

93:                                               ; preds = %72
  %94 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.resource*, %struct.resource** %8, align 8
  %97 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %95, %struct.resource* %96)
  %98 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %99 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %105 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %93
  %114 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %115 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %3, align 4
  br label %261

122:                                              ; preds = %93
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %64

126:                                              ; preds = %64
  %127 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %128 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %127, i32 0, i32 2
  %129 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %128, align 8
  %130 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %133 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %135 = call i32 @mtk_pctrl_build_state(%struct.platform_device* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %126
  %139 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %261

145:                                              ; preds = %126
  %146 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %149 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %148, i32 0, i32 2
  %150 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %149, align 8
  %151 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i8* @devm_kmalloc_array(%struct.TYPE_12__* %147, i32 %152, i32 8, i32 %153)
  %155 = bitcast i8* %154 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %155, %struct.pinctrl_pin_desc** %6, align 8
  %156 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %157 = icmp ne %struct.pinctrl_pin_desc* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %145
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %261

161:                                              ; preds = %145
  store i32 0, i32* %10, align 4
  br label %162

162:                                              ; preds = %201, %161
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %165 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %164, i32 0, i32 2
  %166 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %165, align 8
  %167 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %163, %168
  br i1 %169, label %170, label %204

170:                                              ; preds = %162
  %171 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %172 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %171, i32 0, i32 2
  %173 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %172, align 8
  %174 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %173, i32 0, i32 2
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %181, i64 %183
  %185 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %184, i32 0, i32 1
  store i32 %180, i32* %185, align 4
  %186 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %187 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %186, i32 0, i32 2
  %188 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %187, align 8
  %189 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %188, i32 0, i32 2
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %196, i64 %198
  %200 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %199, i32 0, i32 0
  store i32 %195, i32* %200, align 4
  br label %201

201:                                              ; preds = %170
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %162

204:                                              ; preds = %162
  %205 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  store %struct.pinctrl_pin_desc* %205, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 4), align 8
  %206 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %207 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %206, i32 0, i32 2
  %208 = load %struct.mtk_pin_soc*, %struct.mtk_pin_soc** %207, align 8
  %209 = getelementptr inbounds %struct.mtk_pin_soc, %struct.mtk_pin_soc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 0), align 8
  %211 = load i32, i32* @mtk_custom_bindings, align 4
  %212 = call i32 @ARRAY_SIZE(i32 %211)
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 3), align 4
  %213 = load i32, i32* @mtk_custom_bindings, align 4
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mtk_desc, i32 0, i32 2), align 8
  %214 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %217 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %218 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %217, i32 0, i32 1
  %219 = call i32 @devm_pinctrl_register_and_init(%struct.TYPE_12__* %215, %struct.TYPE_11__* @mtk_desc, %struct.mtk_pinctrl* %216, i32* %218)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %204
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %3, align 4
  br label %261

224:                                              ; preds = %204
  %225 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %226 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @pinctrl_enable(i32 %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %3, align 4
  br label %261

233:                                              ; preds = %224
  %234 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %235 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %236 = call i32 @mtk_build_eint(%struct.mtk_pinctrl* %234, %struct.platform_device* %235)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = call i32 @dev_warn(%struct.TYPE_12__* %241, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %243

243:                                              ; preds = %239, %233
  %244 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %245 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %246 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @mtk_build_gpiochip(%struct.mtk_pinctrl* %244, i32 %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %243
  %253 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %254 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %253, i32 0, i32 0
  %255 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %254, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* %3, align 4
  br label %261

257:                                              ; preds = %243
  %258 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %259 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %7, align 8
  %260 = call i32 @platform_set_drvdata(%struct.platform_device* %258, %struct.mtk_pinctrl* %259)
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %257, %252, %231, %222, %158, %138, %113, %87, %60, %37, %17
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.mtk_pinctrl* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_pinctrl*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i8* @devm_kmalloc_array(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mtk_pctrl_build_state(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_pinctrl_register_and_init(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.mtk_pinctrl*, i32*) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @mtk_build_eint(%struct.mtk_pinctrl*, %struct.platform_device*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @mtk_build_gpiochip(%struct.mtk_pinctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
