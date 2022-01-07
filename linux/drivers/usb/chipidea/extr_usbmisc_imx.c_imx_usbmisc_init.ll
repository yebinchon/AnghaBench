; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_imx_usbmisc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_imx_usbmisc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32 }
%struct.imx_usbmisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.imx_usbmisc_data*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_usbmisc_init(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca %struct.imx_usbmisc*, align 8
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  %5 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %6 = icmp ne %struct.imx_usbmisc_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %10 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %11)
  store %struct.imx_usbmisc* %12, %struct.imx_usbmisc** %4, align 8
  %13 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %14 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.imx_usbmisc_data*)*, i32 (%struct.imx_usbmisc_data*)** %16, align 8
  %18 = icmp ne i32 (%struct.imx_usbmisc_data*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %28

20:                                               ; preds = %8
  %21 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %22 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.imx_usbmisc_data*)*, i32 (%struct.imx_usbmisc_data*)** %24, align 8
  %26 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %27 = call i32 %25(%struct.imx_usbmisc_data* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %19, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
