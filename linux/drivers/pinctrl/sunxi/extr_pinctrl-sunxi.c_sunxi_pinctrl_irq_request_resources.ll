; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.sunxi_pinctrl = type { i64*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sunxi_desc_function = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @sunxi_pinctrl_irq_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_irq_request_resources(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.sunxi_pinctrl*, align 8
  %5 = alloca %struct.sunxi_desc_function*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.sunxi_pinctrl* %8, %struct.sunxi_pinctrl** %4, align 8
  %9 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %10 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %11 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl* %9, i64 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sunxi_desc_function* %18, %struct.sunxi_desc_function** %5, align 8
  %19 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %5, align 8
  %20 = icmp ne %struct.sunxi_desc_function* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %1
  %25 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %29 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %32 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %37 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %35, %40
  %42 = call i32 @gpiochip_lock_as_irq(i32 %27, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %24
  %46 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %47 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %50 = call i32 @irqd_to_hwirq(%struct.irq_data* %49)
  %51 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %69

53:                                               ; preds = %24
  %54 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %55 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %58 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %61 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %5, align 8
  %66 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sunxi_pmx_set(i32 %56, i64 %64, i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %53, %45, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl*, i64, i8*) #1

declare dso_local i32 @gpiochip_lock_as_irq(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @sunxi_pmx_set(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
