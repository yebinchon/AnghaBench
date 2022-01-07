; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_os_desc_req_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_os_desc_req_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.usb_composite_dev*, i32 }
%struct.usb_ep = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_COMP_EP0_OS_DESC_BUFSIZ = common dso_local global i32 0, align 4
@composite_setup_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @composite_os_desc_req_prepare(%struct.usb_composite_dev* %0, %struct.usb_ep* %1) #0 {
  %3 = alloca %struct.usb_composite_dev*, align 8
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %3, align 8
  store %struct.usb_ep* %1, %struct.usb_ep** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.TYPE_3__* @usb_ep_alloc_request(%struct.usb_ep* %6, i32 %7)
  %9 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %10 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %9, i32 0, i32 0
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %10, align 8
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %12 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load i32, i32* @USB_COMP_EP0_OS_DESC_BUFSIZ, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @kmalloc(i32 %19, i32 %20)
  %22 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %23 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 8
  %26 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %27 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %36 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %37 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @usb_ep_free_request(%struct.usb_ep* %35, %struct.TYPE_3__* %38)
  br label %51

40:                                               ; preds = %18
  %41 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %42 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %43 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store %struct.usb_composite_dev* %41, %struct.usb_composite_dev** %45, align 8
  %46 = load i32, i32* @composite_setup_complete, align 4
  %47 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %48 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  br label %51

51:                                               ; preds = %40, %32, %15
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_3__* @usb_ep_alloc_request(%struct.usb_ep*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_ep_free_request(%struct.usb_ep*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
