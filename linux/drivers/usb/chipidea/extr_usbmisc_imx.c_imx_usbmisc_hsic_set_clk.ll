; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_imx_usbmisc_hsic_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_imx_usbmisc_hsic_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32 }
%struct.imx_usbmisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.imx_usbmisc_data*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_usbmisc_hsic_set_clk(%struct.imx_usbmisc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_usbmisc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_usbmisc*, align 8
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %8 = icmp ne %struct.imx_usbmisc_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %12 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %13)
  store %struct.imx_usbmisc* %14, %struct.imx_usbmisc** %6, align 8
  %15 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %16 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.imx_usbmisc_data*, i32)*, i32 (%struct.imx_usbmisc_data*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.imx_usbmisc_data*, i32)* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %23 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %10
  store i32 0, i32* %3, align 4
  br label %36

27:                                               ; preds = %21
  %28 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %6, align 8
  %29 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.imx_usbmisc_data*, i32)*, i32 (%struct.imx_usbmisc_data*, i32)** %31, align 8
  %33 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %32(%struct.imx_usbmisc_data* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %26, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
