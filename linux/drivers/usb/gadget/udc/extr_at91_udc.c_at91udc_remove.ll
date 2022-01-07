; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91udc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.at91_udc = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"remove\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91udc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91udc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.at91_udc*, align 8
  %5 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.at91_udc* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.at91_udc* %7, %struct.at91_udc** %4, align 8
  %8 = call i32 @DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %10 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %9, i32 0, i32 4
  %11 = call i32 @usb_del_gadget_udc(i32* %10)
  %12 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %13 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %21 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %20, i32 0, i32 2
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %25 = call i32 @pullup(%struct.at91_udc* %24, i32 0)
  %26 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %27 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %26, i32 0, i32 2
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @device_init_wakeup(i32* %31, i32 0)
  %33 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %34 = call i32 @remove_debug_file(%struct.at91_udc* %33)
  %35 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %36 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_unprepare(i32 %37)
  %39 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %40 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_unprepare(i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %19, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.at91_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pullup(%struct.at91_udc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @remove_debug_file(%struct.at91_udc*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
