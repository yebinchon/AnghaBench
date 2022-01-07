; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_select_phy_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_select_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GPIO_PINMUX_OTHR_REG = common dso_local global i32 0, align 4
@GPIO_PINMUX_OTHR_6328_USB_MASK = common dso_local global i32 0, align 4
@GPIO_PINMUX_OTHR_6328_USB_DEV = common dso_local global i32 0, align 4
@GPIO_PINMUX_OTHR_6328_USB_HOST = common dso_local global i32 0, align 4
@RSET_USBH_PRIV = common dso_local global i32 0, align 4
@USBH_PRIV_UTMI_CTL_6368_REG = common dso_local global i32 0, align 4
@USBH_PRIV_UTMI_CTL_HOSTB_SHIFT = common dso_local global i32 0, align 4
@USBH_PRIV_UTMI_CTL_NODRIV_SHIFT = common dso_local global i32 0, align 4
@USBH_PRIV_SWAP_6368_REG = common dso_local global i32 0, align 4
@USBH_PRIV_SWAP_USBD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*, i32)* @bcm63xx_select_phy_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_select_phy_mode(%struct.bcm63xx_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %8 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BIT(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = call i64 (...) @BCMCPU_IS_6328()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load i32, i32* @GPIO_PINMUX_OTHR_REG, align 4
  %17 = call i32 @bcm_gpio_readl(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @GPIO_PINMUX_OTHR_6328_USB_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @GPIO_PINMUX_OTHR_6328_USB_DEV, align 4
  br label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @GPIO_PINMUX_OTHR_6328_USB_HOST, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GPIO_PINMUX_OTHR_REG, align 4
  %34 = call i32 @bcm_gpio_writel(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i32, i32* @RSET_USBH_PRIV, align 4
  %37 = load i32, i32* @USBH_PRIV_UTMI_CTL_6368_REG, align 4
  %38 = call i32 @bcm_rset_readl(i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @USBH_PRIV_UTMI_CTL_HOSTB_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @USBH_PRIV_UTMI_CTL_NODRIV_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %65

52:                                               ; preds = %35
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @USBH_PRIV_UTMI_CTL_HOSTB_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @USBH_PRIV_UTMI_CTL_NODRIV_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %52, %41
  %66 = load i32, i32* @RSET_USBH_PRIV, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @USBH_PRIV_UTMI_CTL_6368_REG, align 4
  %69 = call i32 @bcm_rset_writel(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @RSET_USBH_PRIV, align 4
  %71 = load i32, i32* @USBH_PRIV_SWAP_6368_REG, align 4
  %72 = call i32 @bcm_rset_readl(i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @USBH_PRIV_SWAP_USBD_MASK, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %84

79:                                               ; preds = %65
  %80 = load i32, i32* @USBH_PRIV_SWAP_USBD_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i32, i32* @RSET_USBH_PRIV, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @USBH_PRIV_SWAP_6368_REG, align 4
  %88 = call i32 @bcm_rset_writel(i32 %85, i32 %86, i32 %87)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @BCMCPU_IS_6328(...) #1

declare dso_local i32 @bcm_gpio_readl(i32) #1

declare dso_local i32 @bcm_gpio_writel(i32, i32) #1

declare dso_local i32 @bcm_rset_readl(i32, i32) #1

declare dso_local i32 @bcm_rset_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
