; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.plgpio = type { i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DT probe failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"clk_get() failed, work without it\0A\00", align 1
@plgpio_request = common dso_local global i32 0, align 4
@plgpio_free = common dso_local global i32 0, align 4
@plgpio_direction_input = common dso_local global i32 0, align 4
@plgpio_direction_output = common dso_local global i32 0, align 4
@plgpio_get_value = common dso_local global i32 0, align 4
@plgpio_set_value = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"clk prepare failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to add gpio chip\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"PLGPIO registered without IRQs\0A\00", align 1
@plgpio_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to add irqchip to gpiochip\0A\00", align 1
@plgpio_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"PLGPIO registered with IRQs\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Remove gpiochip\0A\00", align 1
@MAX_GPIO_PER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @plgpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plgpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plgpio*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.plgpio* @devm_kzalloc(%struct.TYPE_14__* %9, i32 80, i32 %10)
  store %struct.plgpio* %11, %struct.plgpio** %4, align 8
  %12 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %13 = icmp ne %struct.plgpio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %198

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i32 @devm_ioremap_resource(%struct.TYPE_14__* %22, %struct.resource* %23)
  %25 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %26 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %28 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %34 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %198

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %40 = call i32 @plgpio_probe_dt(%struct.platform_device* %38, %struct.plgpio* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_14__* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %198

48:                                               ; preds = %37
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @devm_clk_get(%struct.TYPE_14__* %50, i32* null)
  %52 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %53 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %55 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_warn(%struct.TYPE_14__* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %66 = call i32 @platform_set_drvdata(%struct.platform_device* %64, %struct.plgpio* %65)
  %67 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %68 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %71 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load i32, i32* @plgpio_request, align 4
  %74 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %75 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 10
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @plgpio_free, align 4
  %78 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %79 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 9
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @plgpio_direction_input, align 4
  %82 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %83 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 8
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @plgpio_direction_output, align 4
  %86 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %87 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 7
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @plgpio_get_value, align 4
  %90 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %91 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 6
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @plgpio_set_value, align 4
  %94 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %95 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  store i32 %93, i32* %96, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_name(%struct.TYPE_14__* %98)
  %100 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %101 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %106 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %107, align 8
  %108 = load i32, i32* @THIS_MODULE, align 4
  %109 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %110 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %117 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %120 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @IS_ERR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %63
  %125 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %126 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @clk_prepare(i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(%struct.TYPE_14__* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %198

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %63
  %138 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %139 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %138, i32 0, i32 1
  %140 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %141 = call i32 @gpiochip_add_data(%struct.TYPE_13__* %139, %struct.plgpio* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @dev_err(%struct.TYPE_14__* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %185

148:                                              ; preds = %137
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = call i32 @platform_get_irq(%struct.platform_device* %149, i32 0)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @dev_info(%struct.TYPE_14__* %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %198

157:                                              ; preds = %148
  %158 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %159 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %158, i32 0, i32 1
  %160 = load i32, i32* @handle_simple_irq, align 4
  %161 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %162 = call i32 @gpiochip_irqchip_add(%struct.TYPE_13__* %159, i32* @plgpio_irqchip, i32 0, i32 %160, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @dev_err(%struct.TYPE_14__* %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %178

169:                                              ; preds = %157
  %170 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %171 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %170, i32 0, i32 1
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @plgpio_irq_handler, align 4
  %174 = call i32 @gpiochip_set_chained_irqchip(%struct.TYPE_13__* %171, i32* @plgpio_irqchip, i32 %172, i32 %173)
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i32 @dev_info(%struct.TYPE_14__* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %198

178:                                              ; preds = %165
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @dev_info(%struct.TYPE_14__* %180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %182 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %183 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %182, i32 0, i32 1
  %184 = call i32 @gpiochip_remove(%struct.TYPE_13__* %183)
  br label %185

185:                                              ; preds = %178, %144
  %186 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %187 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @IS_ERR(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %185
  %192 = load %struct.plgpio*, %struct.plgpio** %4, align 8
  %193 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @clk_unprepare(i32 %194)
  br label %196

196:                                              ; preds = %191, %185
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %169, %153, %131, %43, %32, %14
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.plgpio* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @plgpio_probe_dt(%struct.platform_device*, %struct.plgpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.plgpio*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_13__*, %struct.plgpio*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_13__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_13__*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
