; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_int_1_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_int_1_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@USB3_USB_STA = common dso_local global i32 0, align 4
@USB_STA_SPEED_MASK = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB3_EP0_SS_MAX_PACKET_SIZE = common dso_local global i8* null, align 8
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB3_EP0_HSFS_MAX_PACKET_SIZE = common dso_local global i8* null, align 8
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_irq_epc_int_1_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_irq_epc_int_1_speed(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  %3 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %4 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %5 = load i32, i32* @USB3_USB_STA, align 4
  %6 = call i32 @usb3_read(%struct.renesas_usb3* %4, i32 %5)
  %7 = load i32, i32* @USB_STA_SPEED_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %43 [
    i32 128, label %10
    i32 129, label %21
    i32 130, label %32
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @USB_SPEED_SUPER, align 4
  %12 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %13 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i8*, i8** @USB3_EP0_SS_MAX_PACKET_SIZE, align 8
  %16 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %15, i8** %20, align 8
  br label %48

21:                                               ; preds = %1
  %22 = load i32, i32* @USB_SPEED_HIGH, align 4
  %23 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %24 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i8*, i8** @USB3_EP0_HSFS_MAX_PACKET_SIZE, align 8
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %28 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %26, i8** %31, align 8
  br label %48

32:                                               ; preds = %1
  %33 = load i32, i32* @USB_SPEED_FULL, align 4
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %35 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i8*, i8** @USB3_EP0_HSFS_MAX_PACKET_SIZE, align 8
  %38 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %39 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  br label %48

43:                                               ; preds = %1
  %44 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %45 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %46 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %32, %21, %10
  ret void
}

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
