; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa27x_udc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa27x_udc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.pxa_udc = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @pxa27x_udc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_udc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.pxa_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %6 = call %struct.pxa_udc* @to_pxa(%struct.usb_gadget* %5)
  store %struct.pxa_udc* %6, %struct.pxa_udc** %4, align 8
  %7 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %8 = call i32 @stop_activity(%struct.pxa_udc* %7)
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %10 = call i32 @udc_disable(%struct.pxa_udc* %9)
  %11 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %12 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %14 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_2__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %20 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @otg_set_peripheral(i32 %23, i32* null)
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.pxa_udc* @to_pxa(%struct.usb_gadget*) #1

declare dso_local i32 @stop_activity(%struct.pxa_udc*) #1

declare dso_local i32 @udc_disable(%struct.pxa_udc*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_2__*) #1

declare dso_local i32 @otg_set_peripheral(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
