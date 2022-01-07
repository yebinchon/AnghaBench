; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_usb_hp_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_usb_hp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@USBD_EP_FAST = common dso_local global i32 0, align 4
@EP_OUT = common dso_local global i32 0, align 4
@EP_IN = common dso_local global i32 0, align 4
@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpc32xx_usb_hp_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_usb_hp_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpc32xx_udc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lpc32xx_udc*
  store %struct.lpc32xx_udc* %9, %struct.lpc32xx_udc** %6, align 8
  %10 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %11 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @USBD_EP_FAST, align 4
  %14 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %15 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @USBD_DEVINTCLR(i32 %16)
  %18 = call i32 @writel(i32 %13, i32 %17)
  %19 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %20 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @USBD_EPINTST(i32 %21)
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EP_OUT, align 4
  %26 = call i32 @EP_MASK_SEL(i32 0, i32 %25)
  %27 = load i32, i32* @EP_IN, align 4
  %28 = call i32 @EP_MASK_SEL(i32 0, i32 %27)
  %29 = or i32 %26, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @EP_IN, align 4
  %35 = call i32 @EP_MASK_SEL(i32 0, i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %40 = call i32 @udc_handle_ep0_in(%struct.lpc32xx_udc* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @EP_OUT, align 4
  %44 = call i32 @EP_MASK_SEL(i32 0, i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %49 = call i32 @udc_handle_ep0_out(%struct.lpc32xx_udc* %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EP_OUT, align 4
  %54 = call i32 @EP_MASK_SEL(i32 0, i32 %53)
  %55 = load i32, i32* @EP_IN, align 4
  %56 = call i32 @EP_MASK_SEL(i32 0, i32 %55)
  %57 = or i32 %54, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %52, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %62

62:                                               ; preds = %89, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NUM_ENDPOINTS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %67, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %66
  %80 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %81 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %82 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = call i32 @udc_handle_eps(%struct.lpc32xx_udc* %80, %struct.TYPE_2__* %86)
  br label %88

88:                                               ; preds = %79, %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %62

92:                                               ; preds = %62
  br label %93

93:                                               ; preds = %92, %51
  %94 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_DEVINTCLR(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @USBD_EPINTST(i32) #1

declare dso_local i32 @EP_MASK_SEL(i32, i32) #1

declare dso_local i32 @udc_handle_ep0_in(%struct.lpc32xx_udc*) #1

declare dso_local i32 @udc_handle_ep0_out(%struct.lpc32xx_udc*) #1

declare dso_local i32 @udc_handle_eps(%struct.lpc32xx_udc*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
