; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vgadget_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vgadget_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.vudc = type { i32, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@u8 = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable go get desc: %d\00", align 1
@VUDC_EVENT_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @vgadget_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgadget_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vudc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %10 = call %struct.vudc* @usb_gadget_to_vudc(%struct.usb_gadget* %9)
  store %struct.vudc* %10, %struct.vudc** %6, align 8
  %11 = load %struct.vudc*, %struct.vudc** %6, align 8
  %12 = getelementptr inbounds %struct.vudc, %struct.vudc* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.vudc*, %struct.vudc** %6, align 8
  %22 = getelementptr inbounds %struct.vudc, %struct.vudc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %83

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.vudc*, %struct.vudc** %6, align 8
  %29 = getelementptr inbounds %struct.vudc, %struct.vudc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %26
  %33 = load i32, i32* @u8, align 4
  %34 = load i32, i32* @USB_SPEED_HIGH, align 4
  %35 = load %struct.vudc*, %struct.vudc** %6, align 8
  %36 = getelementptr inbounds %struct.vudc, %struct.vudc* %35, i32 0, i32 6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @min_t(i32 %33, i32 %34, i32 %39)
  %41 = load %struct.vudc*, %struct.vudc** %6, align 8
  %42 = getelementptr inbounds %struct.vudc, %struct.vudc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.vudc*, %struct.vudc** %6, align 8
  %45 = getelementptr inbounds %struct.vudc, %struct.vudc* %44, i32 0, i32 5
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 64, i32* %49, align 4
  %50 = load %struct.vudc*, %struct.vudc** %6, align 8
  %51 = call i32 @get_gadget_descs(%struct.vudc* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %32
  %55 = load %struct.vudc*, %struct.vudc** %6, align 8
  %56 = getelementptr inbounds %struct.vudc, %struct.vudc* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %83

60:                                               ; preds = %32
  %61 = load %struct.vudc*, %struct.vudc** %6, align 8
  %62 = getelementptr inbounds %struct.vudc, %struct.vudc* %61, i32 0, i32 1
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.vudc*, %struct.vudc** %6, align 8
  %66 = getelementptr inbounds %struct.vudc, %struct.vudc* %65, i32 0, i32 2
  %67 = call i32 @usbip_start_eh(i32* %66)
  br label %82

68:                                               ; preds = %26
  %69 = load %struct.vudc*, %struct.vudc** %6, align 8
  %70 = getelementptr inbounds %struct.vudc, %struct.vudc* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.vudc*, %struct.vudc** %6, align 8
  %72 = getelementptr inbounds %struct.vudc, %struct.vudc* %71, i32 0, i32 1
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.vudc*, %struct.vudc** %6, align 8
  %76 = getelementptr inbounds %struct.vudc, %struct.vudc* %75, i32 0, i32 2
  %77 = load i32, i32* @VUDC_EVENT_REMOVED, align 4
  %78 = call i32 @usbip_event_add(i32* %76, i32 %77)
  %79 = load %struct.vudc*, %struct.vudc** %6, align 8
  %80 = getelementptr inbounds %struct.vudc, %struct.vudc* %79, i32 0, i32 2
  %81 = call i32 @usbip_stop_eh(i32* %80)
  br label %82

82:                                               ; preds = %68, %60
  store i32 0, i32* %3, align 4
  br label %88

83:                                               ; preds = %54, %25
  %84 = load %struct.vudc*, %struct.vudc** %6, align 8
  %85 = getelementptr inbounds %struct.vudc, %struct.vudc* %84, i32 0, i32 1
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %82
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.vudc* @usb_gadget_to_vudc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @get_gadget_descs(%struct.vudc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbip_start_eh(i32*) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @usbip_stop_eh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
