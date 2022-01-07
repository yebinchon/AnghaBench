; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx27_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx27_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i64, i32 }
%struct.imx_usbmisc = type { i32, i32 }

@MX27_OTG_PM_BIT = common dso_local global i32 0, align 4
@MX27_H1_PM_BIT = common dso_local global i32 0, align 4
@MX27_H2_PM_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*)* @usbmisc_imx27_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx27_init(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca %struct.imx_usbmisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  %7 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %8 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %9)
  store %struct.imx_usbmisc* %10, %struct.imx_usbmisc** %4, align 8
  %11 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %12 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %20 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @MX27_OTG_PM_BIT, align 4
  store i32 %15, i32* %6, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @MX27_H1_PM_BIT, align 4
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @MX27_H2_PM_BIT, align 4
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %18, %16, %14
  %24 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %25 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %29 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %34 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @readl(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %6, align 4
  br label %47

39:                                               ; preds = %23
  %40 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %41 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @readl(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %39, %32
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %50 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @writel(i32 %48, i32 %51)
  %53 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %54 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %47, %20
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
