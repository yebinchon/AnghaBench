; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpiolib_register_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpiolib_register_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.device_node*, %struct.device*, %struct.device_node* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.st_pinctrl = type { i64, %struct.device*, %struct.st_gpio_bank* }
%struct.st_gpio_bank = type { %struct.TYPE_6__, i32, i32, %struct.pinctrl_gpio_range }
%struct.pinctrl_gpio_range = type { i32, i32, i32, i32, %struct.device_node*, %struct.TYPE_6__* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@st_gpio_template = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ST_GPIO_PINS_PER_BANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"st,bank-name\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to add gpiochip(%d)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s bank added.\0A\00", align 1
@st_gpio_irqchip = common dso_local global i32 0, align 4
@st_gpio_irq_handler = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"could not add irqchip\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"No IRQ support for %pOF bank\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_pinctrl*, i32, %struct.device_node*)* @st_gpiolib_register_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_gpiolib_register_bank(%struct.st_pinctrl* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.st_gpio_bank*, align 8
  %9 = alloca %struct.pinctrl_gpio_range*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource, align 4
  %13 = alloca %struct.resource, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %16 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %17 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %16, i32 0, i32 2
  %18 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %18, i64 %20
  store %struct.st_gpio_bank* %21, %struct.st_gpio_bank** %8, align 8
  %22 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %23 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %22, i32 0, i32 3
  store %struct.pinctrl_gpio_range* %23, %struct.pinctrl_gpio_range** %9, align 8
  %24 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %25 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %24, i32 0, i32 1
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %10, align 8
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = call i32 @of_alias_get_id(%struct.device_node* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i64 @of_address_to_resource(%struct.device_node* %29, i32 0, %struct.resource* %12)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %164

35:                                               ; preds = %3
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = call i32 @devm_ioremap_resource(%struct.device* %36, %struct.resource* %12)
  %38 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %39 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %41 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %47 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %164

50:                                               ; preds = %35
  %51 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %52 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %51, i32 0, i32 0
  %53 = bitcast %struct.TYPE_6__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 bitcast (%struct.TYPE_6__* @st_gpio_template to i8*), i64 32, i1 false)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ST_GPIO_PINS_PER_BANK, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %58 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @ST_GPIO_PINS_PER_BANK, align 4
  %61 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %62 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.device_node*, %struct.device_node** %7, align 8
  %65 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %66 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store %struct.device_node* %64, %struct.device_node** %67, align 8
  %68 = load %struct.device*, %struct.device** %10, align 8
  %69 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %70 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store %struct.device* %68, %struct.device** %71, align 8
  %72 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %73 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %72, i32 0, i32 1
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %77 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %76, i32 0, i32 4
  %78 = call i32 @of_property_read_string(%struct.device_node* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.device_node** %77)
  %79 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %80 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %79, i32 0, i32 4
  %81 = load %struct.device_node*, %struct.device_node** %80, align 8
  %82 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %83 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store %struct.device_node* %81, %struct.device_node** %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %87 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %89 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ST_GPIO_PINS_PER_BANK, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %94 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %96 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %98 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %102 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %104 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %103, i32 0, i32 0
  %105 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %106 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %105, i32 0, i32 5
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %106, align 8
  %107 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %108 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %107, i32 0, i32 0
  %109 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %110 = call i32 @gpiochip_add_data(%struct.TYPE_6__* %108, %struct.st_gpio_bank* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %50
  %114 = load %struct.device*, %struct.device** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %4, align 4
  br label %164

118:                                              ; preds = %50
  %119 = load %struct.device*, %struct.device** %10, align 8
  %120 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %121 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %120, i32 0, i32 4
  %122 = load %struct.device_node*, %struct.device_node** %121, align 8
  %123 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %122)
  %124 = load %struct.device_node*, %struct.device_node** %7, align 8
  %125 = call i64 @of_irq_to_resource(%struct.device_node* %124, i32 0, %struct.resource* %13)
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %131 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %130, i32 0, i32 0
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @st_gpio_irq_handler, align 4
  %134 = call i32 @gpiochip_set_chained_irqchip(%struct.TYPE_6__* %131, i32* @st_gpio_irqchip, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %127, %118
  %136 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %137 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %14, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %140, %135
  %144 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %145 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %144, i32 0, i32 0
  %146 = load i32, i32* @handle_simple_irq, align 4
  %147 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %148 = call i32 @gpiochip_irqchip_add(%struct.TYPE_6__* %145, i32* @st_gpio_irqchip, i32 0, i32 %146, i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %143
  %152 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %8, align 8
  %153 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %152, i32 0, i32 0
  %154 = call i32 @gpiochip_remove(%struct.TYPE_6__* %153)
  %155 = load %struct.device*, %struct.device** %10, align 8
  %156 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %4, align 4
  br label %164

158:                                              ; preds = %143
  br label %163

159:                                              ; preds = %140
  %160 = load %struct.device*, %struct.device** %10, align 8
  %161 = load %struct.device_node*, %struct.device_node** %7, align 8
  %162 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %161)
  br label %163

163:                                              ; preds = %159, %158
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %151, %113, %45, %32
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i64 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, %struct.device_node**) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_6__*, %struct.st_gpio_bank*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_irq_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_6__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
