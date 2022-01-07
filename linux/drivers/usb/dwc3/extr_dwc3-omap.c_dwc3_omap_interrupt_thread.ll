; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_interrupt_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_interrupt_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_omap = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dwc3_omap_interrupt_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_omap_interrupt_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwc3_omap*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dwc3_omap*
  store %struct.dwc3_omap* %8, %struct.dwc3_omap** %5, align 8
  %9 = load %struct.dwc3_omap*, %struct.dwc3_omap** %5, align 8
  %10 = call i32 @dwc3_omap_read_irqmisc_status(%struct.dwc3_omap* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dwc3_omap*, %struct.dwc3_omap** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dwc3_omap_write_irqmisc_status(%struct.dwc3_omap* %11, i32 %12)
  %14 = load %struct.dwc3_omap*, %struct.dwc3_omap** %5, align 8
  %15 = call i32 @dwc3_omap_read_irq0_status(%struct.dwc3_omap* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.dwc3_omap*, %struct.dwc3_omap** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dwc3_omap_write_irq0_status(%struct.dwc3_omap* %16, i32 %17)
  %19 = load %struct.dwc3_omap*, %struct.dwc3_omap** %5, align 8
  %20 = call i32 @dwc3_omap_enable_irqs(%struct.dwc3_omap* %19)
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %21
}

declare dso_local i32 @dwc3_omap_read_irqmisc_status(%struct.dwc3_omap*) #1

declare dso_local i32 @dwc3_omap_write_irqmisc_status(%struct.dwc3_omap*, i32) #1

declare dso_local i32 @dwc3_omap_read_irq0_status(%struct.dwc3_omap*) #1

declare dso_local i32 @dwc3_omap_write_irq0_status(%struct.dwc3_omap*, i32) #1

declare dso_local i32 @dwc3_omap_enable_irqs(%struct.dwc3_omap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
