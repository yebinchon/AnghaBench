; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.wmt_pinctrl_data = type { i32, %struct.TYPE_12__, %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@wmt_desc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@wmt_gpio_chip = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"could not add GPIO chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Pin controller initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmt_pinctrl_probe(%struct.platform_device* %0, %struct.wmt_pinctrl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.wmt_pinctrl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.wmt_pinctrl_data* %1, %struct.wmt_pinctrl_data** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.resource*, %struct.resource** %7, align 8
  %14 = call i32 @devm_ioremap_resource(%struct.TYPE_14__* %12, %struct.resource* %13)
  %15 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %16 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %18 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %24 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PTR_ERR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %118

27:                                               ; preds = %2
  %28 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %29 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @wmt_desc, i32 0, i32 1), align 4
  %31 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %32 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @wmt_desc, i32 0, i32 0), align 4
  %34 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %35 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %34, i32 0, i32 1
  %36 = bitcast %struct.TYPE_12__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.TYPE_12__* @wmt_gpio_chip to i8*), i64 16, i1 false)
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %40 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %47 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %50 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 32
  %53 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %54 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %58 = call i32 @platform_set_drvdata(%struct.platform_device* %56, %struct.wmt_pinctrl_data* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %62 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %61, i32 0, i32 2
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %66 = call i32 @devm_pinctrl_register(%struct.TYPE_14__* %64, %struct.TYPE_13__* @wmt_desc, %struct.wmt_pinctrl_data* %65)
  %67 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %68 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %70 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %27
  %75 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.TYPE_14__* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %79 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %118

82:                                               ; preds = %27
  %83 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %84 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %83, i32 0, i32 1
  %85 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %86 = call i32 @gpiochip_add_data(%struct.TYPE_12__* %84, %struct.wmt_pinctrl_data* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_14__* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %118

94:                                               ; preds = %82
  %95 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %96 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %95, i32 0, i32 1
  %97 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %98 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %97, i32 0, i32 2
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = call i32 @dev_name(%struct.TYPE_14__* %99)
  %101 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %102 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %103, 32
  %105 = call i32 @gpiochip_add_pin_range(%struct.TYPE_12__* %96, i32 %100, i32 0, i32 0, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %113

109:                                              ; preds = %94
  %110 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_info(%struct.TYPE_14__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %118

113:                                              ; preds = %108
  %114 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %115 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %114, i32 0, i32 1
  %116 = call i32 @gpiochip_remove(%struct.TYPE_12__* %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %113, %109, %89, %74, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wmt_pinctrl_data*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.wmt_pinctrl_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_12__*, %struct.wmt_pinctrl_data*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
