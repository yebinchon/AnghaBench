; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_gpio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_gpio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pistachio_pinctrl = type { i32, %struct.pistachio_gpio_bank*, %struct.TYPE_9__*, i64 }
%struct.pistachio_gpio_bank = type { %struct.TYPE_8__, i32, i32, i32, i64, %struct.pistachio_pinctrl* }
%struct.TYPE_8__ = type { %struct.device_node*, %struct.TYPE_9__* }
%struct.device_node = type { i32 }
%struct.TYPE_9__ = type { %struct.device_node* }

@.str = private unnamed_addr constant [7 x i8] c"gpio%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"No node for bank %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"No gpio-controller property for bank %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No IRQ for bank %u: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to add GPIO chip %u: %d\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to add IRQ chip %u: %d\0A\00", align 1
@pistachio_gpio_irq_handler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to add GPIO range %u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pistachio_pinctrl*)* @pistachio_gpio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_gpio_register(%struct.pistachio_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pistachio_pinctrl*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pistachio_gpio_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [7 x i8], align 1
  %10 = alloca %struct.device_node*, align 8
  store %struct.pistachio_pinctrl* %0, %struct.pistachio_pinctrl** %3, align 8
  %11 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %12 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %11, i32 0, i32 2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %163, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %19 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %166

22:                                               ; preds = %16
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @snprintf(i8* %23, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %28 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %26, i8* %27)
  store %struct.device_node* %28, %struct.device_node** %10, align 8
  %29 = load %struct.device_node*, %struct.device_node** %10, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %33 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %167

39:                                               ; preds = %22
  %40 = load %struct.device_node*, %struct.device_node** %10, align 8
  %41 = call i32 @of_find_property(%struct.device_node* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %45 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.device_node*, %struct.device_node** %10, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %167

53:                                               ; preds = %39
  %54 = load %struct.device_node*, %struct.device_node** %10, align 8
  %55 = call i32 @irq_of_parse_and_map(%struct.device_node* %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %60 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.device_node*, %struct.device_node** %10, align 8
  %66 = call i32 @of_node_put(%struct.device_node* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %8, align 4
  br label %167

68:                                               ; preds = %53
  %69 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %70 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %69, i32 0, i32 1
  %71 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %71, i64 %73
  store %struct.pistachio_gpio_bank* %74, %struct.pistachio_gpio_bank** %5, align 8
  %75 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %76 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %77 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %76, i32 0, i32 5
  store %struct.pistachio_pinctrl* %75, %struct.pistachio_pinctrl** %77, align 8
  %78 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %79 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @GPIO_BANK_BASE(i32 %81)
  %83 = add nsw i64 %80, %82
  %84 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %85 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %87 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %90 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %91, align 8
  %92 = load %struct.device_node*, %struct.device_node** %10, align 8
  %93 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %94 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store %struct.device_node* %92, %struct.device_node** %95, align 8
  %96 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %97 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %96, i32 0, i32 0
  %98 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %99 = call i32 @gpiochip_add_data(%struct.TYPE_8__* %97, %struct.pistachio_gpio_bank* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %68
  %103 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %104 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %107)
  br label %167

109:                                              ; preds = %68
  %110 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %111 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %110, i32 0, i32 0
  %112 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %113 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %112, i32 0, i32 3
  %114 = load i32, i32* @handle_level_irq, align 4
  %115 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %116 = call i32 @gpiochip_irqchip_add(%struct.TYPE_8__* %111, i32* %113, i32 0, i32 %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %109
  %120 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %121 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %120, i32 0, i32 2
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %127 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %126, i32 0, i32 0
  %128 = call i32 @gpiochip_remove(%struct.TYPE_8__* %127)
  br label %167

129:                                              ; preds = %109
  %130 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %131 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %130, i32 0, i32 0
  %132 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %133 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %132, i32 0, i32 3
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @pistachio_gpio_irq_handler, align 4
  %136 = call i32 @gpiochip_set_chained_irqchip(%struct.TYPE_8__* %131, i32* %133, i32 %134, i32 %135)
  %137 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %138 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %137, i32 0, i32 0
  %139 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %140 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %139, i32 0, i32 2
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = call i32 @dev_name(%struct.TYPE_9__* %141)
  %143 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %144 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %147 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @gpiochip_add_pin_range(%struct.TYPE_8__* %138, i32 %142, i32 0, i32 %145, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %129
  %153 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %154 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %153, i32 0, i32 2
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %160 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %159, i32 0, i32 0
  %161 = call i32 @gpiochip_remove(%struct.TYPE_8__* %160)
  br label %167

162:                                              ; preds = %129
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %16

166:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %187

167:                                              ; preds = %152, %119, %102, %58, %43, %31
  br label %168

168:                                              ; preds = %182, %167
  %169 = load i32, i32* %6, align 4
  %170 = icmp ugt i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %3, align 8
  %173 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %172, i32 0, i32 1
  %174 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sub i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %174, i64 %177
  store %struct.pistachio_gpio_bank* %178, %struct.pistachio_gpio_bank** %5, align 8
  %179 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %180 = getelementptr inbounds %struct.pistachio_gpio_bank, %struct.pistachio_gpio_bank* %179, i32 0, i32 0
  %181 = call i32 @gpiochip_remove(%struct.TYPE_8__* %180)
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %6, align 4
  %184 = add i32 %183, -1
  store i32 %184, i32* %6, align 4
  br label %168

185:                                              ; preds = %168
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %166
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i64 @GPIO_BANK_BASE(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_8__*, %struct.pistachio_gpio_bank*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_8__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_8__*) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
