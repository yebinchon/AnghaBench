; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_do_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_do_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32*, i32, i64 }
%struct.usb_ctrlrequest = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"missing SETUP packet\0A\00", align 1
@EP0_IDLE = common dso_local global i32 0, align 4
@EP0_REQUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"malformed SETUP packet (%d bytes)\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@EP0_IN_DATA_PHASE_SETUP = common dso_local global i32 0, align 4
@EP0_OUT_DATA_PHASE_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @bcm63xx_ep0_do_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_ep0_do_setup(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  %6 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %7 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %10, %struct.usb_ctrlrequest** %5, align 8
  %11 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %12 = call i32 @bcm63xx_ep0_read_complete(%struct.bcm63xx_udc* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %17 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EP0_IDLE, align 4
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EP0_REQUEUE, align 4
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 8
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %32 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_warn_ratelimited(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EP0_REQUEUE, align 4
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %26
  %38 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %39 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %40 = call i32 @bcm63xx_ep0_setup_callback(%struct.bcm63xx_udc* %38, %struct.usb_ctrlrequest* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %45 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %46 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @bcm63xx_set_stall(%struct.bcm63xx_udc* %44, i32* %48, i32 1)
  %50 = load i32, i32* @EP0_REQUEUE, align 4
  store i32 %50, i32* %2, align 4
  br label %69

51:                                               ; preds = %37
  %52 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %53 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EP0_REQUEUE, align 4
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @USB_DIR_IN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @EP0_IN_DATA_PHASE_SETUP, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @EP0_OUT_DATA_PHASE_SETUP, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %56, %43, %30, %24, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @bcm63xx_ep0_read_complete(%struct.bcm63xx_udc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @bcm63xx_ep0_setup_callback(%struct.bcm63xx_udc*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @bcm63xx_set_stall(%struct.bcm63xx_udc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
