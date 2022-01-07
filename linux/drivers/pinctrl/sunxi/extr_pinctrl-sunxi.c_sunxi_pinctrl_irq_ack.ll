; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.sunxi_pinctrl = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sunxi_pinctrl_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_pinctrl_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.sunxi_pinctrl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.sunxi_pinctrl* %7, %struct.sunxi_pinctrl** %3, align 8
  %8 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %3, align 8
  %9 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @sunxi_irq_status_reg(i32 %10, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sunxi_irq_status_offset(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %3, align 8
  %22 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  ret void
}

declare dso_local %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @sunxi_irq_status_reg(i32, i32) #1

declare dso_local i32 @sunxi_irq_status_offset(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
