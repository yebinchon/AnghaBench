; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_community = type { i32 }
%struct.intel_pinctrl = type { i32, %struct.intel_community* }

@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intel_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gpio_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.intel_community*, align 8
  %6 = alloca %struct.intel_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.intel_pinctrl*
  store %struct.intel_pinctrl* %10, %struct.intel_pinctrl** %6, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %6, align 8
  %15 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %6, align 8
  %20 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %19, i32 0, i32 1
  %21 = load %struct.intel_community*, %struct.intel_community** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %21, i64 %23
  store %struct.intel_community* %24, %struct.intel_community** %5, align 8
  %25 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %6, align 8
  %26 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %27 = call i32 @intel_gpio_community_irq_handler(%struct.intel_pinctrl* %25, %struct.intel_community* %26)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @intel_gpio_community_irq_handler(%struct.intel_pinctrl*, %struct.intel_community*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
