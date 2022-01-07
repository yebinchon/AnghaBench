; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.chv_pinctrl = type { %struct.TYPE_7__, i32, i64, %struct.chv_community*, %struct.gpio_chip }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.chv_community = type { i32, i32, %struct.chv_gpio_pinrange*, i32, %struct.TYPE_5__* }
%struct.chv_gpio_pinrange = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@chv_no_valid_mask = common dso_local global i32 0, align 4
@chv_gpio_chip = common dso_local global %struct.gpio_chip zeroinitializer, align 8
@chv_init_irq_valid_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to register gpiochip\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to add GPIO pin range\0A\00", align 1
@CHV_INTMASK = common dso_local global i64 0, align 8
@CHV_INTSTAT = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to allocate IRQ numbers\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"chv-gpio\00", align 1
@chv_gpio_irq_startup = common dso_local global i32 0, align 4
@chv_gpio_irq_ack = common dso_local global i32 0, align 4
@chv_gpio_irq_mask = common dso_local global i32 0, align 4
@chv_gpio_irq_unmask = common dso_local global i32 0, align 4
@chv_gpio_irq_type = common dso_local global i32 0, align 4
@IRQCHIP_SKIP_SET_WAKE = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to add IRQ chip\0A\00", align 1
@chv_gpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chv_pinctrl*, i32)* @chv_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_gpio_probe(%struct.chv_pinctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chv_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.chv_gpio_pinrange*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.chv_community*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.chv_pinctrl* %0, %struct.chv_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %13, i32 0, i32 4
  store %struct.gpio_chip* %14, %struct.gpio_chip** %7, align 8
  %15 = load i32, i32* @chv_no_valid_mask, align 4
  %16 = call i32 @dmi_check_system(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %21 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %20, i32 0, i32 3
  %22 = load %struct.chv_community*, %struct.chv_community** %21, align 8
  store %struct.chv_community* %22, %struct.chv_community** %9, align 8
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %24 = bitcast %struct.gpio_chip* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.gpio_chip* @chv_gpio_chip to i8*), i64 32, i1 false)
  %25 = load %struct.chv_community*, %struct.chv_community** %9, align 8
  %26 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.chv_community*, %struct.chv_community** %9, align 8
  %29 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %40 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_name(i32 %41)
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %46 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load i32, i32* @chv_init_irq_valid_mask, align 4
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %57 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %2
  %60 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %61 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %64 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %65 = call i32 @devm_gpiochip_add_data(i32 %62, %struct.gpio_chip* %63, %struct.chv_pinctrl* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %70 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %247

74:                                               ; preds = %59
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %112, %74
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.chv_community*, %struct.chv_community** %9, align 8
  %78 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %75
  %82 = load %struct.chv_community*, %struct.chv_community** %9, align 8
  %83 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %82, i32 0, i32 2
  %84 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %84, i64 %86
  store %struct.chv_gpio_pinrange* %87, %struct.chv_gpio_pinrange** %6, align 8
  %88 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %89 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %90 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_name(i32 %91)
  %93 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %6, align 8
  %94 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %6, align 8
  %97 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %6, align 8
  %100 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @gpiochip_add_pin_range(%struct.gpio_chip* %88, i32 %92, i32 %95, i32 %98, i64 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %81
  %106 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %107 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %247

111:                                              ; preds = %81
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %75

115:                                              ; preds = %75
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %115
  %119 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %120 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %119, i32 0, i32 3
  %121 = load %struct.chv_community*, %struct.chv_community** %120, align 8
  %122 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @GENMASK(i32 31, i32 %123)
  %125 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %126 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CHV_INTMASK, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @chv_writel(i32 %124, i64 %129)
  br label %131

131:                                              ; preds = %118, %115
  %132 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %133 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CHV_INTSTAT, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @chv_writel(i32 65535, i64 %136)
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %131
  %141 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %142 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.chv_community*, %struct.chv_community** %9, align 8
  %145 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NUMA_NO_NODE, align 4
  %148 = call i32 @devm_irq_alloc_descs(i32 %143, i32 -1, i32 0, i32 %146, i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %140
  %152 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %153 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %3, align 4
  br label %247

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157, %131
  %159 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %160 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %161, align 8
  %162 = load i32, i32* @chv_gpio_irq_startup, align 4
  %163 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %164 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 6
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @chv_gpio_irq_ack, align 4
  %167 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %168 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 5
  store i32 %166, i32* %169, align 8
  %170 = load i32, i32* @chv_gpio_irq_mask, align 4
  %171 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %172 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* @chv_gpio_irq_unmask, align 4
  %175 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %176 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  store i32 %174, i32* %177, align 8
  %178 = load i32, i32* @chv_gpio_irq_type, align 4
  %179 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %180 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* @IRQCHIP_SKIP_SET_WAKE, align 4
  %183 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %184 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 8
  %186 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %187 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %188 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %187, i32 0, i32 0
  %189 = load i32, i32* @handle_bad_irq, align 4
  %190 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %191 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %186, %struct.TYPE_7__* %188, i32 0, i32 %189, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %158
  %195 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %196 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dev_err(i32 %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %3, align 4
  br label %247

200:                                              ; preds = %158
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %240, label %203

203:                                              ; preds = %200
  store i32 0, i32* %11, align 4
  br label %204

204:                                              ; preds = %236, %203
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.chv_community*, %struct.chv_community** %9, align 8
  %207 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %210, label %239

210:                                              ; preds = %204
  %211 = load %struct.chv_community*, %struct.chv_community** %9, align 8
  %212 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %211, i32 0, i32 2
  %213 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %213, i64 %215
  store %struct.chv_gpio_pinrange* %216, %struct.chv_gpio_pinrange** %6, align 8
  %217 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %218 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %6, align 8
  %223 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %6, align 8
  %226 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @irq_domain_associate_many(i32 %220, i32 %221, i32 %224, i64 %227)
  %229 = load %struct.chv_gpio_pinrange*, %struct.chv_gpio_pinrange** %6, align 8
  %230 = getelementptr inbounds %struct.chv_gpio_pinrange, %struct.chv_gpio_pinrange* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %231
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %210
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %204

239:                                              ; preds = %204
  br label %240

240:                                              ; preds = %239, %200
  %241 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %242 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %243 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %242, i32 0, i32 0
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* @chv_gpio_irq_handler, align 4
  %246 = call i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip* %241, %struct.TYPE_7__* %243, i32 %244, i32 %245)
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %240, %194, %151, %105, %68
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @dmi_check_system(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(i32, %struct.gpio_chip*, %struct.chv_pinctrl*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.gpio_chip*, i32, i32, i32, i64) #1

declare dso_local i32 @chv_writel(i32, i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @devm_irq_alloc_descs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @irq_domain_associate_many(i32, i32, i32, i64) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
