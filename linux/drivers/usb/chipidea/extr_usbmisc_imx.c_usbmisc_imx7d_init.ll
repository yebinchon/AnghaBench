; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx7d_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx7d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32, i64, i64, i64, i32 }
%struct.imx_usbmisc = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MX6_BM_OVER_CUR_DIS = common dso_local global i32 0, align 4
@MX6_BM_OVER_CUR_POLARITY = common dso_local global i32 0, align 4
@MX6_BM_PWR_POLARITY = common dso_local global i32 0, align 4
@MX7D_USBNC_USB_CTRL2 = common dso_local global i64 0, align 8
@MX7D_USB_VBUS_WAKEUP_SOURCE_MASK = common dso_local global i32 0, align 4
@MX7D_USB_VBUS_WAKEUP_SOURCE_BVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*)* @usbmisc_imx7d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx7d_init(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca %struct.imx_usbmisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  %7 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %8 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %9)
  store %struct.imx_usbmisc* %10, %struct.imx_usbmisc** %4, align 8
  %11 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %12 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %20 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %24 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %28 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load i32, i32* @MX6_BM_OVER_CUR_DIS, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %65

35:                                               ; preds = %18
  %36 = load i32, i32* @MX6_BM_OVER_CUR_DIS, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %41 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %46 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @MX6_BM_OVER_CUR_POLARITY, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %64

53:                                               ; preds = %44, %35
  %54 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %55 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @MX6_BM_OVER_CUR_POLARITY, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %67 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @MX6_BM_PWR_POLARITY, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %77 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @writel(i32 %75, i64 %78)
  %80 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %81 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MX7D_USBNC_USB_CTRL2, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl(i64 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @MX7D_USB_VBUS_WAKEUP_SOURCE_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @MX7D_USB_VBUS_WAKEUP_SOURCE_BVALID, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %94 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MX7D_USBNC_USB_CTRL2, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %100 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %99, i32 0, i32 0
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %104 = call i32 @usbmisc_imx7d_set_wakeup(%struct.imx_usbmisc_data* %103, i32 0)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %74, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbmisc_imx7d_set_wakeup(%struct.imx_usbmisc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
