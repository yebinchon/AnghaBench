; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_write_irqmisc_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_write_irqmisc_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_omap = type { i64, i32 }

@USBOTGSS_IRQENABLE_CLR_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_omap*, i32)* @dwc3_omap_write_irqmisc_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_omap_write_irqmisc_clr(%struct.dwc3_omap* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3_omap*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc3_omap* %0, %struct.dwc3_omap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %6 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i64, i64* @USBOTGSS_IRQENABLE_CLR_MISC, align 8
  %9 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dwc3_omap_writel(i32 %7, i64 %12, i32 %13)
  ret void
}

declare dso_local i32 @dwc3_omap_writel(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
