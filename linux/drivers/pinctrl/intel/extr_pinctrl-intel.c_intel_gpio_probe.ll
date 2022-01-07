; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i32 }
%struct.intel_pinctrl = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.intel_community* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.intel_community = type { i32 }

@intel_gpio_chip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@intel_gpio_irq_ack = common dso_local global i32 0, align 4
@intel_gpio_irq_mask = common dso_local global i32 0, align 4
@intel_gpio_irq_unmask = common dso_local global i32 0, align 4
@intel_gpio_irq_type = common dso_local global i32 0, align 4
@intel_gpio_irq_wake = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to register gpiochip\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to add GPIO pin range\0A\00", align 1
@intel_gpio_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to request interrupt\0A\00", align 1
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to add irqchip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pinctrl*, i32)* @intel_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gpio_probe(%struct.intel_pinctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_community*, align 8
  store %struct.intel_pinctrl* %0, %struct.intel_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %10 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %9, i32 0, i32 3
  %11 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_7__* @intel_gpio_chip to i8*), i64 24, i1 false)
  %12 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %13 = call i32 @intel_gpio_ngpio(%struct.intel_pinctrl* %12)
  %14 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %15 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 %13, i32* %16, align 8
  %17 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %18 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @dev_name(i32 %19)
  %21 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %22 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i8* %20, i8** %23, align 8
  %24 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %25 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %28 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %31 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %35 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %37 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @dev_name(i32 %38)
  %40 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %41 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 6
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* @intel_gpio_irq_ack, align 4
  %44 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %45 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @intel_gpio_irq_mask, align 4
  %48 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %49 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @intel_gpio_irq_unmask, align 4
  %52 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %53 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @intel_gpio_irq_type, align 4
  %56 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %57 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @intel_gpio_irq_wake, align 4
  %60 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %61 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %64 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %65 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %68 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %71 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %70, i32 0, i32 3
  %72 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %73 = call i32 @devm_gpiochip_add_data(i32 %69, %struct.TYPE_7__* %71, %struct.intel_pinctrl* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %2
  %77 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %78 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %157

82:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %86 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %91 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %90, i32 0, i32 5
  %92 = load %struct.intel_community*, %struct.intel_community** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %92, i64 %94
  store %struct.intel_community* %95, %struct.intel_community** %8, align 8
  %96 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %97 = load %struct.intel_community*, %struct.intel_community** %8, align 8
  %98 = call i32 @intel_gpio_add_pin_ranges(%struct.intel_pinctrl* %96, %struct.intel_community* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %103 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %157

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %113 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @intel_gpio_irq, align 4
  %117 = load i32, i32* @IRQF_SHARED, align 4
  %118 = load i32, i32* @IRQF_NO_THREAD, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %121 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @dev_name(i32 %122)
  %124 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %125 = call i32 @devm_request_irq(i32 %114, i32 %115, i32 %116, i32 %119, i8* %123, %struct.intel_pinctrl* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %111
  %129 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %130 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %157

134:                                              ; preds = %111
  %135 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %136 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %135, i32 0, i32 3
  %137 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %138 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %137, i32 0, i32 2
  %139 = load i32, i32* @handle_bad_irq, align 4
  %140 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %141 = call i32 @gpiochip_irqchip_add(%struct.TYPE_7__* %136, %struct.TYPE_8__* %138, i32 0, i32 %139, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %146 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dev_err(i32 %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %157

150:                                              ; preds = %134
  %151 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %152 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %151, i32 0, i32 3
  %153 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %154 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %153, i32 0, i32 2
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @gpiochip_set_chained_irqchip(%struct.TYPE_7__* %152, %struct.TYPE_8__* %154, i32 %155, i32* null)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %144, %128, %101, %76
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @intel_gpio_ngpio(%struct.intel_pinctrl*) #2

declare dso_local i8* @dev_name(i32) #2

declare dso_local i32 @devm_gpiochip_add_data(i32, %struct.TYPE_7__*, %struct.intel_pinctrl*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @intel_gpio_add_pin_ranges(%struct.intel_pinctrl*, %struct.intel_community*) #2

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.intel_pinctrl*) #2

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
