; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_udc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_udc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@UDCICR0 = common dso_local global i32 0, align 4
@UDCICR1 = common dso_local global i32 0, align 4
@UDCCR_UDE = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@UDCCSR0_ACM = common dso_local global i32 0, align 4
@UDCCR = common dso_local global i32 0, align 4
@UDCCR_EMCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Configuration errors, udc disabled\0A\00", align 1
@UDCICR1_IECC = common dso_local global i32 0, align 4
@UDCICR1_IERU = common dso_local global i32 0, align 4
@UDCICR1_IESU = common dso_local global i32 0, align 4
@UDCICR1_IERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*)* @udc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_enable(%struct.pxa_udc* %0) #0 {
  %2 = alloca %struct.pxa_udc*, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %2, align 8
  %3 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %4 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %73

8:                                                ; preds = %1
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %10 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_enable(i32 %11)
  %13 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %14 = load i32, i32* @UDCICR0, align 4
  %15 = call i32 @udc_writel(%struct.pxa_udc* %13, i32 %14, i32 0)
  %16 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %17 = load i32, i32* @UDCICR1, align 4
  %18 = call i32 @udc_writel(%struct.pxa_udc* %16, i32 %17, i32 0)
  %19 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %20 = load i32, i32* @UDCCR_UDE, align 4
  %21 = call i32 @udc_clear_mask_UDCCR(%struct.pxa_udc* %19, i32 %20)
  %22 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %23 = call i32 @ep0_idle(%struct.pxa_udc* %22)
  %24 = load i32, i32* @USB_SPEED_FULL, align 4
  %25 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %26 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %29 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %28, i32 0, i32 3
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %32 = call i32 @pxa_eps_setup(%struct.pxa_udc* %31)
  %33 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %34 = load i32, i32* @UDCCR_UDE, align 4
  %35 = call i32 @udc_set_mask_UDCCR(%struct.pxa_udc* %33, i32 %34)
  %36 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %37 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* @UDCCSR0_ACM, align 4
  %41 = call i32 @ep_write_UDCCSR(i32* %39, i32 %40)
  %42 = call i32 @udelay(i32 2)
  %43 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %44 = load i32, i32* @UDCCR, align 4
  %45 = call i32 @udc_readl(%struct.pxa_udc* %43, i32 %44)
  %46 = load i32, i32* @UDCCR_EMCE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %8
  %50 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %51 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %8
  %55 = call i32 @msleep(i32 100)
  %56 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %57 = load i32, i32* @UDCICR1, align 4
  %58 = load i32, i32* @UDCICR1_IECC, align 4
  %59 = load i32, i32* @UDCICR1_IERU, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @UDCICR1_IESU, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @UDCICR1_IERS, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @udc_writel(%struct.pxa_udc* %56, i32 %57, i32 %64)
  %66 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %67 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i32 @pio_irq_enable(i32* %69)
  %71 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %72 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %54, %7
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @udc_writel(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @udc_clear_mask_UDCCR(%struct.pxa_udc*, i32) #1

declare dso_local i32 @ep0_idle(%struct.pxa_udc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pxa_eps_setup(%struct.pxa_udc*) #1

declare dso_local i32 @udc_set_mask_UDCCR(%struct.pxa_udc*, i32) #1

declare dso_local i32 @ep_write_UDCCSR(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @udc_readl(%struct.pxa_udc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pio_irq_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
