; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa_udc = type { i32, i32*, i32 }

@pxa27x_udc_phy = common dso_local global i32 0, align 4
@the_controller = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_udc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_udc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pxa_udc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.pxa_udc* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.pxa_udc* %5, %struct.pxa_udc** %3, align 8
  %6 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %7 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %6, i32 0, i32 2
  %8 = call i32 @usb_del_gadget_udc(i32* %7)
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %10 = call i32 @pxa_cleanup_debugfs(%struct.pxa_udc* %9)
  %11 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %12 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @IS_ERR_OR_NULL(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %18 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @usb_unregister_notifier(i32* %19, i32* @pxa27x_udc_phy)
  %21 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %22 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @usb_put_phy(i32* %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %27 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  store i32* null, i32** @the_controller, align 8
  %28 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %29 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_unprepare(i32 %30)
  ret i32 0
}

declare dso_local %struct.pxa_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @pxa_cleanup_debugfs(%struct.pxa_udc*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @usb_unregister_notifier(i32*, i32*) #1

declare dso_local i32 @usb_put_phy(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
