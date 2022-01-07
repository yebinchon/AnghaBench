; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C2443_PWRCFG = common dso_local global i32 0, align 4
@S3C2443_PWRCFG_USBPHY = common dso_local global i32 0, align 4
@S3C2443_URSTCON = common dso_local global i32 0, align 4
@S3C2443_URSTCON_FUNCRST = common dso_local global i32 0, align 4
@S3C2443_URSTCON_PHYRST = common dso_local global i32 0, align 4
@S3C2443_PHYCTRL = common dso_local global i32 0, align 4
@S3C2443_PHYCTRL_CLKSEL = common dso_local global i32 0, align 4
@S3C2443_PHYCTRL_DSPORT = common dso_local global i32 0, align 4
@S3C2443_PHYCTRL_EXTCLK = common dso_local global i32 0, align 4
@S3C2443_PHYCTRL_PLLSEL = common dso_local global i32 0, align 4
@S3C2443_PHYPWR = common dso_local global i32 0, align 4
@S3C2443_PHYPWR_FSUSPEND = common dso_local global i32 0, align 4
@S3C2443_PHYPWR_PLL_PWRDN = common dso_local global i32 0, align 4
@S3C2443_PHYPWR_XO_ON = common dso_local global i32 0, align 4
@S3C2443_PHYPWR_PLL_REFCLK = common dso_local global i32 0, align 4
@S3C2443_PHYPWR_ANALOG_PD = common dso_local global i32 0, align 4
@S3C2443_PHYPWR_COMMON_ON = common dso_local global i32 0, align 4
@S3C2443_UCLKCON = common dso_local global i32 0, align 4
@S3C2443_UCLKCON_DETECT_VBUS = common dso_local global i32 0, align 4
@S3C2443_UCLKCON_FUNC_CLKEN = common dso_local global i32 0, align 4
@S3C2443_UCLKCON_TCLKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s3c_hsudc_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsudc_init_phy() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @S3C2443_PWRCFG, align 4
  %3 = call i32 @readl(i32 %2)
  %4 = load i32, i32* @S3C2443_PWRCFG_USBPHY, align 4
  %5 = or i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @S3C2443_PWRCFG, align 4
  %8 = call i32 @writel(i32 %6, i32 %7)
  %9 = load i32, i32* @S3C2443_URSTCON, align 4
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @S3C2443_URSTCON_FUNCRST, align 4
  %12 = load i32, i32* @S3C2443_URSTCON_PHYRST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @S3C2443_URSTCON, align 4
  %18 = call i32 @writel(i32 %16, i32 %17)
  %19 = call i32 @mdelay(i32 1)
  %20 = load i32, i32* @S3C2443_URSTCON, align 4
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @S3C2443_URSTCON_FUNCRST, align 4
  %23 = load i32, i32* @S3C2443_URSTCON_PHYRST, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %1, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @S3C2443_URSTCON, align 4
  %30 = call i32 @writel(i32 %28, i32 %29)
  %31 = load i32, i32* @S3C2443_PHYCTRL, align 4
  %32 = call i32 @readl(i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @S3C2443_PHYCTRL_CLKSEL, align 4
  %34 = load i32, i32* @S3C2443_PHYCTRL_DSPORT, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %1, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @S3C2443_PHYCTRL_EXTCLK, align 4
  %40 = load i32, i32* @S3C2443_PHYCTRL_PLLSEL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %1, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @S3C2443_PHYCTRL, align 4
  %46 = call i32 @writel(i32 %44, i32 %45)
  %47 = load i32, i32* @S3C2443_PHYPWR, align 4
  %48 = call i32 @readl(i32 %47)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* @S3C2443_PHYPWR_FSUSPEND, align 4
  %50 = load i32, i32* @S3C2443_PHYPWR_PLL_PWRDN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @S3C2443_PHYPWR_XO_ON, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @S3C2443_PHYPWR_PLL_REFCLK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @S3C2443_PHYPWR_ANALOG_PD, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %1, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* @S3C2443_PHYPWR_COMMON_ON, align 4
  %62 = load i32, i32* %1, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @S3C2443_PHYPWR, align 4
  %66 = call i32 @writel(i32 %64, i32 %65)
  %67 = load i32, i32* @S3C2443_UCLKCON, align 4
  %68 = call i32 @readl(i32 %67)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* @S3C2443_UCLKCON_DETECT_VBUS, align 4
  %70 = load i32, i32* @S3C2443_UCLKCON_FUNC_CLKEN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @S3C2443_UCLKCON_TCLKEN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %1, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @S3C2443_UCLKCON, align 4
  %78 = call i32 @writel(i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
