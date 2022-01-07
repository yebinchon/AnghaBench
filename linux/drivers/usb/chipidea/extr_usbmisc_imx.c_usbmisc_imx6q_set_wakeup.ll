; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6q_set_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6q_set_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32 }
%struct.imx_usbmisc = type { i32, i64 }

@MX6_BM_WAKEUP_ENABLE = common dso_local global i32 0, align 4
@MX6_BM_VBUS_WAKEUP = common dso_local global i32 0, align 4
@MX6_BM_ID_WAKEUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MX6_BM_WAKEUP_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wakeup int at ci_hdrc.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*, i32)* @usbmisc_imx6q_set_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx6q_set_wakeup(%struct.imx_usbmisc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_usbmisc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_usbmisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %12 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %13)
  store %struct.imx_usbmisc* %14, %struct.imx_usbmisc** %6, align 8
  %15 = load i32, i32* @MX6_BM_WAKEUP_ENABLE, align 4
  %16 = load i32, i32* @MX6_BM_VBUS_WAKEUP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MX6_BM_ID_WAKEUP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %21 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %80

27:                                               ; preds = %2
  %28 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %29 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %33 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %36 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %63

48:                                               ; preds = %27
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @MX6_BM_WAKEUP_INTR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %55 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %44
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %66 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %69 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %67, %72
  %74 = call i32 @writel(i32 %64, i64 %73)
  %75 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %76 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %75, i32 0, i32 0
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %63, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
