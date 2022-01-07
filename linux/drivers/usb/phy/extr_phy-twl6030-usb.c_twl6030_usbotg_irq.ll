; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usbotg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usbotg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_usb = type { i32, i32, i32, i32 }

@MUSB_UNKNOWN = common dso_local global i8* null, align 8
@TWL6030_MODULE_ID0 = common dso_local global i32 0, align 4
@STS_HW_CONDITIONS = common dso_local global i32 0, align 4
@STS_USB_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to enable usb3v3\0A\00", align 1
@TWL_MODULE_USB = common dso_local global i32 0, align 4
@USB_ID_INT_EN_HI_CLR = common dso_local global i32 0, align 4
@USB_ID_INT_EN_HI_SET = common dso_local global i32 0, align 4
@MUSB_ID_GROUND = common dso_local global i32 0, align 4
@USB_ID_INT_LATCH_CLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl6030_usbotg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_usbotg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.twl6030_usb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.twl6030_usb*
  store %struct.twl6030_usb* %10, %struct.twl6030_usb** %5, align 8
  %11 = load i8*, i8** @MUSB_UNKNOWN, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %14 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %15 = load i32, i32* @STS_HW_CONDITIONS, align 4
  %16 = call i32 @twl6030_readb(%struct.twl6030_usb* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @STS_USB_ID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %2
  %22 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %23 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_enable(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %30 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %35 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %37 = load i32, i32* @TWL_MODULE_USB, align 4
  %38 = load i32, i32* @USB_ID_INT_EN_HI_CLR, align 4
  %39 = call i32 @twl6030_writeb(%struct.twl6030_usb* %36, i32 %37, i32 1, i32 %38)
  %40 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %41 = load i32, i32* @TWL_MODULE_USB, align 4
  %42 = load i32, i32* @USB_ID_INT_EN_HI_SET, align 4
  %43 = call i32 @twl6030_writeb(%struct.twl6030_usb* %40, i32 %41, i32 16, i32 %42)
  %44 = load i32, i32* @MUSB_ID_GROUND, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %47 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @musb_mailbox(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %33
  %53 = load i8*, i8** @MUSB_UNKNOWN, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %56 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %33
  br label %67

58:                                               ; preds = %2
  %59 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %60 = load i32, i32* @TWL_MODULE_USB, align 4
  %61 = load i32, i32* @USB_ID_INT_EN_HI_CLR, align 4
  %62 = call i32 @twl6030_writeb(%struct.twl6030_usb* %59, i32 %60, i32 16, i32 %61)
  %63 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %64 = load i32, i32* @TWL_MODULE_USB, align 4
  %65 = load i32, i32* @USB_ID_INT_EN_HI_SET, align 4
  %66 = call i32 @twl6030_writeb(%struct.twl6030_usb* %63, i32 %64, i32 1, i32 %65)
  br label %67

67:                                               ; preds = %58, %57
  %68 = load %struct.twl6030_usb*, %struct.twl6030_usb** %5, align 8
  %69 = load i32, i32* @TWL_MODULE_USB, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @USB_ID_INT_LATCH_CLR, align 4
  %72 = call i32 @twl6030_writeb(%struct.twl6030_usb* %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local i32 @twl6030_readb(%struct.twl6030_usb*, i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @twl6030_writeb(%struct.twl6030_usb*, i32, i32, i32) #1

declare dso_local i32 @musb_mailbox(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
