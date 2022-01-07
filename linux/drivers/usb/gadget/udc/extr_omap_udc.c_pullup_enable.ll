; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_pullup_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_pullup_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_udc = type { i32 }

@UDC_SYSCON1 = common dso_local global i32 0, align 4
@UDC_PULLUP_EN = common dso_local global i32 0, align 4
@OTG_CTRL = common dso_local global i32 0, align 4
@OTG_BSESSVLD = common dso_local global i32 0, align 4
@UDC_DS_CHG_IE = common dso_local global i32 0, align 4
@UDC_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_udc*)* @pullup_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_enable(%struct.omap_udc* %0) #0 {
  %2 = alloca %struct.omap_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.omap_udc* %0, %struct.omap_udc** %2, align 8
  %5 = load i32, i32* @UDC_SYSCON1, align 4
  %6 = call i32 @omap_readw(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @UDC_PULLUP_EN, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @UDC_SYSCON1, align 4
  %12 = call i32 @omap_writew(i32 %10, i32 %11)
  %13 = load %struct.omap_udc*, %struct.omap_udc** %2, align 8
  %14 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %13, i32 0, i32 0
  %15 = call i32 @gadget_is_otg(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = call i32 (...) @cpu_is_omap15xx()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @OTG_CTRL, align 4
  %22 = call i32 @omap_readl(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @OTG_BSESSVLD, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @OTG_CTRL, align 4
  %28 = call i32 @omap_writel(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %17, %1
  %30 = load i32, i32* @UDC_DS_CHG_IE, align 4
  %31 = load i32, i32* @UDC_IRQ_EN, align 4
  %32 = call i32 @omap_writew(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @gadget_is_otg(i32*) #1

declare dso_local i32 @cpu_is_omap15xx(...) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
