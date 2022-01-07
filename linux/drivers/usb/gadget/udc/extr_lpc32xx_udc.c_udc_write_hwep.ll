; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_write_hwep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_write_hwep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32 }

@CTRL_WR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*, i32, i32*, i32)* @udc_write_hwep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_write_hwep(%struct.lpc32xx_udc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.lpc32xx_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 30
  %12 = shl i32 %11, 1
  %13 = load i32, i32* @CTRL_WR_EN, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %59

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @USBD_CTRL(i32 %25)
  %27 = call i32 @writel(i32 %22, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @USBD_TXPLEN(i32 %31)
  %33 = call i32 @writel(i32 %28, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @USBD_TXDATA(i32 %39)
  %41 = call i32 @writel(i32 0, i32 %40)
  br label %47

42:                                               ; preds = %21
  %43 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @udc_stuff_fifo(%struct.lpc32xx_udc* %43, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 30
  %50 = shl i32 %49, 1
  %51 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %52 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @USBD_CTRL(i32 %53)
  %55 = call i32 @writel(i32 %50, i32 %54)
  %56 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @udc_val_buffer_hwep(%struct.lpc32xx_udc* %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %20
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_CTRL(i32) #1

declare dso_local i32 @USBD_TXPLEN(i32) #1

declare dso_local i32 @USBD_TXDATA(i32) #1

declare dso_local i32 @udc_stuff_fifo(%struct.lpc32xx_udc*, i32*, i32) #1

declare dso_local i32 @udc_val_buffer_hwep(%struct.lpc32xx_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
