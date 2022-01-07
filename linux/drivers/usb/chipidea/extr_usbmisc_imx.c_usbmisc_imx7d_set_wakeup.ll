; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx7d_set_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx7d_set_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32 }
%struct.imx_usbmisc = type { i32, i32 }

@MX6_BM_WAKEUP_ENABLE = common dso_local global i32 0, align 4
@MX6_BM_VBUS_WAKEUP = common dso_local global i32 0, align 4
@MX6_BM_ID_WAKEUP = common dso_local global i32 0, align 4
@MX6_BM_WAKEUP_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"wakeup int\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*, i32)* @usbmisc_imx7d_set_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx7d_set_wakeup(%struct.imx_usbmisc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_usbmisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %10 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %11)
  store %struct.imx_usbmisc* %12, %struct.imx_usbmisc** %5, align 8
  %13 = load i32, i32* @MX6_BM_WAKEUP_ENABLE, align 4
  %14 = load i32, i32* @MX6_BM_VBUS_WAKEUP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MX6_BM_ID_WAKEUP, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %5, align 8
  %19 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %5, align 8
  %23 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %5, align 8
  %33 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %31, i32 %34)
  br label %55

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MX6_BM_WAKEUP_INTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %43 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %5, align 8
  %52 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writel(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %28
  %56 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %5, align 8
  %57 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %56, i32 0, i32 0
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret i32 0
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
