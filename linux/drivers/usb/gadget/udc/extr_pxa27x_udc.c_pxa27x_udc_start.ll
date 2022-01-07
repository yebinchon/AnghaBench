; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa27x_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa27x_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32 }
%struct.pxa_udc = type { %struct.usb_gadget_driver*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"can't bind to transceiver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @pxa27x_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.pxa_udc*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %9 = call %struct.pxa_udc* @to_pxa(%struct.usb_gadget* %8)
  store %struct.pxa_udc* %9, %struct.pxa_udc** %6, align 8
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %11 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %12 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %11, i32 0, i32 0
  store %struct.usb_gadget_driver* %10, %struct.usb_gadget_driver** %12, align 8
  %13 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %14 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_2__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %20 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %25 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %24, i32 0, i32 2
  %26 = call i32 @otg_set_peripheral(i32 %23, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %31 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %43

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %37 = call i64 @should_enable_udc(%struct.pxa_udc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %41 = call i32 @udc_enable(%struct.pxa_udc* %40)
  br label %42

42:                                               ; preds = %39, %35
  store i32 0, i32* %3, align 4
  br label %47

43:                                               ; preds = %29
  %44 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %45 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %44, i32 0, i32 0
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %45, align 8
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.pxa_udc* @to_pxa(%struct.usb_gadget*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_2__*) #1

declare dso_local i32 @otg_set_peripheral(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @should_enable_udc(%struct.pxa_udc*) #1

declare dso_local i32 @udc_enable(%struct.pxa_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
