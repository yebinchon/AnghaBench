; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_interrupts_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_interrupts_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rockchip_pinctrl = type { %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32, %struct.rockchip_pin_bank* }
%struct.rockchip_pin_bank = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.irq_chip_generic = type { i32, %struct.TYPE_6__*, %struct.rockchip_pin_bank*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bank %s is not valid\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to enable clock for bank %s\0A\00", align 1
@irq_generic_chip_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"could not initialize irq domain for bank %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"rockchip_gpio_irq\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_GC_INIT_MASK_CACHE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"could not alloc generic chips for bank %s\0A\00", align 1
@GPIO_INTMASK = common dso_local global i64 0, align 8
@GPIO_INTEN = common dso_local global i64 0, align 8
@GPIO_PORTS_EOI = common dso_local global i32 0, align 4
@irq_gc_ack_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_clr_bit = common dso_local global i32 0, align 4
@rockchip_irq_enable = common dso_local global i32 0, align 4
@rockchip_irq_disable = common dso_local global i32 0, align 4
@irq_gc_set_wake = common dso_local global i32 0, align 4
@rockchip_irq_suspend = common dso_local global i32 0, align 4
@rockchip_irq_resume = common dso_local global i32 0, align 4
@rockchip_irq_set_type = common dso_local global i32 0, align 4
@rockchip_irq_demux = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.rockchip_pinctrl*)* @rockchip_interrupts_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_interrupts_register(%struct.platform_device* %0, %struct.rockchip_pinctrl* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rockchip_pinctrl*, align 8
  %5 = alloca %struct.rockchip_pin_ctrl*, align 8
  %6 = alloca %struct.rockchip_pin_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_chip_generic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.rockchip_pinctrl* %1, %struct.rockchip_pinctrl** %4, align 8
  %12 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %4, align 8
  %13 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %12, i32 0, i32 0
  %14 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %13, align 8
  store %struct.rockchip_pin_ctrl* %14, %struct.rockchip_pin_ctrl** %5, align 8
  %15 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %15, i32 0, i32 1
  %17 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %16, align 8
  store %struct.rockchip_pin_bank* %17, %struct.rockchip_pin_bank** %6, align 8
  %18 = load i32, i32* @IRQ_NOREQUEST, align 4
  %19 = load i32, i32* @IRQ_NOPROBE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %233, %2
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %238

29:                                               ; preds = %23
  %30 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %31 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %38 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %233

41:                                               ; preds = %29
  %42 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %43 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_enable(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %52 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %233

55:                                               ; preds = %41
  %56 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %57 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @irq_domain_add_linear(i32 %58, i32 32, i32* @irq_generic_chip_ops, i32* null)
  %60 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %61 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %63 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %55
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %70 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %74 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @clk_disable(i32 %75)
  br label %233

77:                                               ; preds = %55
  %78 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %79 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @handle_level_irq, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @IRQ_GC_INIT_MASK_CACHE, align 4
  %84 = call i32 @irq_alloc_domain_generic_chips(i32 %80, i32 32, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82, i32 0, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %77
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %91 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %95 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @irq_domain_remove(i32 %96)
  %98 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %99 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @clk_disable(i32 %100)
  br label %233

102:                                              ; preds = %77
  %103 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %104 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GPIO_INTMASK, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel_relaxed(i32 -1, i64 %107)
  %109 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %110 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GPIO_INTEN, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel_relaxed(i32 -1, i64 %113)
  %115 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %116 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32 %117, i32 0)
  store %struct.irq_chip_generic* %118, %struct.irq_chip_generic** %8, align 8
  %119 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %120 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %123 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  %124 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %125 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %126 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %125, i32 0, i32 2
  store %struct.rockchip_pin_bank* %124, %struct.rockchip_pin_bank** %126, align 8
  %127 = load i64, i64* @GPIO_INTMASK, align 8
  %128 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %129 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i64 %127, i64* %133, align 8
  %134 = load i32, i32* @GPIO_PORTS_EOI, align 4
  %135 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %136 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i32 %134, i32* %140, align 8
  %141 = load i32, i32* @irq_gc_ack_set_bit, align 4
  %142 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %143 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 8
  store i32 %141, i32* %147, align 8
  %148 = load i32, i32* @irq_gc_mask_set_bit, align 4
  %149 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %150 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 7
  store i32 %148, i32* %154, align 4
  %155 = load i32, i32* @irq_gc_mask_clr_bit, align 4
  %156 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %157 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 6
  store i32 %155, i32* %161, align 8
  %162 = load i32, i32* @rockchip_irq_enable, align 4
  %163 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %164 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 5
  store i32 %162, i32* %168, align 4
  %169 = load i32, i32* @rockchip_irq_disable, align 4
  %170 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %171 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 4
  store i32 %169, i32* %175, align 8
  %176 = load i32, i32* @irq_gc_set_wake, align 4
  %177 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %178 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  store i32 %176, i32* %182, align 4
  %183 = load i32, i32* @rockchip_irq_suspend, align 4
  %184 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %185 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %184, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  store i32 %183, i32* %189, align 8
  %190 = load i32, i32* @rockchip_irq_resume, align 4
  %191 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %192 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  store i32 %190, i32* %196, align 4
  %197 = load i32, i32* @rockchip_irq_set_type, align 4
  %198 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %199 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32 %197, i32* %203, align 8
  %204 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %205 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @IRQ_MSK(i32 %206)
  %208 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %209 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %211 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @rockchip_irq_demux, align 4
  %214 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %215 = call i32 @irq_set_chained_handler_and_data(i32 %212, i32 %213, %struct.rockchip_pin_bank* %214)
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %225, %102
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %217, 32
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %221 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @irq_create_mapping(i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %219
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %216

228:                                              ; preds = %216
  %229 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %230 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @clk_disable(i32 %231)
  br label %233

233:                                              ; preds = %228, %87, %66, %48, %34
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  %236 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %237 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %236, i32 1
  store %struct.rockchip_pin_bank* %237, %struct.rockchip_pin_bank** %6, align 8
  br label %23

238:                                              ; preds = %23
  ret i32 0
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, i32*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @irq_alloc_domain_generic_chips(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32, i32) #1

declare dso_local i32 @IRQ_MSK(i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.rockchip_pin_bank*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
