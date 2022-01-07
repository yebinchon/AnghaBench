; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.bcm63xx_udc = type { i64, i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EP0_SHUTDOWN = common dso_local global i64 0, align 8
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@EP0_REQUEUE = common dso_local global i64 0, align 8
@BCM63XX_NUM_EP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @bcm63xx_udc_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_udc_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm63xx_udc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %11 = call %struct.bcm63xx_udc* @gadget_to_udc(%struct.usb_gadget* %10)
  store %struct.bcm63xx_udc* %11, %struct.bcm63xx_udc** %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %15 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %14, i32 0, i32 2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %2
  %21 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %22 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EP0_SHUTDOWN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %20
  %27 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %28 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %29 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* @EP0_REQUEUE, align 8
  %32 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %33 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %35 = call i32 @bcm63xx_fifo_setup(%struct.bcm63xx_udc* %34)
  %36 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %37 = call i32 @bcm63xx_fifo_reset(%struct.bcm63xx_udc* %36)
  %38 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %39 = call i32 @bcm63xx_ep_setup(%struct.bcm63xx_udc* %38)
  %40 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %41 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %40, i32 0, i32 5
  %42 = load i32, i32* @BCM63XX_NUM_EP, align 4
  %43 = call i32 @bitmap_zero(i32* %41, i32 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %57, %26
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BCM63XX_NUM_EP, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %50 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %51 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @bcm63xx_set_stall(%struct.bcm63xx_udc* %49, i32* %55, i32 0)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %44

60:                                               ; preds = %44
  %61 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %62 = call i32 @bcm63xx_set_ctrl_irqs(%struct.bcm63xx_udc* %61, i32 1)
  %63 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %64 = call %struct.bcm63xx_udc* @gadget_to_udc(%struct.usb_gadget* %63)
  %65 = call i32 @bcm63xx_select_pullup(%struct.bcm63xx_udc* %64, i32 1)
  store i32 0, i32* %9, align 4
  br label %104

66:                                               ; preds = %20, %2
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %66
  %70 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %71 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EP0_SHUTDOWN, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %77 = call %struct.bcm63xx_udc* @gadget_to_udc(%struct.usb_gadget* %76)
  %78 = call i32 @bcm63xx_select_pullup(%struct.bcm63xx_udc* %77, i32 0)
  %79 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %80 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %82 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %81, i32 0, i32 2
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %75, %95
  %86 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %87 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %86, i32 0, i32 3
  %88 = call i32 @schedule_work(i32* %87)
  %89 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %90 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EP0_SHUTDOWN, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %97

95:                                               ; preds = %85
  %96 = call i32 @msleep(i32 50)
  br label %85

97:                                               ; preds = %94
  %98 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %99 = call i32 @bcm63xx_set_ctrl_irqs(%struct.bcm63xx_udc* %98, i32 0)
  %100 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %101 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %100, i32 0, i32 3
  %102 = call i32 @cancel_work_sync(i32* %101)
  store i32 0, i32* %3, align 4
  br label %110

103:                                              ; preds = %69, %66
  br label %104

104:                                              ; preds = %103, %60
  %105 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %106 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %105, i32 0, i32 2
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.bcm63xx_udc* @gadget_to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcm63xx_fifo_setup(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_fifo_reset(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_ep_setup(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bitmap_zero(i32*, i32) #1

declare dso_local i32 @bcm63xx_set_stall(%struct.bcm63xx_udc*, i32*, i32) #1

declare dso_local i32 @bcm63xx_set_ctrl_irqs(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @bcm63xx_select_pullup(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
