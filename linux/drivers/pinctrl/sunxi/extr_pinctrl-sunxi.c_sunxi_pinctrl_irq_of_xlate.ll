; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.sunxi_pinctrl* }
%struct.sunxi_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.sunxi_desc_function = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PINS_PER_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* @sunxi_pinctrl_irq_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_irq_of_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i32* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sunxi_pinctrl*, align 8
  %15 = alloca %struct.sunxi_desc_function*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %19 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %18, i32 0, i32 0
  %20 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %19, align 8
  store %struct.sunxi_pinctrl* %20, %struct.sunxi_pinctrl** %14, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %67

26:                                               ; preds = %6
  %27 = load i32, i32* @PINS_PER_BANK, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %17, align 4
  %32 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %14, align 8
  %33 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %17, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %14, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sunxi_desc_function* %45, %struct.sunxi_desc_function** %15, align 8
  %46 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %15, align 8
  %47 = icmp ne %struct.sunxi_desc_function* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %26
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %67

51:                                               ; preds = %26
  %52 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %15, align 8
  %53 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PINS_PER_BANK, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %15, align 8
  %58 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %12, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %51, %48, %23
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
