; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.s3c_hsudc = type { i32*, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @s3c_hsudc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.s3c_hsudc*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.s3c_hsudc* @to_hsudc(%struct.usb_gadget* %6)
  store %struct.s3c_hsudc* %7, %struct.s3c_hsudc** %4, align 8
  %8 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %9 = icmp ne %struct.s3c_hsudc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %15 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %14, i32 0, i32 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %19 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %20 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = call i32 (...) @s3c_hsudc_uninit_phy()
  %23 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %24 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pm_runtime_put(i32 %25)
  %27 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %28 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %27, i32 0, i32 5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = icmp ne i32 (...)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %13
  %34 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %35 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %34, i32 0, i32 5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (...)*, i32 (...)** %37, align 8
  %39 = call i32 (...) %38()
  br label %40

40:                                               ; preds = %33, %13
  %41 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %42 = call i32 @s3c_hsudc_stop_activity(%struct.s3c_hsudc* %41)
  %43 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %44 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %43, i32 0, i32 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %48 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_6__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %40
  %53 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %54 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @otg_set_peripheral(i32 %57, i32* null)
  br label %59

59:                                               ; preds = %52, %40
  %60 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %61 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @disable_irq(i32 %62)
  %64 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %65 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %69 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @regulator_bulk_disable(i32 %67, i32 %70)
  %72 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %73 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %59, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.s3c_hsudc* @to_hsudc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s3c_hsudc_uninit_phy(...) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @s3c_hsudc_stop_activity(%struct.s3c_hsudc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_6__*) #1

declare dso_local i32 @otg_set_peripheral(i32, i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
