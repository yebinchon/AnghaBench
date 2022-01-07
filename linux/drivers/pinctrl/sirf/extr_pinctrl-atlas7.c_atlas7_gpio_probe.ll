; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.atlas7_gpio_chip = type { i32, %struct.atlas7_gpio_bank*, %struct.gpio_chip, i32, i32, i32 }
%struct.atlas7_gpio_bank = type { i32, i32, i32 }
%struct.gpio_chip = type { i32, i32, i32, %struct.TYPE_4__*, %struct.device_node*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"gpio-banks\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not find GPIO bank info,ret=%d!\0A\00", align 1
@banks = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not enable clock!\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not map GPIO Registers!\0A\00", align 1
@atlas7_gpio_request = common dso_local global i32 0, align 4
@atlas7_gpio_free = common dso_local global i32 0, align 4
@atlas7_gpio_direction_input = common dso_local global i32 0, align 4
@atlas7_gpio_get_value = common dso_local global i32 0, align 4
@atlas7_gpio_direction_output = common dso_local global i32 0, align 4
@atlas7_gpio_set_value = common dso_local global i32 0, align 4
@NGPIO_OF_BANK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"%pOF: error in probe function with status %d\0A\00", align 1
@atlas7_gpio_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"could not connect irqchip to gpiochip\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Unable to find IRQ number. ret=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@atlas7_gpio_handle_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"add to system.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atlas7_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.atlas7_gpio_chip*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atlas7_gpio_bank*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %209

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %29 = load i32, i32* @banks, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @struct_size(%struct.atlas7_gpio_chip* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.atlas7_gpio_chip* @devm_kzalloc(%struct.TYPE_4__* %27, i32 %31, i32 %32)
  store %struct.atlas7_gpio_chip* %33, %struct.atlas7_gpio_chip** %5, align 8
  %34 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %35 = icmp ne %struct.atlas7_gpio_chip* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %209

39:                                               ; preds = %25
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = call i32 @of_clk_get(%struct.device_node* %40, i32 0)
  %42 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %43 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %45 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IS_ERR(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %39
  %50 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %51 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_prepare_enable(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %209

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = call i32 @of_iomap(%struct.device_node* %63, i32 0)
  %65 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %66 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %68 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %62
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %209

77:                                               ; preds = %62
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %80 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %82 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %81, i32 0, i32 3
  %83 = call i32 @raw_spin_lock_init(i32* %82)
  %84 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %85 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %84, i32 0, i32 2
  store %struct.gpio_chip* %85, %struct.gpio_chip** %6, align 8
  %86 = load i32, i32* @atlas7_gpio_request, align 4
  %87 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %88 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @atlas7_gpio_free, align 4
  %90 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %91 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @atlas7_gpio_direction_input, align 4
  %93 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %94 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @atlas7_gpio_get_value, align 4
  %96 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %97 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @atlas7_gpio_direction_output, align 4
  %99 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %100 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @atlas7_gpio_set_value, align 4
  %102 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %103 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %105 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %104, i32 0, i32 0
  store i32 -1, i32* %105, align 8
  %106 = load i32, i32* @NGPIO_OF_BANK, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %110 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.device_node*, %struct.device_node** %4, align 8
  %112 = getelementptr inbounds %struct.device_node, %struct.device_node* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i32 @kstrdup(i32 %113, i32 %114)
  %116 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %117 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.device_node*, %struct.device_node** %4, align 8
  %119 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %120 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %119, i32 0, i32 4
  store %struct.device_node* %118, %struct.device_node** %120, align 8
  %121 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %122 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %121, i32 0, i32 2
  store i32 2, i32* %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %126 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %125, i32 0, i32 3
  store %struct.TYPE_4__* %124, %struct.TYPE_4__** %126, align 8
  %127 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %128 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %129 = call i32 @gpiochip_add_data(%struct.gpio_chip* %127, %struct.atlas7_gpio_chip* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %77
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.device_node*, %struct.device_node** %4, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %134, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %135, i32 %136)
  br label %207

138:                                              ; preds = %77
  %139 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %140 = load i32, i32* @handle_level_irq, align 4
  %141 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %142 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %139, i32* @atlas7_gpio_irq_chip, i32 0, i32 %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %207

149:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %197, %149
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %200

154:                                              ; preds = %150
  %155 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %156 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %155, i32 0, i32 1
  %157 = load %struct.atlas7_gpio_bank*, %struct.atlas7_gpio_bank** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.atlas7_gpio_bank, %struct.atlas7_gpio_bank* %157, i64 %159
  store %struct.atlas7_gpio_bank* %160, %struct.atlas7_gpio_bank** %10, align 8
  %161 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @ATLAS7_GPIO_BASE(%struct.atlas7_gpio_chip* %161, i32 %162)
  %164 = load %struct.atlas7_gpio_bank*, %struct.atlas7_gpio_bank** %10, align 8
  %165 = getelementptr inbounds %struct.atlas7_gpio_bank, %struct.atlas7_gpio_bank* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @NGPIO_OF_BANK, align 4
  %168 = mul nsw i32 %166, %167
  %169 = load %struct.atlas7_gpio_bank*, %struct.atlas7_gpio_bank** %10, align 8
  %170 = getelementptr inbounds %struct.atlas7_gpio_bank, %struct.atlas7_gpio_bank* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load %struct.device_node*, %struct.device_node** %4, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @of_irq_get(%struct.device_node* %171, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %154
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load i32, i32* %8, align 4
  %180 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %176
  %184 = load i32, i32* @ENXIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %183, %176
  br label %207

187:                                              ; preds = %154
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.atlas7_gpio_bank*, %struct.atlas7_gpio_bank** %10, align 8
  %190 = getelementptr inbounds %struct.atlas7_gpio_bank, %struct.atlas7_gpio_bank* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %192 = load %struct.atlas7_gpio_bank*, %struct.atlas7_gpio_bank** %10, align 8
  %193 = getelementptr inbounds %struct.atlas7_gpio_bank, %struct.atlas7_gpio_bank* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @atlas7_gpio_handle_irq, align 4
  %196 = call i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip* %191, i32* @atlas7_gpio_irq_chip, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %187
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %150

200:                                              ; preds = %150
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %203 = call i32 @platform_set_drvdata(%struct.platform_device* %201, %struct.atlas7_gpio_chip* %202)
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i32 @dev_info(%struct.TYPE_4__* %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %209

207:                                              ; preds = %186, %145, %132
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %200, %71, %56, %36, %19
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local %struct.atlas7_gpio_chip* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.atlas7_gpio_chip*, i32, i32) #1

declare dso_local i32 @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.atlas7_gpio_chip*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @ATLAS7_GPIO_BASE(%struct.atlas7_gpio_chip*, i32) #1

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip*, i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atlas7_gpio_chip*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
