; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_irq_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_irq_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.sx150x_pinctrl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sx150x_irq_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx150x_irq_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.sx150x_pinctrl*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  %6 = call %struct.sx150x_pinctrl* @gpiochip_get_data(i32 %5)
  store %struct.sx150x_pinctrl* %6, %struct.sx150x_pinctrl** %3, align 8
  %7 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %8 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %11 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %16 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_write(i32 %9, i32 %14, i32 %18)
  %20 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %21 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %24 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %29 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_write(i32 %22, i32 %27, i32 %31)
  %33 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %34 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local %struct.sx150x_pinctrl* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
