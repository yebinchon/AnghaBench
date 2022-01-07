; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_udc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc32xx_udc = type { i32, i32, i32, i32, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@UDCA_BUFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_udc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_udc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc32xx_udc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.lpc32xx_udc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.lpc32xx_udc* %6, %struct.lpc32xx_udc** %4, align 8
  %7 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %8 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %7, i32 0, i32 5
  %9 = call i32 @usb_del_gadget_udc(i32* %8)
  %10 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %11 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %19 = call i32 @udc_clk_set(%struct.lpc32xx_udc* %18, i32 1)
  %20 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %21 = call i32 @udc_disable(%struct.lpc32xx_udc* %20)
  %22 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %23 = call i32 @pullup(%struct.lpc32xx_udc* %22, i32 0)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @device_init_wakeup(i32* %25, i32 0)
  %27 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %28 = call i32 @remove_debug_file(%struct.lpc32xx_udc* %27)
  %29 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dma_pool_destroy(i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @UDCA_BUFF_SIZE, align 4
  %36 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %37 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_free_coherent(i32* %34, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %44 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %17, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.lpc32xx_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @udc_clk_set(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_disable(%struct.lpc32xx_udc*) #1

declare dso_local i32 @pullup(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @remove_debug_file(%struct.lpc32xx_udc*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
