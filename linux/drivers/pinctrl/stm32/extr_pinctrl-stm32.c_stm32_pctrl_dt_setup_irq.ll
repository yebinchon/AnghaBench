; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_dt_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_dt_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_pinctrl = type { %struct.regmap**, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.reg_field = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@SYSCFG_IRQMUX_MASK = common dso_local global i32 0, align 4
@STM32_GPIO_PINS_PER_BANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"irqmux%d: reg:%#x, lsb:%d, msb:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_pinctrl*)* @stm32_pctrl_dt_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pctrl_dt_setup_irq(%struct.platform_device* %0, %struct.stm32_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_pinctrl*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.reg_field, align 4
  %15 = alloca { i64, i32 }, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_pinctrl* %1, %struct.stm32_pinctrl** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %6, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %7, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %25 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %24, i32 0, i32 1
  store %struct.regmap* %23, %struct.regmap** %25, align 8
  %26 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %27 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %26, i32 0, i32 1
  %28 = load %struct.regmap*, %struct.regmap** %27, align 8
  %29 = call i64 @IS_ERR(%struct.regmap* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %33 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %32, i32 0, i32 1
  %34 = load %struct.regmap*, %struct.regmap** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.regmap* %34)
  store i32 %35, i32* %3, align 4
  br label %125

36:                                               ; preds = %2
  %37 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %37, i32 0, i32 1
  %39 = load %struct.regmap*, %struct.regmap** %38, align 8
  store %struct.regmap* %39, %struct.regmap** %8, align 8
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = call i32 @of_property_read_u32_index(%struct.device_node* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1, i32* %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %125

46:                                               ; preds = %36
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @of_property_read_u32_index(%struct.device_node* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 2, i32* %12)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SYSCFG_IRQMUX_MASK, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @fls(i32 %54)
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %121, %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %124

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sdiv i32 %62, 4
  %64 = mul nsw i32 %63, 4
  %65 = add nsw i32 %61, %64
  %66 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = srem i32 %67, 4
  %69 = load i32, i32* %13, align 4
  %70 = mul nsw i32 %68, %69
  %71 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %81, i32 %83, i32 %85)
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = load %struct.regmap*, %struct.regmap** %8, align 8
  %89 = bitcast { i64, i32 }* %15 to i8*
  %90 = bitcast %struct.reg_field* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 12, i1 false)
  %91 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %92 = load i64, i64* %91, align 4
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.regmap* @devm_regmap_field_alloc(%struct.device* %87, %struct.regmap* %88, i64 %92, i32 %94)
  %96 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %97 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %96, i32 0, i32 0
  %98 = load %struct.regmap**, %struct.regmap*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.regmap*, %struct.regmap** %98, i64 %100
  store %struct.regmap* %95, %struct.regmap** %101, align 8
  %102 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %103 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %102, i32 0, i32 0
  %104 = load %struct.regmap**, %struct.regmap*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.regmap*, %struct.regmap** %104, i64 %106
  %108 = load %struct.regmap*, %struct.regmap** %107, align 8
  %109 = call i64 @IS_ERR(%struct.regmap* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %60
  %112 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %113 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %112, i32 0, i32 0
  %114 = load %struct.regmap**, %struct.regmap*** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.regmap*, %struct.regmap** %114, i64 %116
  %118 = load %struct.regmap*, %struct.regmap** %117, align 8
  %119 = call i32 @PTR_ERR(%struct.regmap* %118)
  store i32 %119, i32* %3, align 4
  br label %125

120:                                              ; preds = %60
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %56

124:                                              ; preds = %56
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %111, %44, %31
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.regmap* @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
