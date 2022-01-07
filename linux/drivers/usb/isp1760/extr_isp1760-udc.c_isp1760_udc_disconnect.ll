; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_udc = type { i32, %struct.TYPE_7__, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { i32 }

@USB_STATE_POWERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Device disconnected in state %u\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_STATE_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_udc*)* @isp1760_udc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_udc_disconnect(%struct.isp1760_udc* %0) #0 {
  %2 = alloca %struct.isp1760_udc*, align 8
  store %struct.isp1760_udc* %0, %struct.isp1760_udc** %2, align 8
  %3 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %4 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_STATE_POWERED, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %12 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %17 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %22 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %23 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %26 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %25, i32 0, i32 1
  %27 = load i32, i32* @USB_STATE_ATTACHED, align 4
  %28 = call i32 @usb_gadget_set_state(%struct.TYPE_7__* %26, i32 %27)
  %29 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %30 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_7__*)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %10
  %36 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %37 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %39, align 8
  %41 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %42 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %41, i32 0, i32 1
  %43 = call i32 %40(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %35, %10
  %45 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %46 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %45, i32 0, i32 0
  %47 = call i32 @del_timer(i32* %46)
  br label %48

48:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
