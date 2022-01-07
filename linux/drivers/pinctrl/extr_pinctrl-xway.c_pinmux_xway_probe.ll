; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_pinmux_xway_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_pinmux_xway_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_22__*, i32* }
%struct.TYPE_22__ = type { i8*, i64 }
%struct.pinctrl_xway_soc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_21__ }
%struct.of_device_id = type { i64 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@xway_info = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@xway_match = common dso_local global i32 0, align 4
@danube_pinctrl = common dso_local global %struct.pinctrl_xway_soc zeroinitializer, align 4
@xway_chip = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"io%d\00", align 1
@GPIO0 = common dso_local global i64 0, align 8
@xway_pctrl_desc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register pinctrl driver\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register gpio chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@xway_gpio_range = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Init done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pinmux_xway_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_xway_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.pinctrl_xway_soc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  %16 = call i32 @devm_ioremap_resource(%struct.TYPE_21__* %14, %struct.resource* %15)
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 11), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 11), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 11), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %163

29:                                               ; preds = %1
  %30 = load i32, i32* @xway_match, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call %struct.of_device_id* @of_match_device(i32 %30, %struct.TYPE_21__* %32)
  store %struct.of_device_id* %33, %struct.of_device_id** %4, align 8
  %34 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %35 = icmp ne %struct.of_device_id* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %38 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.pinctrl_xway_soc*
  store %struct.pinctrl_xway_soc* %40, %struct.pinctrl_xway_soc** %5, align 8
  br label %42

41:                                               ; preds = %29
  store %struct.pinctrl_xway_soc* @danube_pinctrl, %struct.pinctrl_xway_soc** %5, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %44 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 0), align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 0), align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.TYPE_22__* @devm_kcalloc(%struct.TYPE_21__* %47, i32 %48, i32 4, i32 %49)
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 10), align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 10), align 8
  %52 = icmp ne %struct.TYPE_22__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %163

56:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 0), align 8
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @devm_kasprintf(%struct.TYPE_21__* %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %163

72:                                               ; preds = %61
  %73 = load i64, i64* @GPIO0, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 10), align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  store i64 %76, i64* %81, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 10), align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  store i8* %82, i8** %87, align 8
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %57

91:                                               ; preds = %57
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 10), align 8
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @xway_pctrl_desc, i32 0, i32 2), align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_name(%struct.TYPE_21__* %94)
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @xway_pctrl_desc, i32 0, i32 1), align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 0), align 8
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @xway_pctrl_desc, i32 0, i32 0), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 0), align 8
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 0), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 0), align 8
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 1), align 4
  %99 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %100 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 9), align 4
  %102 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %103 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 8), align 8
  %105 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %106 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 7), align 4
  %108 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %109 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 6), align 8
  %111 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %112 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 5), align 4
  %114 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %115 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 4), align 8
  %117 = load %struct.pinctrl_xway_soc*, %struct.pinctrl_xway_soc** %5, align 8
  %118 = getelementptr inbounds %struct.pinctrl_xway_soc, %struct.pinctrl_xway_soc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 3), align 4
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i32 @ltq_pinctrl_register(%struct.platform_device* %120, %struct.TYPE_18__* @xway_info)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %91
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @dev_err(%struct.TYPE_21__* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %163

129:                                              ; preds = %91
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 4), align 8
  %132 = load i32, i32* @THIS_MODULE, align 4
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 3), align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 2), align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 @devm_gpiochip_add_data(%struct.TYPE_21__* %138, %struct.TYPE_20__* @xway_chip, i32* null)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %129
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 @dev_err(%struct.TYPE_21__* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %163

147:                                              ; preds = %129
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @of_property_read_bool(i32 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 0), align 8
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @xway_gpio_range, i32 0, i32 0), align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @xway_chip, i32 0, i32 1), align 4
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @xway_gpio_range, i32 0, i32 1), align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @xway_info, i32 0, i32 2), align 8
  %158 = call i32 @pinctrl_add_gpio_range(i32 %157, %struct.TYPE_19__* @xway_gpio_range)
  br label %159

159:                                              ; preds = %154, %147
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 @dev_info(%struct.TYPE_21__* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %142, %124, %69, %53, %24
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_21__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @devm_kcalloc(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_21__*) #1

declare dso_local i32 @ltq_pinctrl_register(%struct.platform_device*, %struct.TYPE_18__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
