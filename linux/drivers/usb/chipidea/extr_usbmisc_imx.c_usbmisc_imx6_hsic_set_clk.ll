; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6_hsic_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6_hsic_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32 }
%struct.imx_usbmisc = type { i32, i64 }

@MX6_USB_HSIC_CTRL_OFFSET = common dso_local global i64 0, align 8
@MX6_BM_HSIC_EN = common dso_local global i32 0, align 4
@MX6_BM_HSIC_CLK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*, i32)* @usbmisc_imx6_hsic_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx6_hsic_set_clk(%struct.imx_usbmisc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_usbmisc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_usbmisc*, align 8
  %9 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %11 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %12)
  store %struct.imx_usbmisc* %13, %struct.imx_usbmisc** %8, align 8
  %14 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %8, align 8
  %15 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %19 = call i32 @usbmisc_imx6_hsic_get_reg_offset(%struct.imx_usbmisc_data* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %8, align 8
  %24 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %69

28:                                               ; preds = %2
  %29 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %8, align 8
  %30 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MX6_USB_HSIC_CTRL_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @MX6_BM_HSIC_EN, align 4
  %39 = load i32, i32* @MX6_BM_HSIC_CLK_ON, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @MX6_BM_HSIC_CLK_ON, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %28
  %50 = load i32, i32* @MX6_BM_HSIC_CLK_ON, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %8, align 8
  %57 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MX6_USB_HSIC_CTRL_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = call i32 @writel(i32 %55, i64 %63)
  %65 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %8, align 8
  %66 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %65, i32 0, i32 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %54, %22
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usbmisc_imx6_hsic_get_reg_offset(%struct.imx_usbmisc_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
