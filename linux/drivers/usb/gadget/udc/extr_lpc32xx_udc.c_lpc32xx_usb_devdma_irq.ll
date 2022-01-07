; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_usb_devdma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_usb_devdma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpc32xx_usb_devdma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_usb_devdma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lpc32xx_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lpc32xx_udc*
  store %struct.lpc32xx_udc* %9, %struct.lpc32xx_udc** %5, align 8
  %10 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %11 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @USBD_EOTINTST(i32 %15)
  %17 = call i32 @readl(i32 %16)
  %18 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %19 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @USBD_EPDMAST(i32 %20)
  %22 = call i32 @readl(i32 %21)
  %23 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @USBD_NDDRTINTST(i32 %25)
  %27 = call i32 @readl(i32 %26)
  %28 = and i32 %22, %27
  %29 = or i32 %17, %28
  %30 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @USBD_SYSERRTINTST(i32 %32)
  %34 = call i32 @readl(i32 %33)
  %35 = or i32 %29, %34
  store i32 %35, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %63, %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NUM_ENDPOINTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %41, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %40
  %54 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %55 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %56 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = call i32 @udc_handle_dma_ep(%struct.lpc32xx_udc* %54, %struct.TYPE_2__* %60)
  br label %62

62:                                               ; preds = %53, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %68 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @USBD_EOTINTST(i32) #1

declare dso_local i32 @USBD_EPDMAST(i32) #1

declare dso_local i32 @USBD_NDDRTINTST(i32) #1

declare dso_local i32 @USBD_SYSERRTINTST(i32) #1

declare dso_local i32 @udc_handle_dma_ep(%struct.lpc32xx_udc*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
