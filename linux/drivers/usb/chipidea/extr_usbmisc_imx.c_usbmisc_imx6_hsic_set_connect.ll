; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6_hsic_set_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6_hsic_set_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32 }
%struct.imx_usbmisc = type { i32, i64 }

@MX6_USB_HSIC_CTRL_OFFSET = common dso_local global i64 0, align 8
@MX6_BM_HSIC_DEV_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*)* @usbmisc_imx6_hsic_set_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx6_hsic_set_connect(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_usbmisc*, align 8
  %7 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  %8 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %9 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %10)
  store %struct.imx_usbmisc* %11, %struct.imx_usbmisc** %6, align 8
  %12 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %13 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %17 = call i32 @usbmisc_imx6_hsic_get_reg_offset(%struct.imx_usbmisc_data* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %22 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %28 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MX6_USB_HSIC_CTRL_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MX6_BM_HSIC_DEV_CONN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MX6_BM_HSIC_DEV_CONN, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %45 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MX6_USB_HSIC_CTRL_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel(i32 %43, i64 %51)
  br label %53

53:                                               ; preds = %40, %26
  %54 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %55 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %54, i32 0, i32 0
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
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
