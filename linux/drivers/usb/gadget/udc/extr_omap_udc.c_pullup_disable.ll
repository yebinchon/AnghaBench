; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_pullup_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_pullup_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_udc = type { i32 }

@OTG_CTRL = common dso_local global i32 0, align 4
@OTG_BSESSVLD = common dso_local global i32 0, align 4
@UDC_DS_CHG_IE = common dso_local global i32 0, align 4
@UDC_IRQ_EN = common dso_local global i32 0, align 4
@UDC_SYSCON1 = common dso_local global i32 0, align 4
@UDC_PULLUP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_udc*)* @pullup_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_disable(%struct.omap_udc* %0) #0 {
  %2 = alloca %struct.omap_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.omap_udc* %0, %struct.omap_udc** %2, align 8
  %5 = load %struct.omap_udc*, %struct.omap_udc** %2, align 8
  %6 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %5, i32 0, i32 0
  %7 = call i32 @gadget_is_otg(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @cpu_is_omap15xx()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @OTG_CTRL, align 4
  %14 = call i32 @omap_readl(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @OTG_BSESSVLD, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @OTG_CTRL, align 4
  %21 = call i32 @omap_writel(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %12, %9, %1
  %23 = load i32, i32* @UDC_DS_CHG_IE, align 4
  %24 = load i32, i32* @UDC_IRQ_EN, align 4
  %25 = call i32 @omap_writew(i32 %23, i32 %24)
  %26 = load i32, i32* @UDC_SYSCON1, align 4
  %27 = call i32 @omap_readw(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @UDC_PULLUP_EN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @UDC_SYSCON1, align 4
  %34 = call i32 @omap_writew(i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @gadget_is_otg(i32*) #1

declare dso_local i32 @cpu_is_omap15xx(...) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @omap_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
