; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.nmk_gpio_chip = type { i32, i32, i32, i64, %struct.gpio_chip, i32, i32, %struct.irq_chip, i32, i32 }
%struct.gpio_chip = type { i32, %struct.device_node*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"could not populate nmk chip struct\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"st,supports-sleepmode\00", align 1
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@nmk_gpio_get_dir = common dso_local global i32 0, align 4
@nmk_gpio_make_input = common dso_local global i32 0, align 4
@nmk_gpio_get_input = common dso_local global i32 0, align 4
@nmk_gpio_make_output = common dso_local global i32 0, align 4
@nmk_gpio_set_output = common dso_local global i32 0, align 4
@nmk_gpio_dbg_show = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nmk_gpio_irq_ack = common dso_local global i32 0, align 4
@nmk_gpio_irq_mask = common dso_local global i32 0, align 4
@nmk_gpio_irq_unmask = common dso_local global i32 0, align 4
@nmk_gpio_irq_set_type = common dso_local global i32 0, align 4
@nmk_gpio_irq_set_wake = common dso_local global i32 0, align 4
@nmk_gpio_irq_startup = common dso_local global i32 0, align 4
@nmk_gpio_irq_shutdown = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"nmk%u-%u-%u\00", align 1
@NMK_GPIO_LOWEMI = common dso_local global i64 0, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"could not add irqchip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@nmk_gpio_irq_handler = common dso_local global i32 0, align 4
@nmk_gpio_latent_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"at address %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nmk_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nmk_gpio_chip*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call %struct.nmk_gpio_chip* @nmk_gpio_populate_chip(%struct.device_node* %16, %struct.platform_device* %17)
  store %struct.nmk_gpio_chip* %18, %struct.nmk_gpio_chip** %5, align 8
  %19 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %20 = call i64 @IS_ERR(%struct.nmk_gpio_chip* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_3__* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %27 = call i32 @PTR_ERR(%struct.nmk_gpio_chip* %26)
  store i32 %27, i32* %2, align 4
  br label %205

28:                                               ; preds = %1
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i32 @of_property_read_bool(%struct.device_node* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %32 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %2, align 4
  br label %205

42:                                               ; preds = %28
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = call i32 @platform_get_irq(%struct.platform_device* %43, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %47 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %50 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %53 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %55 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %54, i32 0, i32 8
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %58 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %57, i32 0, i32 4
  store %struct.gpio_chip* %58, %struct.gpio_chip** %6, align 8
  %59 = load i32, i32* @gpiochip_generic_request, align 4
  %60 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @gpiochip_generic_free, align 4
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %64 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @nmk_gpio_get_dir, align 4
  %66 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %67 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @nmk_gpio_make_input, align 4
  %69 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %70 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @nmk_gpio_get_input, align 4
  %72 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %73 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @nmk_gpio_make_output, align 4
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %76 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @nmk_gpio_set_output, align 4
  %78 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %79 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @nmk_gpio_dbg_show, align 4
  %81 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %82 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %84 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* @THIS_MODULE, align 4
  %86 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %87 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %89 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %88, i32 0, i32 7
  store %struct.irq_chip* %89, %struct.irq_chip** %7, align 8
  %90 = load i32, i32* @nmk_gpio_irq_ack, align 4
  %91 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %92 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @nmk_gpio_irq_mask, align 4
  %94 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %95 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @nmk_gpio_irq_unmask, align 4
  %97 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %98 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @nmk_gpio_irq_set_type, align 4
  %100 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %101 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @nmk_gpio_irq_set_wake, align 4
  %103 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %104 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @nmk_gpio_irq_startup, align 4
  %106 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %107 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @nmk_gpio_irq_shutdown, align 4
  %109 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %110 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %112 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %113 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %119 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %122 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %125 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = sub nsw i64 %127, 1
  %129 = call i32 @kasprintf(i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %117, i64 %120, i64 %128)
  %130 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %131 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %133 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @clk_enable(i32 %134)
  %136 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %137 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NMK_GPIO_LOWEMI, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @readl_relaxed(i64 %140)
  %142 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %143 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  %144 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %145 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @clk_disable(i32 %146)
  %148 = load %struct.device_node*, %struct.device_node** %4, align 8
  %149 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %150 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %149, i32 0, i32 1
  store %struct.device_node* %148, %struct.device_node** %150, align 8
  %151 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %152 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %153 = call i32 @gpiochip_add_data(%struct.gpio_chip* %151, %struct.nmk_gpio_chip* %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %42
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %2, align 4
  br label %205

158:                                              ; preds = %42
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %161 = call i32 @platform_set_drvdata(%struct.platform_device* %159, %struct.nmk_gpio_chip* %160)
  %162 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %163 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %164 = load i32, i32* @handle_edge_irq, align 4
  %165 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %166 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %162, %struct.irq_chip* %163, i32 0, i32 %164, i32 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %158
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @dev_err(%struct.TYPE_3__* %171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %173 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %174 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %173, i32 0, i32 4
  %175 = call i32 @gpiochip_remove(%struct.gpio_chip* %174)
  %176 = load i32, i32* @ENODEV, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %205

178:                                              ; preds = %158
  %179 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %180 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %181 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %182 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @nmk_gpio_irq_handler, align 4
  %185 = call i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip* %179, %struct.irq_chip* %180, i32 %183, i32 %184)
  %186 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %187 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %178
  %191 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %192 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %193 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %194 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @nmk_gpio_latent_irq_handler, align 4
  %197 = call i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip* %191, %struct.irq_chip* %192, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %190, %178
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %202 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @dev_info(%struct.TYPE_3__* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %203)
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %198, %169, %156, %40, %22
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.nmk_gpio_chip* @nmk_gpio_populate_chip(%struct.device_node*, %struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.nmk_gpio_chip*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.nmk_gpio_chip*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.nmk_gpio_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nmk_gpio_chip*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, %struct.irq_chip*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip*, %struct.irq_chip*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
