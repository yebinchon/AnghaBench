; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_imx_usbmisc_hsic_set_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_imx_usbmisc_hsic_set_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32 }
%struct.imx_usbmisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.imx_usbmisc_data*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_usbmisc_hsic_set_connect(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca %struct.imx_usbmisc*, align 8
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  %5 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %6 = icmp ne %struct.imx_usbmisc_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %10 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %11)
  store %struct.imx_usbmisc* %12, %struct.imx_usbmisc** %4, align 8
  %13 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %14 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.imx_usbmisc_data*)*, i32 (%struct.imx_usbmisc_data*)** %16, align 8
  %18 = icmp ne i32 (%struct.imx_usbmisc_data*)* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %21 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %8
  store i32 0, i32* %2, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %27 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.imx_usbmisc_data*)*, i32 (%struct.imx_usbmisc_data*)** %29, align 8
  %31 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %32 = call i32 %30(%struct.imx_usbmisc_data* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %24, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
