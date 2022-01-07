; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 }
%struct.isp1760_udc = type { i32, %struct.TYPE_2__*, i32, i64, i32, %struct.usb_gadget_driver* }
%struct.TYPE_2__ = type { i32 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid gadget driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"UDC already has a gadget driver\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"starting UDC with driver %s\0A\00", align 1
@USB_STATE_ATTACHED = common dso_local global i32 0, align 4
@DC_MODE = common dso_local global i32 0, align 4
@DC_GLINTENA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"UDC started with driver %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @isp1760_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.isp1760_udc*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %9 = call %struct.isp1760_udc* @gadget_to_udc(%struct.usb_gadget* %8)
  store %struct.isp1760_udc* %9, %struct.isp1760_udc** %6, align 8
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_FULL, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %17 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %2
  %25 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %26 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %25, i32 0, i32 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %30 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %29, i32 0, i32 5
  %31 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %30, align 8
  %32 = icmp ne %struct.usb_gadget_driver* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %35 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %41 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %40, i32 0, i32 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %86

46:                                               ; preds = %24
  %47 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %48 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %49 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %48, i32 0, i32 5
  store %struct.usb_gadget_driver* %47, %struct.usb_gadget_driver** %49, align 8
  %50 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %51 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %50, i32 0, i32 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %55 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %60 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %64 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %66 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %68 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %67, i32 0, i32 2
  %69 = load i32, i32* @USB_STATE_ATTACHED, align 4
  %70 = call i32 @usb_gadget_set_state(i32* %68, i32 %69)
  %71 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %72 = load i32, i32* @DC_MODE, align 4
  %73 = load i32, i32* @DC_GLINTENA, align 4
  %74 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %71, i32 %72, i32 %73)
  %75 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %76 = call i32 @isp1760_udc_init_hw(%struct.isp1760_udc* %75)
  %77 = load %struct.isp1760_udc*, %struct.isp1760_udc** %6, align 8
  %78 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %83 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %46, %33, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.isp1760_udc* @gadget_to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_gadget_set_state(i32*, i32) #1

declare dso_local i32 @isp1760_udc_write(%struct.isp1760_udc*, i32, i32) #1

declare dso_local i32 @isp1760_udc_init_hw(%struct.isp1760_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
