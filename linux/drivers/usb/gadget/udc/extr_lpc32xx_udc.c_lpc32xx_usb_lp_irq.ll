; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_usb_lp_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_usb_lp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i32, i32, i32 }

@USBD_EP_FAST = common dso_local global i32 0, align 4
@USBD_DEV_STAT = common dso_local global i32 0, align 4
@ERR_INT = common dso_local global i32 0, align 4
@CMD_RD_ERR_STAT = common dso_local global i32 0, align 4
@DAT_RD_ERR_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Device error (0x%x)!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpc32xx_usb_lp_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_usb_lp_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpc32xx_udc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lpc32xx_udc*
  store %struct.lpc32xx_udc* %9, %struct.lpc32xx_udc** %7, align 8
  %10 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %11 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @USBD_DEVINTST(i32 %15)
  %17 = call i32 @readl(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @USBD_EP_FAST, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @USBD_DEVINTCLR(i32 %25)
  %27 = call i32 @writel(i32 %22, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @USBD_DEV_STAT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %39 = call i32 @udc_handle_dev(%struct.lpc32xx_udc* %38)
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ERR_INT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %47 = load i32, i32* @CMD_RD_ERR_STAT, align 4
  %48 = call i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc* %46, i32 %47)
  %49 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %50 = load i32, i32* @DAT_RD_ERR_STAT, align 4
  %51 = call i32 @udc_protocol_cmd_r(%struct.lpc32xx_udc* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %53 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %45, %40
  %58 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %59 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @USBD_DEVINTST(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_DEVINTCLR(i32) #1

declare dso_local i32 @udc_handle_dev(%struct.lpc32xx_udc*) #1

declare dso_local i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_protocol_cmd_r(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
