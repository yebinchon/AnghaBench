; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mtu3 = type { i32, %struct.TYPE_6__*, %struct.usb_gadget_driver*, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s is already bound to %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bind driver %s\0A\00", align 1
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @mtu3_gadget_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_gadget_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.mtu3*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %9 = call %struct.mtu3* @gadget_to_mtu3(%struct.usb_gadget* %8)
  store %struct.mtu3* %9, %struct.mtu3** %6, align 8
  %10 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %11 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %10, i32 0, i32 2
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %11, align 8
  %13 = icmp ne %struct.usb_gadget_driver* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %16 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %19 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %23 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %22, i32 0, i32 2
  %24 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %23, align 8
  %25 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %2
  %32 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %33 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %36 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %40 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %44 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %46 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %47 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %46, i32 0, i32 2
  store %struct.usb_gadget_driver* %45, %struct.usb_gadget_driver** %47, align 8
  %48 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %49 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %31
  %56 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %57 = call i32 @mtu3_start(%struct.mtu3* %56)
  br label %58

58:                                               ; preds = %55, %31
  %59 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %60 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.mtu3* @gadget_to_mtu3(%struct.usb_gadget*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtu3_start(%struct.mtu3*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
