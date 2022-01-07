; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpiolib_register_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpiolib_register_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.device*, %struct.device_node* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.stm32_pinctrl = type { i64, i32, %struct.stm32_gpio_bank*, i32, %struct.device* }
%struct.stm32_gpio_bank = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.pinctrl_gpio_range, %struct.reset_control*, %struct.reset_control* }
%struct.pinctrl_gpio_range = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.reset_control = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.resource = type { i32 }

@STM32_GPIO_PINS_PER_BANK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get clk (%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to prepare clk (%d)\0A\00", align 1
@stm32_gpio_template = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"st,bank-name\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"st,bank-ioport\00", align 1
@STM32_GPIO_IRQ_LINE = common dso_local global i32 0, align 4
@stm32_gpio_domain_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to add gpiochip(%d)!\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%s bank added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pinctrl*, %struct.device_node*)* @stm32_gpiolib_register_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_gpiolib_register_bank(%struct.stm32_pinctrl* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_pinctrl*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stm32_gpio_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_gpio_range*, align 8
  %9 = alloca %struct.of_phandle_args, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.resource, align 4
  %12 = alloca %struct.reset_control*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.stm32_pinctrl* %0, %struct.stm32_pinctrl** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %16 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %16, i32 0, i32 2
  %18 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %17, align 8
  %19 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %20 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %18, i64 %21
  store %struct.stm32_gpio_bank* %22, %struct.stm32_gpio_bank** %6, align 8
  %23 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %24 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %23, i32 0, i32 6
  store %struct.pinctrl_gpio_range* %24, %struct.pinctrl_gpio_range** %8, align 8
  %25 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %25, i32 0, i32 4
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %10, align 8
  %28 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call %struct.reset_control* @of_reset_control_get_exclusive(%struct.device_node* %29, i32* null)
  store %struct.reset_control* %30, %struct.reset_control** %12, align 8
  %31 = load %struct.reset_control*, %struct.reset_control** %12, align 8
  %32 = call i64 @IS_ERR(%struct.reset_control* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load %struct.reset_control*, %struct.reset_control** %12, align 8
  %36 = call i32 @reset_control_deassert(%struct.reset_control* %35)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i64 @of_address_to_resource(%struct.device_node* %38, i32 0, %struct.resource* %11)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %245

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = call %struct.reset_control* @devm_ioremap_resource(%struct.device* %45, %struct.resource* %11)
  %47 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %48 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %47, i32 0, i32 8
  store %struct.reset_control* %46, %struct.reset_control** %48, align 8
  %49 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %50 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %49, i32 0, i32 8
  %51 = load %struct.reset_control*, %struct.reset_control** %50, align 8
  %52 = call i64 @IS_ERR(%struct.reset_control* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %56 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %55, i32 0, i32 8
  %57 = load %struct.reset_control*, %struct.reset_control** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.reset_control* %57)
  store i32 %58, i32* %3, align 4
  br label %245

59:                                               ; preds = %44
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = call %struct.reset_control* @of_clk_get_by_name(%struct.device_node* %60, i32* null)
  %62 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %63 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %62, i32 0, i32 7
  store %struct.reset_control* %61, %struct.reset_control** %63, align 8
  %64 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %65 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %64, i32 0, i32 7
  %66 = load %struct.reset_control*, %struct.reset_control** %65, align 8
  %67 = call i64 @IS_ERR(%struct.reset_control* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %59
  %70 = load %struct.device*, %struct.device** %10, align 8
  %71 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %72 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %71, i32 0, i32 7
  %73 = load %struct.reset_control*, %struct.reset_control** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.reset_control* %73)
  %75 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %77 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %76, i32 0, i32 7
  %78 = load %struct.reset_control*, %struct.reset_control** %77, align 8
  %79 = call i32 @PTR_ERR(%struct.reset_control* %78)
  store i32 %79, i32* %3, align 4
  br label %245

80:                                               ; preds = %59
  %81 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %82 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %81, i32 0, i32 7
  %83 = load %struct.reset_control*, %struct.reset_control** %82, align 8
  %84 = call i32 @clk_prepare(%struct.reset_control* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.device*, %struct.device** %10, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %3, align 4
  br label %245

92:                                               ; preds = %80
  %93 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %94 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %93, i32 0, i32 2
  %95 = bitcast %struct.TYPE_3__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 bitcast (%struct.TYPE_3__* @stm32_gpio_template to i8*), i64 32, i1 false)
  %96 = load %struct.device_node*, %struct.device_node** %5, align 8
  %97 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %98 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = call i32 @of_property_read_string(%struct.device_node* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %99)
  %101 = load %struct.device_node*, %struct.device_node** %5, align 8
  %102 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 0, %struct.of_phandle_args* %9)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %14, align 4
  %111 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %116 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  br label %170

118:                                              ; preds = %92
  %119 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %120 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %127 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %130 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %134 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %137 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %139 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %144 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %146 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %151 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %154 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %156 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %155, i32 0, i32 2
  %157 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %158 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %157, i32 0, i32 4
  store %struct.TYPE_3__* %156, %struct.TYPE_3__** %158, align 8
  %159 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %160 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %163 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %162, i32 0, i32 2
  %164 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %164, i64 %166
  %168 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %167, i32 0, i32 6
  %169 = call i32 @pinctrl_add_gpio_range(i32 %161, %struct.pinctrl_gpio_range* %168)
  br label %170

170:                                              ; preds = %118, %104
  %171 = load %struct.device_node*, %struct.device_node** %5, align 8
  %172 = call i64 @of_property_read_u32(%struct.device_node* %171, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %181 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %185 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load %struct.device_node*, %struct.device_node** %5, align 8
  %188 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %189 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 4
  store %struct.device_node* %187, %struct.device_node** %190, align 8
  %191 = load %struct.device*, %struct.device** %10, align 8
  %192 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %193 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  store %struct.device* %191, %struct.device** %194, align 8
  %195 = load i32, i32* %14, align 4
  %196 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %197 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %200 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %202 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %201, i32 0, i32 5
  %203 = call i32 @spin_lock_init(i32* %202)
  %204 = load %struct.device_node*, %struct.device_node** %5, align 8
  %205 = call i32 @of_node_to_fwnode(%struct.device_node* %204)
  %206 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %207 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 4
  %208 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %209 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @STM32_GPIO_IRQ_LINE, align 4
  %212 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %213 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %216 = call i32 @irq_domain_create_hierarchy(i32 %210, i32 0, i32 %211, i32 %214, i32* @stm32_gpio_domain_ops, %struct.stm32_gpio_bank* %215)
  %217 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %218 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %220 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %176
  %224 = load i32, i32* @ENODEV, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %245

226:                                              ; preds = %176
  %227 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %228 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %227, i32 0, i32 2
  %229 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %230 = call i32 @gpiochip_add_data(%struct.TYPE_3__* %228, %struct.stm32_gpio_bank* %229)
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %15, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %226
  %234 = load %struct.device*, %struct.device** %10, align 8
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @dev_err(%struct.device* %234, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %15, align 4
  store i32 %237, i32* %3, align 4
  br label %245

238:                                              ; preds = %226
  %239 = load %struct.device*, %struct.device** %10, align 8
  %240 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %241 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @dev_info(%struct.device* %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %243)
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %238, %233, %223, %87, %69, %54, %41
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local %struct.reset_control* @of_reset_control_get_exclusive(%struct.device_node*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i64 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local %struct.reset_control* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @of_clk_get_by_name(%struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_prepare(%struct.reset_control*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, %struct.pinctrl_gpio_range*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i32 @irq_domain_create_hierarchy(i32, i32, i32, i32, i32*, %struct.stm32_gpio_bank*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_3__*, %struct.stm32_gpio_bank*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
