; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usba_udc = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usba_udc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_udc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.usba_udc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.usba_udc* %6, %struct.usba_udc** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @device_init_wakeup(i32* %8, i32 0)
  %10 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %11 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %10, i32 0, i32 2
  %12 = call i32 @usb_del_gadget_udc(i32* %11)
  store i32 1, i32* %4, align 4
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %16 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %21 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @usba_ep_cleanup_debugfs(i32* %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %32 = call i32 @usba_cleanup_debugfs(%struct.usba_udc* %31)
  ret i32 0
}

declare dso_local %struct.usba_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @usba_ep_cleanup_debugfs(i32*) #1

declare dso_local i32 @usba_cleanup_debugfs(%struct.usba_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
