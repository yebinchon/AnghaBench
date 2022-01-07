; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_notify_serial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_notify_serial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_acm = type { i32, i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"acm ttyGS%d serial state %04x\0A\00", align 1
@USB_CDC_NOTIFY_SERIAL_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_acm*)* @acm_notify_serial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_notify_serial_state(%struct.f_acm* %0) #0 {
  %2 = alloca %struct.f_acm*, align 8
  %3 = alloca %struct.usb_composite_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.f_acm* %0, %struct.f_acm** %2, align 8
  %6 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %7 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %11, align 8
  store %struct.usb_composite_dev* %12, %struct.usb_composite_dev** %3, align 8
  %13 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %14 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %17 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %22 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %26 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %29 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %33 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cpu_to_le16(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %37 = load i32, i32* @USB_CDC_NOTIFY_SERIAL_STATE, align 4
  %38 = call i32 @acm_cdc_notify(%struct.f_acm* %36, i32 %37, i32 0, i32* %5, i32 4)
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %41 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %20
  %43 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %44 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @acm_cdc_notify(%struct.f_acm*, i32, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
