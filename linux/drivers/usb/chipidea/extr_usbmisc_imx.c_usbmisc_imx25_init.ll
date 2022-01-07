; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx25_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx25_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32, i32, i32 }
%struct.imx_usbmisc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MX25_OTG_SIC_MASK = common dso_local global i32 0, align 4
@MX25_OTG_PP_BIT = common dso_local global i32 0, align 4
@MX25_EHCI_INTERFACE_DIFF_UNI = common dso_local global i32 0, align 4
@MX25_EHCI_INTERFACE_MASK = common dso_local global i32 0, align 4
@MX25_OTG_SIC_SHIFT = common dso_local global i32 0, align 4
@MX25_OTG_PM_BIT = common dso_local global i32 0, align 4
@MX25_OTG_OCPOL_BIT = common dso_local global i32 0, align 4
@MX25_H1_SIC_MASK = common dso_local global i32 0, align 4
@MX25_H1_PP_BIT = common dso_local global i32 0, align 4
@MX25_H1_IPPUE_UP_BIT = common dso_local global i32 0, align 4
@MX25_EHCI_INTERFACE_SINGLE_UNI = common dso_local global i32 0, align 4
@MX25_H1_SIC_SHIFT = common dso_local global i32 0, align 4
@MX25_H1_PM_BIT = common dso_local global i32 0, align 4
@MX25_H1_OCPOL_BIT = common dso_local global i32 0, align 4
@MX25_H1_TLL_BIT = common dso_local global i32 0, align 4
@MX25_H1_USBTE_BIT = common dso_local global i32 0, align 4
@MX25_H1_IPPUE_DOWN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*)* @usbmisc_imx25_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx25_init(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca %struct.imx_usbmisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  %7 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %8 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %9)
  store %struct.imx_usbmisc* %10, %struct.imx_usbmisc** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %12 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %20 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %24 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %120 [
    i32 0, label %26
    i32 1, label %69
  ]

26:                                               ; preds = %18
  %27 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %28 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readl(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @MX25_OTG_SIC_MASK, align 4
  %32 = load i32, i32* @MX25_OTG_PP_BIT, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @MX25_EHCI_INTERFACE_DIFF_UNI, align 4
  %38 = load i32, i32* @MX25_EHCI_INTERFACE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @MX25_OTG_SIC_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @MX25_OTG_PM_BIT, align 4
  %45 = load i32, i32* @MX25_OTG_OCPOL_BIT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %50 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %26
  %54 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %55 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @MX25_OTG_OCPOL_BIT, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %53, %26
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %66 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @writel(i32 %64, i32 %67)
  br label %120

69:                                               ; preds = %18
  %70 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %71 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @readl(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @MX25_H1_SIC_MASK, align 4
  %75 = load i32, i32* @MX25_H1_PP_BIT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @MX25_H1_IPPUE_UP_BIT, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @MX25_EHCI_INTERFACE_SINGLE_UNI, align 4
  %83 = load i32, i32* @MX25_EHCI_INTERFACE_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @MX25_H1_SIC_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @MX25_H1_PM_BIT, align 4
  %90 = load i32, i32* @MX25_H1_OCPOL_BIT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @MX25_H1_TLL_BIT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @MX25_H1_USBTE_BIT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @MX25_H1_IPPUE_DOWN_BIT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %101 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %69
  %105 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %106 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* @MX25_H1_OCPOL_BIT, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %104, %69
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %117 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @writel(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %18, %114, %63
  %121 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %122 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %121, i32 0, i32 0
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %15
  %126 = load i32, i32* %2, align 4
  ret i32 %126
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
