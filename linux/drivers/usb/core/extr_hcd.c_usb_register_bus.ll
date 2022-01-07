; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_register_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_register_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@usb_bus_idr_lock = common dso_local global i32 0, align 4
@usb_bus_idr = common dso_local global i32 0, align 4
@USB_MAXBUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: failed to get bus number\0A\00", align 1
@usbcore_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"new USB bus registered, assigned bus number %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_bus*)* @usb_register_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_register_bus(%struct.usb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %3, align 8
  %6 = load i32, i32* @E2BIG, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @usb_bus_idr_lock)
  %9 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %10 = load i32, i32* @USB_MAXBUS, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @idr_alloc(i32* @usb_bus_idr, %struct.usb_bus* %9, i32 1, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @usbcore_name, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %32

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %21 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call i32 @mutex_unlock(i32* @usb_bus_idr_lock)
  %23 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %24 = call i32 @usb_notify_add_bus(%struct.usb_bus* %23)
  %25 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %26 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %29 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_info(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %35

32:                                               ; preds = %15
  %33 = call i32 @mutex_unlock(i32* @usb_bus_idr_lock)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.usb_bus*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_notify_add_bus(%struct.usb_bus*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
