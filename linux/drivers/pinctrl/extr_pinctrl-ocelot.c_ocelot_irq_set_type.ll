; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ocelot_eoi_irqchip = common dso_local global i32 0, align 4
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@ocelot_irqchip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @ocelot_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %11 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %25 = load i32, i32* @handle_fasteoi_irq, align 4
  %26 = call i32 @irq_set_chip_handler_name_locked(%struct.irq_data* %24, i32* @ocelot_eoi_irqchip, i32 %25, i32* null)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %34 = load i32, i32* @handle_edge_irq, align 4
  %35 = call i32 @irq_set_chip_handler_name_locked(%struct.irq_data* %33, i32* @ocelot_irqchip, i32 %34, i32* null)
  br label %36

36:                                               ; preds = %32, %27
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @irq_set_chip_handler_name_locked(%struct.irq_data*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
