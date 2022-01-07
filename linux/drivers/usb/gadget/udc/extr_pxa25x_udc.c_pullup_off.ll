; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pullup_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pullup_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pxa2xx_udc_mach_info* }
%struct.pxa2xx_udc_mach_info = type { i32, i32 (i32)*, i32 }

@the_controller = common dso_local global %struct.TYPE_2__* null, align 8
@PXA2XX_UDC_CMD_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pullup_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_off() #0 {
  %1 = alloca %struct.pxa2xx_udc_mach_info*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_controller, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %4, align 8
  store %struct.pxa2xx_udc_mach_info* %5, %struct.pxa2xx_udc_mach_info** %1, align 8
  %6 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %7 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %2, align 4
  %9 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %10 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @gpio_is_valid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %16 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @gpio_set_value(i32 %17, i32 %18)
  br label %32

20:                                               ; preds = %0
  %21 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %22 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %21, i32 0, i32 1
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = icmp ne i32 (i32)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %27 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %26, i32 0, i32 1
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load i32, i32* @PXA2XX_UDC_CMD_DISCONNECT, align 4
  %30 = call i32 %28(i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  br label %32

32:                                               ; preds = %31, %14
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
